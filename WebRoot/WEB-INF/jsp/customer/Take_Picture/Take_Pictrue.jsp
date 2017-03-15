<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<!-- 写样式 -->
<link rel="shortcut icon" href="">
<link href="static/customer/css/Take_Picture/font-awesome.min.css" rel="stylesheet">
<link href="static/customer/css/Take_Picture/base.css" rel="stylesheet">
<link href="static/customer/css/Take_Picture/module.css" rel="stylesheet">
<link href="static/customer/css/Take_Picture/weiphp.css" rel="stylesheet">
<link href="static/customer/css/Take_Picture/bootstrapValidator.css" rel="stylesheet">

<script type="text/javascript" src="static/customer/js/Take_Pictrue/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="static/customer/js/Take_Pictrue/bootstrap.min.js"></script>
<script type="text/javascript" src="static/customer/js/Take_Pictrue/bootstrapValidator.js"></script>
<script type="text/javascript" src="static/customer/js/Take_Pictrue/admin_common.js"></script>
<script type="text/javascript" src="static/customer/js/Take_Pictrue/roby.js"></script>
<script type="text/javascript" src="static/customer/js/Take_Pictrue/My97DatePicker/WdatePicker.js"></script>
<script src="static/customer/js/Take_Pictrue/layer/layer.js"></script>
<style type="text/css">
.bgc {
	background-color: red;
}
</style>

