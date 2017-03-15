<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<!-- 下拉框 -->
<link rel="stylesheet" href="static/ace/css/chosen.css" />
<!-- jsp文件头和头部 -->
<%@ include file="../../system/index/top.jsp"%>
<!-- 日期框 -->
<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							
						<!-- 检索  -->
						<form action="illegalparking/list.do" method="post" name="Form" id="Form">
						<table style="margin-top:5px;">
							<tr>
								<td>
									<div class="nav-search">
										<span class="input-icon">
											<input type="text" placeholder="这里输入关键词" class="nav-search-input" id="nav-search-input" autocomplete="off" name="keywords" value="${pd.keywords }" placeholder="这里输入关键词"/>
											<i class="ace-icon fa fa-search nav-search-icon"></i>
										</span>
									</div>
								</td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastStart" id="lastStart"  value="" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始日期" title="开始日期"/></td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastEnd" name="lastEnd"  value="" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束日期" title="结束日期"/></td>
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="name" id="id" data-placeholder="请选择" style="vertical-align:top;width: 120px;">
									<option value=""></option>
									<option value="">全部</option>
									<option value="">1</option>
									<option value="">2</option>
								  	</select>
								</td>
								<c:if test="${QX.cha == 1 }">
								<td style="vertical-align:top;padding-left:2px"><a class="btn btn-light btn-xs" onclick="tosearch();"  title="检索"><i id="nav-search-icon" class="ace-icon fa fa-search bigger-110 nav-search-icon blue"></i></a></td>
								</c:if>
								<c:if test="${QX.toExcel == 1 }"><td style="vertical-align:top;padding-left:2px;"><a class="btn btn-light btn-xs" onclick="toExcel();" title="导出到EXCEL"><i id="nav-search-icon" class="ace-icon fa fa-download bigger-110 nav-search-icon blue"></i></a></td></c:if>
							</tr>
						</table>
						<!-- 检索  -->
					
						<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">	
							<thead>
								<tr>
									<th class="center" style="width:35px;">
									<label class="pos-rel"><input type="checkbox" class="ace" id="zcheckbox" /><span class="lbl"></span></label>
									</th>
									<th class="center" style="width:50px;">序号</th>
									<th class="center">备注1</th>
									<th class="center">备注2</th>
									<th class="center">备注3</th>
									<th class="center">备注4</th>
									<th class="center">备注5</th>
									<th class="center">备注6</th>
									<th class="center">备注7</th>
									<th class="center">备注8</th>
									<th class="center">备注9</th>
									<th class="center">备注10</th>
									<th class="center">备注11</th>
									<th class="center">备注12</th>
									<th class="center">备注13</th>
									<th class="center">备注14</th>
									<th class="center">备注15</th>
									<th class="center">备注16</th>
									<th class="center">备注17</th>
									<th class="center">备注18</th>
									<th class="center">备注19</th>
									<th class="center">备注20</th>
									<th class="center">备注21</th>
									<th class="center">备注22</th>
									<th class="center">备注23</th>
									<th class="center">备注24</th>
									<th class="center">备注25</th>
									<th class="center">备注26</th>
									<th class="center">备注27</th>
									<th class="center">备注28</th>
									<th class="center">备注29</th>
									<th class="center">备注30</th>
									<th class="center">备注31</th>
									<th class="center">备注32</th>
									<th class="center">备注33</th>
									<th class="center">备注34</th>
									<th class="center">备注35</th>
									<th class="center">备注36</th>
									<th class="center">备注37</th>
									<th class="center">备注38</th>
									<th class="center">备注39</th>
									<th class="center">备注40</th>
									<th class="center">备注41</th>
									<th class="center">备注42</th>
									<th class="center">备注43</th>
									<th class="center">备注44</th>
									<th class="center">备注45</th>
									<th class="center">备注46</th>
									<th class="center">备注47</th>
									<th class="center">备注48</th>
									<th class="center">备注49</th>
									<th class="center">备注50</th>
									<th class="center">备注51</th>
									<th class="center">备注52</th>
									<th class="center">备注53</th>
									<th class="center">备注54</th>
									<th class="center">备注55</th>
									<th class="center">备注56</th>
									<th class="center">备注57</th>
									<th class="center">备注58</th>
									<th class="center">备注59</th>
									<th class="center">备注60</th>
									<th class="center">备注61</th>
									<th class="center">备注62</th>
									<th class="center">备注63</th>
									<th class="center">备注64</th>
									<th class="center">备注65</th>
									<th class="center">备注66</th>
									<th class="center">备注67</th>
									<th class="center">备注68</th>
									<th class="center">备注69</th>
									<th class="center">备注70</th>
									<th class="center">备注71</th>
									<th class="center">备注72</th>
									<th class="center">备注73</th>
									<th class="center">备注74</th>
									<th class="center">备注75</th>
									<th class="center">备注76</th>
									<th class="center">备注77</th>
									<th class="center">备注78</th>
									<th class="center">备注79</th>
									<th class="center">备注80</th>
									<th class="center">备注81</th>
									<th class="center">备注82</th>
									<th class="center">备注83</th>
									<th class="center">备注84</th>
									<th class="center">备注85</th>
									<th class="center">备注86</th>
									<th class="center">备注87</th>
									<th class="center">备注88</th>
									<th class="center">备注89</th>
									<th class="center">备注90</th>
									<th class="center">备注91</th>
									<th class="center">备注92</th>
									<th class="center">备注93</th>
									<th class="center">备注94</th>
									<th class="center">备注95</th>
									<th class="center">备注96</th>
									<th class="center">备注97</th>
									<th class="center">备注98</th>
									<th class="center">备注99</th>
									<th class="center">备注100</th>
									<th class="center">备注101</th>
									<th class="center">备注102</th>
									<th class="center">备注103</th>
									<th class="center">备注104</th>
									<th class="center">备注105</th>
									<th class="center">备注106</th>
									<th class="center">备注107</th>
									<th class="center">备注108</th>
									<th class="center">备注109</th>
									<th class="center">备注110</th>
									<th class="center">备注111</th>
									<th class="center">备注112</th>
									<th class="center">备注113</th>
									<th class="center">备注114</th>
									<th class="center">备注115</th>
									<th class="center">备注116</th>
									<th class="center">操作</th>
								</tr>
							</thead>
													
							<tbody>
							<!-- 开始循环 -->	
							<c:choose>
								<c:when test="${not empty varList}">
									<c:if test="${QX.cha == 1 }">
									<c:forEach items="${varList}" var="var" varStatus="vs">
										<tr>
											<td class='center'>
												<label class="pos-rel"><input type='checkbox' name='ids' value="${var.WFBH}" class="ace" /><span class="lbl"></span></label>
											</td>
											<td class='center' style="width: 30px;">${vs.index+1}</td>
											<td class='center'>${var.WFBH}</td>
											<td class='center'>${var.JDSLB}</td>
											<td class='center'>${var.JDSBH}</td>
											<td class='center'>${var.WSJYW}</td>
											<td class='center'>${var.RYFL}</td>
											<td class='center'>${var.JSZH}</td>
											<td class='center'>${var.DABH}</td>
											<td class='center'>${var.FZJG}</td>
											<td class='center'>${var.ZJCX}</td>
											<td class='center'>${var.DSR}</td>
											<td class='center'>${var.ZSXZQH}</td>
											<td class='center'>${var.ZSXXDZ}</td>
											<td class='center'>${var.DH}</td>
											<td class='center'>${var.LXFS}</td>
											<td class='center'>${var.CLFL}</td>
											<td class='center'>${var.HPZL}</td>
											<td class='center'>${var.HPHM}</td>
											<td class='center'>${var.JDCSYR}</td>
											<td class='center'>${var.SYXZ}</td>
											<td class='center'>${var.JTFS}</td>
											<td class='center'>${var.WFSJ}</td>
											<td class='center'>${var.XZQH}</td>
											<td class='center'>${var.DLLX}</td>
											<td class='center'>${var.GLXZDJ}</td>
											<td class='center'>${var.WFDD}</td>
											<td class='center'>${var.LDDM}</td>
											<td class='center'>${var.DDMS}</td>
											<td class='center'>${var.DDJDWZ}</td>
											<td class='center'>${var.WFDZ}</td>
											<td class='center'>${var.WFXW}</td>
											<td class='center'>${var.WFJFS}</td>
											<td class='center'>${var.FKJE}</td>
											<td class='center'>${var.SCZ}</td>
											<td class='center'>${var.BZZ}</td>
											<td class='center'>${var.ZNJ}</td>
											<td class='center'>${var.ZQMJ}</td>
											<td class='center'>${var.JKFS}</td>
											<td class='center'>${var.FXJG}</td>
											<td class='center'>${var.FXJGMC}</td>
											<td class='center'>${var.CLJG}</td>
											<td class='center'>${var.CLJGMC}</td>
											<td class='center'>${var.CFZL}</td>
											<td class='center'>${var.CLSJ}</td>
											<td class='center'>${var.JKBJ}</td>
											<td class='center'>${var.JKRQ}</td>
											<td class='center'>${var.PZBH}</td>
											<td class='center'>${var.JSJQBJ}</td>
											<td class='center'>${var.JLLX}</td>
											<td class='center'>${var.LRR}</td>
											<td class='center'>${var.LRSJ}</td>
											<td class='center'>${var.JBR1}</td>
											<td class='center'>${var.JBR2}</td>
											<td class='center'>${var.SGDJ}</td>
											<td class='center'>${var.CLDXBJ}</td>
											<td class='center'>${var.JDCCLDXBJ}</td>
											<td class='center'>${var.ZDJLBJ}</td>
											<td class='center'>${var.XXLY}</td>
											<td class='center'>${var.XRMS}</td>
											<td class='center'>${var.DKBJ}</td>
											<td class='center'>${var.JMZNJBJ}</td>
											<td class='center'>${var.ZDBJ}</td>
											<td class='center'>${var.JSJG}</td>
											<td class='center'>${var.FSJG}</td>
											<td class='center'>${var.GXSJ}</td>
											<td class='center'>${var.BZ}</td>
											<td class='center'>${var.YWJYW}</td>
											<td class='center'>${var.ZJMC}</td>
											<td class='center'>${var.CCLZRQ}</td>
											<td class='center'>${var.NL}</td>
											<td class='center'>${var.XB}</td>
											<td class='center'>${var.HCBJ}</td>
											<td class='center'>${var.JD}</td>
											<td class='center'>${var.WD}</td>
											<td class='center'>${var.YLZZ1}</td>
											<td class='center'>${var.YLZZ2}</td>
											<td class='center'>${var.YLZZ3}</td>
											<td class='center'>${var.YLZZ4}</td>
											<td class='center'>${var.YLZZ5}</td>
											<td class='center'>${var.YLZZ6}</td>
											<td class='center'>${var.YLZZ7}</td>
											<td class='center'>${var.YLZZ8}</td>
											<td class='center'>${var.CJFS}</td>
											<td class='center'>${var.WFSJ1}</td>
											<td class='center'>${var.WFDD1}</td>
											<td class='center'>${var.LDDM1}</td>
											<td class='center'>${var.DDMS1}</td>
											<td class='center'>${var.JSRXZ}</td>
											<td class='center'>${var.CLYT}</td>
											<td class='center'>${var.XCFW}</td>
											<td class='center'>${var.DZZB}</td>
											<td class='center'>${var.SFZDRY}</td>
											<td class='center'>${var.XYSFZMHM}</td>
											<td class='center'>${var.XYXM}</td>
											<td class='center'>${var.YLZZ11}</td>
											<td class='center'>${var.YLZZ12}</td>
											<td class='center'>${var.YLZZ13}</td>
											<td class='center'>${var.YLZZ14}</td>
											<td class='center'>${var.YLZZ15}</td>
											<td class='center'>${var.YLZZ16}</td>
											<td class='center'>${var.YLZZ17}</td>
											<td class='center'>${var.YLZZ18}</td>
											<td class='center'>${var.XH}</td>
											<td class='center'>${var.CJJG}</td>
											<td class='center'>${var.FDJH}</td>
											<td class='center'>${var.CLSBDH}</td>
											<td class='center'>${var.CSYS}</td>
											<td class='center'>${var.CLPP}</td>
											<td class='center'>${var.ZZXZQH}</td>
											<td class='center'>${var.TZSH}</td>
											<td class='center'>${var.TZRQ}</td>
											<td class='center'>${var.SPDZ}</td>
											<td class='center'>${var.SBBH}</td>
											<td class='center'>${var.ZPSTR1}</td>
											<td class='center'>${var.ZPSTR2}</td>
											<td class='center'>${var.ZPSTR3}</td>
											<td class='center'>${var.SHZT}</td>
											<td class="center">
												<c:if test="${QX.edit != 1 && QX.del != 1 }">
												<span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="ace-icon fa fa-lock" title="无权限"></i></span>
												</c:if>
												<div class="hidden-sm hidden-xs btn-group">
													<c:if test="${QX.edit == 1 }">
													<a class="btn btn-xs btn-success" title="编辑" onclick="edit('${var.ILLEGALPARKING_ID}');">
														<i class="ace-icon fa fa-pencil-square-o bigger-120" title="编辑"></i>
													</a>
													</c:if>
													<c:if test="${QX.del == 1 }">
													<a class="btn btn-xs btn-danger" onclick="del('${var.ILLEGALPARKING_ID}');">
														<i class="ace-icon fa fa-trash-o bigger-120" title="删除"></i>
													</a>
													</c:if>
												</div>
												<div class="hidden-md hidden-lg">
													<div class="inline pos-rel">
														<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
														</button>
			
														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<c:if test="${QX.edit == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="edit('${var.ILLEGALPARKING_ID}');" class="tooltip-success" data-rel="tooltip" title="修改">
																	<span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
																</a>
															</li>
															</c:if>
															<c:if test="${QX.del == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="del('${var.ILLEGALPARKING_ID}');" class="tooltip-error" data-rel="tooltip" title="删除">
																	<span class="red">
																		<i class="ace-icon fa fa-trash-o bigger-120"></i>
																	</span>
																</a>
															</li>
															</c:if>
														</ul>
													</div>
												</div>
											</td>
										</tr>
									
									</c:forEach>
									</c:if>
									<c:if test="${QX.cha == 0 }">
										<tr>
											<td colspan="100" class="center">您无权查看</td>
										</tr>
									</c:if>
								</c:when>
								<c:otherwise>
									<tr class="main_info">
										<td colspan="100" class="center" >没有相关数据</td>
									</tr>
								</c:otherwise>
							</c:choose>
							</tbody>
						</table>
						<div class="page-header position-relative">
						<table style="width:100%;">
							<tr>
								<td style="vertical-align:top;">
									<c:if test="${QX.add == 1 }">
									<a class="btn btn-mini btn-success" onclick="add();">新增</a>
									</c:if>
									<c:if test="${QX.del == 1 }">
									<a class="btn btn-mini btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除" ><i class='ace-icon fa fa-trash-o bigger-120'></i></a>
									</c:if>
								</td>
								<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
							</tr>
						</table>
						</div>
						</form>
					
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 删除时确认窗口 -->
	<script src="static/ace/js/bootbox.js"></script>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<script type="text/javascript">
		$(top.hangge());//关闭加载状态
		//检索
		function tosearch(){
			top.jzts();
			$("#Form").submit();
		}
		$(function() {
		
			//日期框
			$('.date-picker').datepicker({
				autoclose: true,
				todayHighlight: true
			});
			
			//下拉框
			if(!ace.vars['touch']) {
				$('.chosen-select').chosen({allow_single_deselect:true}); 
				$(window)
				.off('resize.chosen')
				.on('resize.chosen', function() {
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					});
				}).trigger('resize.chosen');
				$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
					if(event_name != 'sidebar_collapsed') return;
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					});
				});
				$('#chosen-multiple-style .btn').on('click', function(e){
					var target = $(this).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			}
			
			
			//复选框全选控制
			var active_class = 'active';
			$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
				var th_checked = this.checked;//checkbox inside "TH" table header
				$(this).closest('table').find('tbody > tr').each(function(){
					var row = this;
					if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
					else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
				});
			});
		});
		
		//新增
		function add(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>illegalparking/goAdd.do';
			 diag.Width = 450;
			 diag.Height = 355;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 if('${page.currentPage}' == '0'){
						 top.jzts();
						 setTimeout("self.location=self.location",100);
					 }else{
						 nextPage(${page.currentPage});
					 }
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//删除
		function del(Id){
			bootbox.confirm("确定要删除吗?", function(result) {
				if(result) {
					top.jzts();
					var url = "<%=basePath%>illegalparking/delete.do?ILLEGALPARKING_ID="+Id+"&tm="+new Date().getTime();
					$.get(url,function(data){
						nextPage(${page.currentPage});
					});
				}
			});
		}
		
		//修改
		function edit(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="编辑";
			 diag.URL = '<%=basePath%>illegalparking/goEdit.do?WFBH='+Id;
			 diag.Width = 450;
			 diag.Height = 355;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮 
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//批量操作
		function makeAll(msg){
			bootbox.confirm(msg, function(result) {
				if(result) {
					var str = '';
					for(var i=0;i < document.getElementsByName('ids').length;i++){
					  if(document.getElementsByName('ids')[i].checked){
					  	if(str=='') str += document.getElementsByName('ids')[i].value;
					  	else str += ',' + document.getElementsByName('ids')[i].value;
					  }
					}
					if(str==''){
						bootbox.dialog({
							message: "<span class='bigger-110'>您没有选择任何内容!</span>",
							buttons: 			
							{ "button":{ "label":"确定", "className":"btn-sm btn-success"}}
						});
						$("#zcheckbox").tips({
							side:1,
				            msg:'点这里全选',
				            bg:'#AE81FF',
				            time:8
				        });
						return;
					}else{
						if(msg == '确定要删除选中的数据吗?'){
							top.jzts();
							$.ajax({
								type: "POST",
								url: '<%=basePath%>illegalparking/deleteAll.do?tm='+new Date().getTime(),
						    	data: {DATA_IDS:str},
								dataType:'json',
								//beforeSend: validateData,
								cache: false,
								success: function(data){
									 $.each(data.list, function(i, list){
											nextPage(${page.currentPage});
									 });
								}
							});
						}
					}
				}
			});
		};
		
		//导出excel
		function toExcel(){
			window.location.href='<%=basePath%>illegalparking/excel.do';
		}
	</script>


</body>
</html>