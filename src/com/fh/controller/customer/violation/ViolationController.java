package com.fh.controller.customer.violation;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.Jurisdiction;
import com.fh.util.Tools;
import com.fh.service.customer.violation.ViolationManager;

/** 
 * 说明：随手拍查询与写入
 * 创建人：FH Q
 * 创建时间：2017-03-15
 */
@Controller
@RequestMapping(value="/violation")
public class ViolationController extends BaseController {
	
	String menuUrl = "violation/list.do"; //菜单地址(权限用)
	@Resource(name="violationService")
	private ViolationManager violationService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增Violation");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("VIOLATION_ID", this.get32UUID());	//主键
		violationService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除Violation");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		violationService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改Violation");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		violationService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表Violation");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = violationService.list(page);	//列出Violation列表
		mv.setViewName("customer/violation/violation_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**去新增页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.setViewName("customer/violation/violation_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**去修改页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = violationService.findById(pd);	//根据ID读取
		mv.setViewName("customer/violation/violation_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除Violation");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			violationService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出Violation到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("备注1");	//1
		titles.add("备注2");	//2
		titles.add("备注3");	//3
		titles.add("备注4");	//4
		titles.add("备注5");	//5
		titles.add("备注6");	//6
		titles.add("备注7");	//7
		titles.add("备注8");	//8
		titles.add("备注9");	//9
		titles.add("备注10");	//10
		titles.add("备注11");	//11
		titles.add("备注12");	//12
		titles.add("备注13");	//13
		titles.add("备注14");	//14
		titles.add("备注15");	//15
		titles.add("备注16");	//16
		titles.add("备注17");	//17
		titles.add("备注18");	//18
		titles.add("备注19");	//19
		titles.add("备注20");	//20
		titles.add("备注21");	//21
		titles.add("备注22");	//22
		titles.add("备注23");	//23
		titles.add("备注24");	//24
		titles.add("备注25");	//25
		titles.add("备注26");	//26
		titles.add("备注27");	//27
		titles.add("备注28");	//28
		titles.add("备注29");	//29
		titles.add("备注30");	//30
		titles.add("备注31");	//31
		titles.add("备注32");	//32
		titles.add("备注33");	//33
		titles.add("备注34");	//34
		titles.add("备注35");	//35
		titles.add("备注36");	//36
		titles.add("备注37");	//37
		titles.add("备注38");	//38
		titles.add("备注39");	//39
		titles.add("备注40");	//40
		titles.add("备注41");	//41
		titles.add("备注42");	//42
		titles.add("备注43");	//43
		titles.add("备注44");	//44
		titles.add("备注45");	//45
		titles.add("备注46");	//46
		titles.add("备注47");	//47
		titles.add("备注48");	//48
		titles.add("备注49");	//49
		titles.add("备注50");	//50
		titles.add("备注51");	//51
		titles.add("备注52");	//52
		titles.add("备注53");	//53
		titles.add("备注54");	//54
		titles.add("备注55");	//55
		titles.add("备注56");	//56
		titles.add("备注57");	//57
		titles.add("备注58");	//58
		titles.add("备注59");	//59
		titles.add("备注60");	//60
		titles.add("备注61");	//61
		titles.add("备注62");	//62
		titles.add("备注63");	//63
		titles.add("备注64");	//64
		titles.add("备注65");	//65
		titles.add("备注66");	//66
		titles.add("备注67");	//67
		titles.add("备注68");	//68
		titles.add("备注69");	//69
		titles.add("备注70");	//70
		titles.add("备注71");	//71
		titles.add("备注72");	//72
		titles.add("备注73");	//73
		titles.add("备注74");	//74
		titles.add("备注75");	//75
		titles.add("备注76");	//76
		titles.add("备注77");	//77
		titles.add("备注78");	//78
		titles.add("备注79");	//79
		titles.add("备注80");	//80
		titles.add("备注81");	//81
		titles.add("备注82");	//82
		titles.add("备注83");	//83
		titles.add("备注84");	//84
		titles.add("备注85");	//85
		titles.add("备注86");	//86
		titles.add("备注87");	//87
		titles.add("备注88");	//88
		titles.add("备注89");	//89
		titles.add("备注90");	//90
		titles.add("备注91");	//91
		titles.add("备注92");	//92
		titles.add("备注93");	//93
		titles.add("备注94");	//94
		titles.add("备注95");	//95
		titles.add("备注96");	//96
		titles.add("备注97");	//97
		titles.add("备注98");	//98
		titles.add("备注99");	//99
		titles.add("备注100");	//100
		titles.add("备注101");	//101
		titles.add("备注102");	//102
		titles.add("备注103");	//103
		titles.add("备注104");	//104
		titles.add("备注105");	//105
		titles.add("备注106");	//106
		titles.add("备注107");	//107
		titles.add("备注108");	//108
		titles.add("备注109");	//109
		titles.add("备注110");	//110
		titles.add("备注111");	//111
		titles.add("备注112");	//112
		titles.add("备注113");	//113
		titles.add("备注114");	//114
		titles.add("备注115");	//115
		titles.add("备注116");	//116
		titles.add("备注117");	//117
		dataMap.put("titles", titles);
		List<PageData> varOList = violationService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("WFBH"));	    //1
			vpd.put("var2", varOList.get(i).getString("JDSLB"));	    //2
			vpd.put("var3", varOList.get(i).getString("JDSBH"));	    //3
			vpd.put("var4", varOList.get(i).getString("WSJYW"));	    //4
			vpd.put("var5", varOList.get(i).getString("RYFL"));	    //5
			vpd.put("var6", varOList.get(i).getString("JSZH"));	    //6
			vpd.put("var7", varOList.get(i).getString("DABH"));	    //7
			vpd.put("var8", varOList.get(i).getString("FZJG"));	    //8
			vpd.put("var9", varOList.get(i).getString("ZJCX"));	    //9
			vpd.put("var10", varOList.get(i).getString("DSR"));	    //10
			vpd.put("var11", varOList.get(i).getString("ZSXZQH"));	    //11
			vpd.put("var12", varOList.get(i).getString("ZSXXDZ"));	    //12
			vpd.put("var13", varOList.get(i).getString("DH"));	    //13
			vpd.put("var14", varOList.get(i).getString("LXFS"));	    //14
			vpd.put("var15", varOList.get(i).getString("CLFL"));	    //15
			vpd.put("var16", varOList.get(i).getString("HPZL"));	    //16
			vpd.put("var17", varOList.get(i).getString("HPHM"));	    //17
			vpd.put("var18", varOList.get(i).getString("JDCSYR"));	    //18
			vpd.put("var19", varOList.get(i).getString("SYXZ"));	    //19
			vpd.put("var20", varOList.get(i).getString("JTFS"));	    //20
			vpd.put("var21", varOList.get(i).getString("WFSJ"));	    //21
			vpd.put("var22", varOList.get(i).getString("XZQH"));	    //22
			vpd.put("var23", varOList.get(i).getString("DLLX"));	    //23
			vpd.put("var24", varOList.get(i).getString("GLXZDJ"));	    //24
			vpd.put("var25", varOList.get(i).getString("WFDD"));	    //25
			vpd.put("var26", varOList.get(i).getString("LDDM"));	    //26
			vpd.put("var27", varOList.get(i).getString("DDMS"));	    //27
			vpd.put("var28", varOList.get(i).getString("DDJDWZ"));	    //28
			vpd.put("var29", varOList.get(i).getString("WFDZ"));	    //29
			vpd.put("var30", varOList.get(i).getString("WFXW"));	    //30
			vpd.put("var31", varOList.get(i).getString("WFJFS"));	    //31
			vpd.put("var32", varOList.get(i).getString("FKJE"));	    //32
			vpd.put("var33", varOList.get(i).getString("SCZ"));	    //33
			vpd.put("var34", varOList.get(i).getString("BZZ"));	    //34
			vpd.put("var35", varOList.get(i).getString("ZNJ"));	    //35
			vpd.put("var36", varOList.get(i).getString("ZQMJ"));	    //36
			vpd.put("var37", varOList.get(i).getString("JKFS"));	    //37
			vpd.put("var38", varOList.get(i).getString("FXJG"));	    //38
			vpd.put("var39", varOList.get(i).getString("FXJGMC"));	    //39
			vpd.put("var40", varOList.get(i).getString("CLJG"));	    //40
			vpd.put("var41", varOList.get(i).getString("CLJGMC"));	    //41
			vpd.put("var42", varOList.get(i).getString("CFZL"));	    //42
			vpd.put("var43", varOList.get(i).getString("CLSJ"));	    //43
			vpd.put("var44", varOList.get(i).getString("JKBJ"));	    //44
			vpd.put("var45", varOList.get(i).getString("JKRQ"));	    //45
			vpd.put("var46", varOList.get(i).getString("PZBH"));	    //46
			vpd.put("var47", varOList.get(i).getString("JSJQBJ"));	    //47
			vpd.put("var48", varOList.get(i).getString("JLLX"));	    //48
			vpd.put("var49", varOList.get(i).getString("LRR"));	    //49
			vpd.put("var50", varOList.get(i).getString("LRSJ"));	    //50
			vpd.put("var51", varOList.get(i).getString("JBR1"));	    //51
			vpd.put("var52", varOList.get(i).getString("JBR2"));	    //52
			vpd.put("var53", varOList.get(i).getString("SGDJ"));	    //53
			vpd.put("var54", varOList.get(i).getString("CLDXBJ"));	    //54
			vpd.put("var55", varOList.get(i).getString("JDCCLDXBJ"));	    //55
			vpd.put("var56", varOList.get(i).getString("ZDJLBJ"));	    //56
			vpd.put("var57", varOList.get(i).getString("XXLY"));	    //57
			vpd.put("var58", varOList.get(i).getString("XRMS"));	    //58
			vpd.put("var59", varOList.get(i).getString("DKBJ"));	    //59
			vpd.put("var60", varOList.get(i).getString("JMZNJBJ"));	    //60
			vpd.put("var61", varOList.get(i).getString("ZDBJ"));	    //61
			vpd.put("var62", varOList.get(i).getString("JSJG"));	    //62
			vpd.put("var63", varOList.get(i).getString("FSJG"));	    //63
			vpd.put("var64", varOList.get(i).getString("GXSJ"));	    //64
			vpd.put("var65", varOList.get(i).getString("BZ"));	    //65
			vpd.put("var66", varOList.get(i).getString("YWJYW"));	    //66
			vpd.put("var67", varOList.get(i).getString("ZJMC"));	    //67
			vpd.put("var68", varOList.get(i).getString("CCLZRQ"));	    //68
			vpd.put("var69", varOList.get(i).getString("NL"));	    //69
			vpd.put("var70", varOList.get(i).getString("XB"));	    //70
			vpd.put("var71", varOList.get(i).getString("HCBJ"));	    //71
			vpd.put("var72", varOList.get(i).getString("JD"));	    //72
			vpd.put("var73", varOList.get(i).getString("WD"));	    //73
			vpd.put("var74", varOList.get(i).getString("YLZZ1"));	    //74
			vpd.put("var75", varOList.get(i).getString("YLZZ2"));	    //75
			vpd.put("var76", varOList.get(i).getString("YLZZ3"));	    //76
			vpd.put("var77", varOList.get(i).getString("YLZZ4"));	    //77
			vpd.put("var78", varOList.get(i).getString("YLZZ5"));	    //78
			vpd.put("var79", varOList.get(i).getString("YLZZ6"));	    //79
			vpd.put("var80", varOList.get(i).getString("YLZZ7"));	    //80
			vpd.put("var81", varOList.get(i).getString("YLZZ8"));	    //81
			vpd.put("var82", varOList.get(i).getString("CJFS"));	    //82
			vpd.put("var83", varOList.get(i).getString("WFSJ1"));	    //83
			vpd.put("var84", varOList.get(i).getString("WFDD1"));	    //84
			vpd.put("var85", varOList.get(i).getString("LDDM1"));	    //85
			vpd.put("var86", varOList.get(i).getString("DDMS1"));	    //86
			vpd.put("var87", varOList.get(i).getString("JSRXZ"));	    //87
			vpd.put("var88", varOList.get(i).getString("CLYT"));	    //88
			vpd.put("var89", varOList.get(i).getString("XCFW"));	    //89
			vpd.put("var90", varOList.get(i).getString("DZZB"));	    //90
			vpd.put("var91", varOList.get(i).getString("SFZDRY"));	    //91
			vpd.put("var92", varOList.get(i).getString("XYSFZMHM"));	    //92
			vpd.put("var93", varOList.get(i).getString("XYXM"));	    //93
			vpd.put("var94", varOList.get(i).getString("YLZZ11"));	    //94
			vpd.put("var95", varOList.get(i).getString("YLZZ12"));	    //95
			vpd.put("var96", varOList.get(i).getString("YLZZ13"));	    //96
			vpd.put("var97", varOList.get(i).getString("YLZZ14"));	    //97
			vpd.put("var98", varOList.get(i).getString("YLZZ15"));	    //98
			vpd.put("var99", varOList.get(i).getString("YLZZ16"));	    //99
			vpd.put("var100", varOList.get(i).getString("YLZZ17"));	    //100
			vpd.put("var101", varOList.get(i).getString("YLZZ18"));	    //101
			vpd.put("var102", varOList.get(i).getString("XH"));	    //102
			vpd.put("var103", varOList.get(i).getString("CJJG"));	    //103
			vpd.put("var104", varOList.get(i).getString("FDJH"));	    //104
			vpd.put("var105", varOList.get(i).getString("CLSBDH"));	    //105
			vpd.put("var106", varOList.get(i).getString("CSYS"));	    //106
			vpd.put("var107", varOList.get(i).getString("CLPP"));	    //107
			vpd.put("var108", varOList.get(i).getString("ZZXZQH"));	    //108
			vpd.put("var109", varOList.get(i).getString("TZSH"));	    //109
			vpd.put("var110", varOList.get(i).getString("TZRQ"));	    //110
			vpd.put("var111", varOList.get(i).getString("SPDZ"));	    //111
			vpd.put("var112", varOList.get(i).getString("SBBH"));	    //112
			vpd.put("var113", varOList.get(i).getString("ZPSTR1"));	    //113
			vpd.put("var114", varOList.get(i).getString("ZPSTR2"));	    //114
			vpd.put("var115", varOList.get(i).getString("ZPSTR3"));	    //115
			vpd.put("var116", varOList.get(i).getString("SHZT"));	    //116
			vpd.put("var117", varOList.get(i).getString("WFLB"));	    //117
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