</head>
<body>
	<div class="main_body">
		<div class="page_message">
			<section id="contents">
				<div class="table-bar">
					<!-- 高级搜索 -->
					<div style="float: left;">
						<select id="condition" class="screen" style="width: 100px;">
							<option value="99">请选择统计条件</option>
							<option value="1">未审核</option>
							<option value="2">已审核</option>
							<option value="3">作废</option>
						</select> <select id="gsd" class="screen" style="width: 120px;">
							<option value="">全部归属地</option>
							<option value="莲湖区">莲湖区</option>
							<option value="新城区">新城区</option>
							<option value="碑林区">碑林区</option>
							<option value="雁塔区">雁塔区</option>
							<option value="高新区">高新区</option>
							<option value="曲江区">曲江区</option>
							<option value="未央区">未央区</option>
							<option value="经开区">经开区</option>
							<option value="灞桥区">灞桥区</option>
							<option value="长安区">长安区</option>
							<option value="高速大队">高速大队</option>
						</select> <select id="marker" class="screen" style="width: 142px;">
							<option value="">请选择标记条件</option>
							<option value="1">经典案例</option>
							<option value="2">曝光素材</option>
							<option value="3">其它</option>
							<option value="4">疑难杂症</option>
							<option value="5">高速</option>
						</select> <select id="lrwf" class="screen" style="width: 142px;">
							<option value="">请选择是否录入违法</option>
							<option value="0">否</option>
							<option value="1">是</option>
						</select> <select id="wfxw" class="screen" style="width: 152px;">
							<option value="">请选择违法行为</option>
							<optgroup label="机动车违法行为">
								<option value="违法停车">违法停车</option>
								<option value="主干道蹭停">主干道蹭停</option>
								<option value="占用高速应急车道">占用高速应急车道</option>
								<option value="车窗抛物">车窗抛物</option>
								<option value="占用公交道">占用公交道</option>
								<option value="斑马线不礼让行人">斑马线不礼让行人</option>
								<option value="变道加塞">变道加塞</option>
								<option value="逆向行驶">逆向行驶</option>
								<option value="行驶中使用手机">行驶中使用手机</option>
								<option value="闯红灯">闯红灯</option>
								<option value="穿插行驶">穿插行驶</option>
								<option value="违反标志标线">违反标志标线</option>
								<option value="追逐竞驶">追逐竞驶</option>
								<option value="肇事逃逸">肇事逃逸</option>
								<option value="故意遮挡号牌">故意遮挡号牌</option>
								<option value="危险驾驶">危险驾驶</option>
								<option value="不按规定使用远光灯">不按规定使用远光灯</option>
							</optgroup>
							<optgroup label="非机动车违法行为">
								<option value="非机动车闯红灯">非机动车闯红灯</option>
								<option value="走机动车道">走机动车道</option>
							</optgroup>
							<optgroup label="行人违法行为">
								<option value="行人闯红灯">行人闯红灯</option>
								<option value="翻栅栏">翻栅栏</option>
							</optgroup>
						</select> <select id="isMj" class="screen" style="width: 130px;">
							<option value="">是否民警上传</option>
							<option value="1">是</option>
							<option value="0">否</option>
						</select> <input id="starttime" type="text" value="2016-09-01 00"
							class="Wdate"
							onClick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH'})"
							maxlength="13" style="margin-left: 5px; width: 150px">-<input
							id="endtime" type="text" value="2016-11-03 00" class="Wdate"
							onClick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH'})"
							maxlength="13" style="margin-left: 5px; width: 150px"> <a
							id="statistics"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">数据查询</a> <a href="/xapt/wx/take/list"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">清除查询</a> <a id="stathbdown"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">红包奖励下载</a> <a id="statlbdown"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">数据下载</a> <a id="statCount"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">数据统计</a> <a id="newReply"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">最新回复</a> <a id="workStat"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">工作统计</a> <a id="policeStat"
							style="padding: 8px 12px; position: relative; top: -5px;"
							class="btn">警员专区</a> 共13209起
					</div>
					<div class="search-form fr cf">
						<div class="sleft" style="border: 0px; background-color: #f3f3f3;">
							开启自动刷新:&nbsp;&nbsp;<input type="checkbox" id="refresh"
								checked="true" />
						</div>
						<div class="sleft">
							<input style="width: 300px" type="text" name="keyword"
								id="keyword" class="search-input" value=""
								placeholder="请输入联系电话、归属地、编号、OpenId、号牌等" maxlength="50">
							<a class="sch-btn" href="javascript:;" id="search" url="list"><i
								class="btn-search"></i></a>
						</div>
					</div>
				</div>
				<!-- 数据列表 -->
				<div class="data-table">
					<div class="table-striped">
						<table cellspacing="1">
							<!-- 表头 -->
							<thead>
								<tr>
									<th width="5%">编号</th>
									<th width="9%">上传时间</th>
									<th width="10%">违法地点</th>
									<th width="7%">违法车牌</th>
									<th width="11%">上报人微信OpenId</th>
									<th width="10%">手机号码</th>
									<th width="10%">违法行为</th>
									<th width="6%">车牌号修改</th>
									<th width="6%">归属地</th>
									<th width="6%">归属地更改</th>
									<th width="5%">是否民警</th>
									<th width="5%">详情</th>
									<th width="8%">处理时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<!-- 列表 -->
							<tbody>
							<tbody>

								<tr class="jq_parent">
									<td class="">15649</td>
									<td>2016-11-02 11:20:30</td>
									<td>陕西省西安市北大街十字（由南向莲湖路左转）</td>
									<td>陕AQV533</td>
									<td>oS1JEt0pvPSrLAud_SC5xIkKG_qw</td>
									<td>15353613388</td>
									<td>变道加塞</td>
									<td></td>
									<td>经开区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15649">详情</a>
									</td>
									<td>2016-11-02 11:32:06</td>
									<td>已审核</td>
								</tr>

								<tr class="jq_parent">
									<td class="">15648</td>
									<td>2016-11-02 11:19:14</td>
									<td>南二环东段</td>
									<td><a href="javascript:void(0);"
										onclick="showHphmItems('02','陕AU0G02');">陕AU0G02</a></td>
									<td>oS1JEt2_PUdTFoTE82qR2beWU2c0</td>
									<td>15339200272</td>
									<td>危险驾驶</td>
									<td>
										<button type="button"
											class="btn btn-info btn-xs btn-danger jq_modal jq_ajax_modal"
											data-title="号牌更改" data-id="90" data-toggle="modal"
											data-target=".bs-example-modal-lg" value="15648"
											onclick="xiugai('15648','02','陕AU0G02')">修改</button>
									</td>
									<td></td>
									<td>
										<button type="button"
											class="btn btn-info btn-xs btn-danger jq_modal jq_ajax_modal"
											data-title="归属地更改" data-target=".bs-example-modal-lg"
											onclick="xggsd(15648)">修改</button>
									</td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15648">详情</a>
									</td>
									<td>未受理</td>
									<td><a id="shouli" class="btn" onclick="shouli('15648')">受理</a>
									</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15647</td>
									<td>2016-11-02 11:17:59</td>
									<td>陕西省西安市莲湖区桃园南路西港国际花园门前</td>
									<td>陕A719M4</td>
									<td>oS1JEt-rkrER4zKo5j5HjGfEKdnA</td>
									<td>13991111969</td>
									<td>违法停车</td>
									<td>
										<button type="button"
											class="btn btn-info btn-xs btn-danger jq_modal jq_ajax_modal"
											data-title="号牌更改" data-id="90" data-toggle="modal"
											data-target=".bs-example-modal-lg" value="15647"
											onclick="xiugai('15647','02','陕A719M4')">修改</button>
									</td>
									<td>莲湖区</td>
									<td>
										<button type="button"
											class="btn btn-info btn-xs btn-danger jq_modal jq_ajax_modal"
											data-title="归属地更改" data-target=".bs-example-modal-lg"
											onclick="xggsd(15647)">修改</button>
									</td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15647">详情</a>
									</td>
									<td>未受理</td>
									<td><a id="shouli" class="btn" onclick="shouli('15647')">受理</a>
									</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15646</td>
									<td>2016-11-02 11:07:57</td>
									<td>陕西省西安市莲湖区丰镐东路</td>
									<td>陕AC18Y3</td>
									<td>oS1JEt9H_KSUR7cWlPOWic1wCn2A</td>
									<td>18192809369</td>
									<td>违法停车</td>
									<td></td>
									<td>碑林区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15646">详情</a>
									</td>
									<td>2016-11-02 11:13:21</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15645</td>
									<td>2016-11-02 11:05:32</td>
									<td>陕西省西安市碑林区含光北路108号含光路</td>
									<td><a href="javascript:void(0);"
										onclick="showHphmItems('02','陕AT529C');">陕AT529C</a></td>
									<td>oS1JEt7mI-f_Vp-WWHToxilUXe-A</td>
									<td>18066544578</td>
									<td>违法停车</td>
									<td></td>
									<td>碑林区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15645">详情</a>
									</td>
									<td>2016-11-02 11:08:51</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15644</td>
									<td>2016-11-02 11:03:28</td>
									<td>陕西省西安市雁塔区丈八北路256号丈八北路</td>
									<td>陕AUQ273</td>
									<td>oS1JEt8tapUcNc95akpOf87Rr7Qk</td>
									<td>15309237081</td>
									<td>违法停车</td>
									<td></td>
									<td>高新区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15644">详情</a>
									</td>
									<td>2016-11-02 11:06:14</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15643</td>
									<td>2016-11-02 11:02:49</td>
									<td>陕西省西安市莲湖区沣镐东路</td>
									<td>陕A096F0</td>
									<td>oS1JEt9H_KSUR7cWlPOWic1wCn2A</td>
									<td>18192809369</td>
									<td>违法停车</td>
									<td></td>
									<td>碑林区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15643">详情</a>
									</td>
									<td>2016-11-02 11:03:17</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15642</td>
									<td>2016-11-02 10:59:32</td>
									<td>交大科技园</td>
									<td>陕AAS090</td>
									<td>oS1JEt6bP1K256Jzkyl7VJVMPG5M</td>
									<td>13060396609</td>
									<td>逆向行驶</td>
									<td></td>
									<td>灞桥区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15642">详情</a>
									</td>
									<td>2016-11-02 11:01:27</td>
									<td>已作废</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15641</td>
									<td>2016-11-02 10:47:47</td>
									<td>陕西省西安市未央区凤城七路</td>
									<td>陕ASL350</td>
									<td>oS1JEt1UFeFZ4WO7CyfQSiwvd_iE</td>
									<td>18821633588</td>
									<td>违法停车</td>
									<td></td>
									<td>经开区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15641">详情</a>
									</td>
									<td>2016-11-02 10:49:24</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15640</td>
									<td>2016-11-02 10:23:51</td>
									<td>陕西省西安市雁塔区科技路</td>
									<td></td>
									<td>oS1JEt01rKt_lvfAGgUoMnxwOHXc</td>
									<td>15529437786</td>
									<td>行人闯红灯</td>
									<td></td>
									<td>高新区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15640">详情</a>
									</td>
									<td>2016-11-02 10:49:34</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15639</td>
									<td>2016-11-02 09:55:41</td>
									<td>陕西省西安市莲湖区西二环路</td>
									<td>陕AU0881</td>
									<td>oS1JEt1o3ajBtAorvNNLJgpXv2Ck</td>
									<td>13572912658</td>
									<td>违反标志标线</td>
									<td></td>
									<td>莲湖区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15639">详情</a>
									</td>
									<td>2016-11-02 10:48:24</td>
									<td>已作废</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15638</td>
									<td>2016-11-02 09:45:34</td>
									<td>陕西省西安市雁塔区创新路</td>
									<td>陕AB0E86</td>
									<td>oS1JEtwZWjP-k15wOtD7UX6sAMRQ</td>
									<td>15619286888</td>
									<td>违法停车</td>
									<td></td>
									<td>高新区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15638">详情</a>
									</td>
									<td>2016-11-02 10:03:53</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15637</td>
									<td>2016-11-02 09:43:12</td>
									<td>陕西省西安市雁塔区创新路</td>
									<td>陕AQ71X1</td>
									<td>oS1JEtwZWjP-k15wOtD7UX6sAMRQ</td>
									<td>15619286888</td>
									<td>违法停车</td>
									<td></td>
									<td>高新区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15637">详情</a>
									</td>
									<td>2016-11-02 09:48:54</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15636</td>
									<td>2016-11-02 09:39:34</td>
									<td>陕西省西安市雁塔区和谐路</td>
									<td>陕AX4F11</td>
									<td>oS1JEt_pxNeql9cfqtqSByxWHTk0</td>
									<td>15399443126</td>
									<td>违法停车</td>
									<td></td>
									<td>雁塔区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15636">详情</a>
									</td>
									<td>2016-11-02 09:39:49</td>
									<td>已审核</td>
								</tr>
								<tr class="jq_parent">
									<td class="">15635</td>
									<td>2016-11-02 09:37:19</td>
									<td>陕西省西安市碑林区边西街长期停放在这个位置，严重影响过往交通</td>
									<td>陕A5JE69</td>
									<td>oS1JEt4yYhci8RNl_G4JkGszt0uw</td>
									<td>13488339190</td>
									<td>违法停车</td>
									<td></td>
									<td>高新区</td>
									<td></td>
									<td>否</td>
									<td><a href="/xapt/wx/take/suishouPaiXiangQing?id=15635">详情</a>
									</td>
									<td>2016-11-02 09:38:17</td>
									<td>已作废</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="page">
					<ul id="yw0" class="yiiPager">
						<li class="page selected"><a
							href="/xapt/wx/take/list?ec_p=1&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">1</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=2&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">2</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=3&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">3</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=4&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">4</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=5&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">5</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=6&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">6</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=7&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">7</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=8&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">8</a></li>

						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=9&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">9</a></li>
						<li class="page "><a
							href="/xapt/wx/take/list?ec_p=10&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">10</a></li>
						<li class="next"><a
							href="/xapt/wx/take/list?ec_p=2&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">下一页</a></li>
						<li class="last"><a
							href="/xapt/wx/take/list?ec_p=881&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=">尾页</a></li>
					</ul>
					<div style="float: left;">
						跳转到第&nbsp;<input type="text" value='' id='jump'
							style="width: 20px; height: 15px;">&nbsp;页
					</div>
					<a id="go" style="margin-left: 3px;" class="btn">GO</a>
				</div>
			</section>
		</div>
	</div>
	
<input id="ringflag" type="hidden" value="0"/>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" id="hphmgx">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">修改车牌号</h4>
            </div>
            <div class="modal-body">
                <div>
                    <div class="controls" style="margin-bottom: 10px;text-align: center;">
                        <span><font class="red">*</font>车牌号:</span>
                        <input style="width: 150px" id="hphm" value="陕" maxlength="7">
                        <script type="text/javascript">
                            /* function gcdx(ss){
                             var values=ss.value
                             if(values==""){
                             return;
                             }
                             ss.value=values.toUpperCase();   //小写字母转换成大写字母
                             } */
                        </script>

                    </div>
                    <div class="controls" style="text-align: center;">
                        <span><font class="red">*</font>车牌种类:</span>
                        <select id="hpzl" style="width: 160px;height: 37px;">
                            <option selected="selected" value="">--请选择--</option>
                            <option value="01">大型车辆</option>
                            <option value="02">小型车辆</option>
                        </select>
                    </div>
                </div>
                <div class="form-group cf" style="margin-top:20px;text-align:center;">
                    <button type="button" id="updatecp" class="btn submit-btn jq_but">修改</button>
                </div>
            </div>
        </div>
    </div>
</div>

<audio id="audio" loop="loop">
    <source src="/xapt/component/jgpt/images/notify.mp3" type="audio/mpeg">
</audio>

<form id="downfrm" action="" method="POST" target="downiframe"></form>
<iframe id="downiframe" name="downiframe" style="display: none;" height="0" width="0"></iframe>

<script>
    function showTips(text, time) {
        if(arguments.length < 1) {
            alert('请填写提示');
            return;
        }
        var text = text,
                time = time;

        var wrap_div = '<div class="myTips" id="myTips" style="position: fixed;top: 0; left: 0;width: 100%;height: 100%;z-index: 10000;"><div style="position: absolute;padding: 20px;background: rgba(0, 0, 0, 0.7);position: absolute; left:50%; top:50%; -webkit-transform:translate(-50%,-50%); transform:translate(-50%,-50%);font-size: 18px;border-radius: 10px;color:#fff;opacity: 0.9;">'+ text +'</div>';


        if($('.myTips').length > 0) {
            $('.myTips').find('div').text(text);
        } else {
            $("body").append(wrap_div);
        }

        try {
            $("#myTips").hide();
        } catch (e) {
        }

        if(time != undefined && time) {
            $("#myTips").show();
            setTimeout(function() {
                $("#myTips").hide();
            }, time);
        }
    }
    function showHphmItems(hpzl,hphm){

        if(hpzl == "" || hphm == "") {
            return;
        }

        layer.open({
            type: 2,
            area: ['800px', '400px'],
            skin: 'layui-layer-demo', //样式类名
            title :'随手拍车辆被举报信息',
            shadeClose: true, //开启遮罩关闭
            content: '/xapt/wx/take/showTakeHphmItems?hpzl='+hpzl+'&hphm='+hphm
        });
    }

    var id;
    function xiugai(ss,hpzlVal,hphmVal){
        $("#refresh").prop("checked",false);
        $("hphmgx").attr("display","block");

        //alert(hpzlVal+","+hphmVal);
        $("#hphm").val(hphmVal);
        $("#hpzl").val(hpzlVal);
        id=ss;
    }
    $(function() {
        $("#updatecp").click(function(){
            var hphm=$("#hphm").val();
            var hpzl=$("#hpzl").val();
            //alert(hpzl);
            if(hphm=="" && hpzl==""){
                showTips("请填写内容再提交",2000);
                return;
            }
            if(hphm=='陕'){
                hphm="";
            }
            if(hphm!=""){
                if(hphm.length!=7){
                    showTips("车牌号码不正确",2000);
                    return;
                }
            }
            $.ajax({
                url:"/xapt/wx/take/hphmUpdateById",
                type:"post",
                timeout:30000,
                data:{"hphm":hphm,"id":id,"hpzl":hpzl},
                success:function(data){

                    if(data.success){
                        showTips("修改成功",2000);
                        window.location.reload();
                    }
                }
            });
        });
    })
    $(function() {
        $(".close").click(function(){
            $("#refresh").prop("checked",true);
            myrefresh();
        });

        //跳转GO按钮
        $("#go").click(function(){
            var jump = $("#jump").val();
            var min = "1";
            var max = "881";
            if(jump < min) {
                jump = min;
            }
            if(jump > max) {
                jump = max;
            }
            window.location.href = '/xapt/wx/take/list?ec_p='+jump+'&&keyword=&&ec_eq_status=99&starttime=2016-09-01 00&endtime=2016-11-03 00&ec_eq_district=&ec_eq_marker=&ec_eq_wfxw=&ec_eq_isMj=&ec_eq_isLrwf=';
        });
    })
</script>

<script>
    var id;
    function shouli(ss) {
        $("#handleInfo").css("display","block");
        $("#refresh").prop("checked",false);
        id = ss;
    }

    var click_flag = true;
    function zuofei() {

        if(!click_flag){
            return false;
        }
        click_flag = false;

        var dz=$("#dz").val();
        $.ajax({
            url:"/xapt/wx/take/suishoupaiCaseHandle",
            type:"post",
            timeout:30000,
            data:{"status":3,"bz":dz,"id":id},
            success:function(data){
                if(data.success){
                    showTips("受理成功",2000);
                    window.location.reload();
                } else {
                    showTips(data.msg,2000);
                    click_flag = true;
                }
            },
            error:function(XMLHttpRequest, textStatus, errorThrown){
                showTips("请求超时,请检测网络重试"+XMLHttpRequest+","+textStatus+","+errorThrown, 2000);
                click_flag = true;
            }
        });
    }

    var click_flag1 = true;
    function tongguo() {

        if(!click_flag1){
            return false;
        }
        click_flag1 = false;

        var dz=$("#dz").val();
        $.ajax({
            url:"/xapt/wx/take/suishoupaiCaseHandle",
            type:"post",
            timeout:30000,
            data:{"status":2,"bz":dz,"id":id},
            success:function(data){
                if(data.success){
                    showTips("受理成功",2000);
                    window.location.reload();
                } else {
                    showTips(data.msg,2000);
                    click_flag1 = true;
                }
            }
        });
    }
</script>

<script>
    function myrefresh(){
        var refresh = $("#refresh").prop("checked");

        if(refresh==true){
            window.location.reload();
        }
    }
    if("false"=="true"){
        refresh = $("#refresh").prop("checked",true);
        setTimeout('myrefresh()',10000); //指定10秒刷新一次
    }else{
        refresh = $("#refresh").prop("checked",false);
    }

    $(document).ready(function(){
        $("#refresh").change(function(){
            var refresh = $("#refresh").prop("checked");
            if(refresh){
                setTimeout('myrefresh()',10000); //指定10秒刷新一次
            }
            $.post("/xapt/wx/take/refresh",{"refresh":refresh});
        });

        var ringflag = $("#ringflag").val();
        if (ringflag=='0'){
            audio.play();
        }

        $("#statistics").click(function(){
            var status = $("#condition").val();
            var district = $("#gsd").val();
            var marker=$("#marker").val();
            var starttime = $("#starttime").val();
            var endtime = $("#endtime").val();
            var wfxw = $("#wfxw").val();
            var isMj = $("#isMj").val();
            var isLrwf = $("#lrwf").val();
            //alert(status+" "+district+" "+starttime+" "+endtime);
            /*  if(status==''){
             showTips('请选择统计条件',2000);
             return false;
             } */
            if(starttime==''){
                showTips('请选择开始日期',2000);
                return false;
            }
            if(endtime==''){
                showTips('请选择结束日期',2000);
                return false;
            }
            if(!(starttime<endtime)){
                showTips('开始日期必须小于结束日期',2000);
                return false;
            }

            var url = "/xapt/wx/take/list?ec_eq_status="+status+"&starttime="+starttime+"&endtime="+endtime+"&ec_eq_district="+district+"&ec_eq_marker="+marker+"&ec_eq_wfxw="+wfxw+"&ec_eq_isMj="+isMj+"&ec_eq_isLrwf="+isLrwf;
            if(status == "") {
                url = "/xapt/wx/take/list?ec_eq_status=99&starttime="+starttime+"&endtime="+endtime+"&ec_eq_district="+district+"&ec_eq_marker="+marker+"&ec_eq_wfxw="+wfxw+"&ec_eq_isMj="+isMj+"&ec_eq_isLrwf="+isLrwf;
            }
            window.location.href= url;
        });

        //下载红包奖励文件
        $("#stathbdown").click(function(){
            var status = $("#condition").val();
            var district = $("#gsd").val();
            var starttime = $("#starttime").val();
            var endtime = $("#endtime").val();
            var marker=$("#marker").val();
            var wfxw=$("#wfxw").val();
            var isMj = $("#isMj").val();
            var isLrwf = $("#lrwf").val();
            if(status=='99'){
                showTips('请选择统计条件',2000);
                return false;
            }

            if(starttime==''){
                showTips('请选择开始日期',2000);
                return false;
            }

            if(endtime==''){
                showTips('请选择结束日期',2000);
                return false;
            }

            if(starttime > endtime){
                showTips('开始日期必须小于等于结束日期',2000);
                return false;
            }

            var url = "/xapt/wx/stat/downTakeItemStat?status="+status+"&startTime="+starttime+"&endTime="+endtime+"&district="+district+"&marker="+marker+"&wfxw="+wfxw+"&isMj="+isMj+"&lrwf="+isLrwf;
            //location.href = url;
            document.getElementById("downfrm").action = url;
            document.getElementById("downfrm").submit();
        });

        //下载列表文件
        $("#statlbdown").click(function(){
            var status = $("#condition").val();
            var district = $("#gsd").val();
            var starttime = $("#starttime").val();
            var endtime = $("#endtime").val();
            var marker=$("#marker").val();
            var wfxw=$("#wfxw").val();
            var isMj = $("#isMj").val();
            var isLrwf = $("#lrwf").val();
            /* if(status=='99'){
             showTips('请选择统计条件',2000);
             return false;
             } */

            if(starttime==''){
                showTips('请选择开始日期',2000);
                return false;
            }

            if(endtime==''){
                showTips('请选择结束日期',2000);
                return false;
            }

            if(starttime > endtime){
                showTips('开始日期必须小于等于结束日期',2000);
                return false;
            }

            var url = "/xapt/wx/stat/downTakePageStat?status="+status+"&startTime="+starttime+"&endTime="+endtime+"&district="+district+"&marker="+marker+"&wfxw="+wfxw+"&isMj="+isMj+"&lrwf="+isLrwf;
            //location.href = url;
            document.getElementById("downfrm").action = url;
            document.getElementById("downfrm").submit();
        });
    });
</script>

<script>
    $("#search").click(function(){
        var _key = $("#keyword").val();
        _key = _key.substr(0,50);
        location.href = "/xapt/wx/take/list?keyword="+_key;
    });
</script>

<div class="modal fade" id="handleInfo" data-getid="" data-getfunc="" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="position: fixed;
top: 150px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">信息审核：</h4>
            </div>
            <div class="form-group cf">
                <div class="controls" style="text-align: center;">
                    <span><font class="red">*</font>说明:</span>
                    <textarea rows="3" cols="2" id="dz" style="width: 300px;"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="zuofei()">审核作废</button>
                <button type="button" class="btn_delete btn btn-primary" onclick="tongguo()">审核通过</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="xggsd" data-getid="" data-getfunc="" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="position:fixed;top:140px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">修改区域信息</h4>
            </div>
            <div class="form-group cf">
                <div class="controls" style="height: 120px;text-align: center;">
                    <span>区域：</span><select id="gsdh" class="screen" style="width:150px;">
                    <option value="" selected="selected" disabled="disabled">全部归属地</option>
                    <option value="莲湖区">莲湖区</option>
                    <option value="新城区">新城区</option>
                    <option value="碑林区">碑林区</option>
                    <option value="雁塔区">雁塔区</option>
                    <option value="高新区">高新区</option>
                    <option value="曲江区">曲江区</option>
                    <option value="未央区">未央区</option>
                    <option value="经开区">经开区</option>
                    <option value="灞桥区">灞桥区</option>
                    <option value="长安区">长安区</option>
                    <option value="高速大队">高速大队</option>
                    <option value="其他">其他</option>
                </select><br>
                    <button type="button"  class="btn submit-btn jq_but" onclick="updateDistrict()">修改</button>
                </div>
            </div>
        </div>
        <!-- <div class="modal-footer">
            <button type="button"  class="btn submit-btn jq_but" onclick="updateDistrict()">修改</button>
        </div> -->
    </div>
</div>

<script type="text/javascript">
    var id;
    function xggsd(ss){
        $("#refresh").prop("checked",false);
        $("#xggsd").css("display","block");
        id=ss;
    }
    function updateDistrict(){
        var district=$("#gsdh").val();
        if(null==district||district==""){
            showTips("请选择区域后再修改",2000);
            return;
        }
        $.ajax({
            url:"/xapt/wx/take/districtUpdate",
            type:"post",
            timeout:30000,
            data:{"district":district,"id":id},
            success:function(data){
                if(data.success){
                    showTips("更改成功",2000);
                    window.location.reload();
                }else{
                    showTips(data.msg,2000);
                }
            }
        });
    }

    //弹出绑定用户统计窗口
    $("#statCount").on('click', function(){
        $("#refresh").prop("checked",false);
        layer.open({
            type: 2,
            area: ['85%', '450px'],
            skin: 'layui-layer-demo', //样式类名
            title :'随手拍车辆被举报情况统计',
            shadeClose: true, //开启遮罩关闭
            cancel: function(){
                //右上角关闭回调
                $("#refresh").prop("checked",true);
                myrefresh();
            },
            content: '/xapt/wx/stat/countTakeVeh'
        });
    });
    //弹出绑定用户统计窗口
    $("#newReply").on('click', function(){
        $("#refresh").prop("checked",false);
        layer.open({
            type: 2,
            area: ['85%', '450px'],
            skin: 'layui-layer-demo', //样式类名
            title :'最新回复消息',
            shadeClose: true, //开启遮罩关闭
            cancel: function(){
                //右上角关闭回调
                $("#refresh").prop("checked",true);
                myrefresh();
            },
            content: '/xapt/wx/take/findnewreply'
        });
    });
    //弹出绑定用户统计窗口
    $("#workStat").on('click', function(){
        $("#refresh").prop("checked",false);
        layer.open({
            type: 2,
            area: ['85%', '450px'],
            skin: 'layui-layer-demo', //样式类名
            title :'工作统计',
            shadeClose: true, //开启遮罩关闭
            cancel: function(){
                //右上角关闭回调
                $("#refresh").prop("checked",true);
                myrefresh();
            },
            content: '/xapt/wx/stat/counttakehandle'
        });
    });

    //弹出绑定用户统计窗口
    $("#policeStat").on('click', function(){
        $("#refresh").prop("checked",false);
        layer.open({
            type: 2,
            area: ['85%', '450px'],
            skin: 'layui-layer-demo', //样式类名
            title :'工作统计',
            shadeClose: true, //开启遮罩关闭
            cancel: function(){
                //右上角关闭回调
                $("#refresh").prop("checked",true);
                myrefresh();
            },
            content: '/xapt/wx/stat/countpolicetake'
        });
    });
</script>

</html>









