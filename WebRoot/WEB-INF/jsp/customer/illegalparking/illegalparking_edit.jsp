<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
					
					<form action="illegalparking/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ILLEGALPARKING_ID" id="ILLEGALPARKING_ID" value="${pd.ILLEGALPARKING_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注1:</td>
								<td><input type="text" name="XH" id="XH" value="${pd.XH}" maxlength="16" placeholder="这里输入备注1" title="备注1" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注2:</td>
								<td><input type="text" name="CJJG" id="CJJG" value="${pd.CJJG}" maxlength="12" placeholder="这里输入备注2" title="备注2" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注3:</td>
								<td><input type="text" name="CLFL" id="CLFL" value="${pd.CLFL}" maxlength="1" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注4:</td>
								<td><input type="text" name="HPZL" id="HPZL" value="${pd.HPZL}" maxlength="2" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注5:</td>
								<td><input type="text" name="HPHM" id="HPHM" value="${pd.HPHM}" maxlength="15" placeholder="这里输入备注5" title="备注5" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注6:</td>
								<td><input type="text" name="JDCSYR" id="JDCSYR" value="${pd.JDCSYR}" maxlength="128" placeholder="这里输入备注6" title="备注6" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注7:</td>
								<td><input type="text" name="SYXZ" id="SYXZ" value="${pd.SYXZ}" maxlength="1" placeholder="这里输入备注7" title="备注7" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注8:</td>
								<td><input type="text" name="FDJH" id="FDJH" value="${pd.FDJH}" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注9:</td>
								<td><input type="text" name="CLSBDH" id="CLSBDH" value="${pd.CLSBDH}" maxlength="35" placeholder="这里输入备注9" title="备注9" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注10:</td>
								<td><input type="text" name="CSYS" id="CSYS" value="${pd.CSYS}" maxlength="5" placeholder="这里输入备注10" title="备注10" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注11:</td>
								<td><input type="text" name="JTFS" id="JTFS" value="${pd.JTFS}" maxlength="3" placeholder="这里输入备注11" title="备注11" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注12:</td>
								<td><input type="text" name="FZJG" id="FZJG" value="${pd.FZJG}" maxlength="10" placeholder="这里输入备注12" title="备注12" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注13:</td>
								<td><input type="text" name="ZSXZQH" id="ZSXZQH" value="${pd.ZSXZQH}" maxlength="10" placeholder="这里输入备注13" title="备注13" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注14:</td>
								<td><input type="text" name="ZSXXDZ" id="ZSXXDZ" value="${pd.ZSXXDZ}" maxlength="128" placeholder="这里输入备注14" title="备注14" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注15:</td>
								<td><input type="text" name="DH" id="DH" value="${pd.DH}" maxlength="50" placeholder="这里输入备注15" title="备注15" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注16:</td>
								<td><input type="text" name="LXFS" id="LXFS" value="${pd.LXFS}" maxlength="128" placeholder="这里输入备注16" title="备注16" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注17:</td>
								<td><input type="text" name="TZSH" id="TZSH" value="${pd.TZSH}" maxlength="15" placeholder="这里输入备注17" title="备注17" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注18:</td>
								<td><input class="span10 date-picker" name="TZRQ" id="TZRQ" value="${pd.TZRQ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注18" title="备注18" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注19:</td>
								<td><input type="text" name="CJFS" id="CJFS" value="${pd.CJFS}" maxlength="1" placeholder="这里输入备注19" title="备注19" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注20:</td>
								<td><input class="span10 date-picker" name="WFSJ" id="WFSJ" value="${pd.WFSJ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注20" title="备注20" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注21:</td>
								<td><input type="text" name="XZQH" id="XZQH" value="${pd.XZQH}" maxlength="6" placeholder="这里输入备注21" title="备注21" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注22:</td>
								<td><input type="text" name="WFDD" id="WFDD" value="${pd.WFDD}" maxlength="5" placeholder="这里输入备注22" title="备注22" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注23:</td>
								<td><input type="text" name="LDDM" id="LDDM" value="${pd.LDDM}" maxlength="4" placeholder="这里输入备注23" title="备注23" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注24:</td>
								<td><input type="text" name="DDMS" id="DDMS" value="${pd.DDMS}" maxlength="3" placeholder="这里输入备注24" title="备注24" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注25:</td>
								<td><input class="span10 date-picker" name="WFSJ1" id="WFSJ1" value="${pd.WFSJ1}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注25" title="备注25" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注26:</td>
								<td><input type="text" name="WFDD1" id="WFDD1" value="${pd.WFDD1}" maxlength="5" placeholder="这里输入备注26" title="备注26" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注27:</td>
								<td><input type="text" name="LDDM1" id="LDDM1" value="${pd.LDDM1}" maxlength="4" placeholder="这里输入备注27" title="备注27" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注28:</td>
								<td><input type="text" name="DDMS1" id="DDMS1" value="${pd.DDMS1}" maxlength="3" placeholder="这里输入备注28" title="备注28" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注29:</td>
								<td><input type="text" name="WFDZ" id="WFDZ" value="${pd.WFDZ}" maxlength="128" placeholder="这里输入备注29" title="备注29" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注30:</td>
								<td><input type="text" name="WFXW" id="WFXW" value="${pd.WFXW}" maxlength="5" placeholder="这里输入备注30" title="备注30" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注31:</td>
								<td><input type="text" name="SCZ" id="SCZ" value="${pd.SCZ}" maxlength="6" placeholder="这里输入备注31" title="备注31" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注32:</td>
								<td><input type="text" name="BZZ" id="BZZ" value="${pd.BZZ}" maxlength="6" placeholder="这里输入备注32" title="备注32" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注33:</td>
								<td><input type="text" name="ZQMJ" id="ZQMJ" value="${pd.ZQMJ}" maxlength="30" placeholder="这里输入备注33" title="备注33" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注34:</td>
								<td><input type="text" name="SPDZ" id="SPDZ" value="${pd.SPDZ}" maxlength="128" placeholder="这里输入备注34" title="备注34" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注35:</td>
								<td><input type="text" name="SBBH" id="SBBH" value="${pd.SBBH}" maxlength="12" placeholder="这里输入备注35" title="备注35" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注36:</td>
								<td><input type="text" name="ZPSTR1" id="ZPSTR1" value="${pd.ZPSTR1}" maxlength="4000" placeholder="这里输入备注36" title="备注36" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注37:</td>
								<td><input type="text" name="ZPSTR2" id="ZPSTR2" value="${pd.ZPSTR2}" maxlength="4000" placeholder="这里输入备注37" title="备注37" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注38:</td>
								<td><input type="text" name="ZPSTR3" id="ZPSTR3" value="${pd.ZPSTR3}" maxlength="4000" placeholder="这里输入备注38" title="备注38" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注39:</td>
								<td><input type="text" name="SHZT" id="SHZT" value="${pd.SHZT}" maxlength="5" placeholder="这里输入备注39" title="备注39" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
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
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#XH").val()==""){
				$("#XH").tips({
					side:3,
		            msg:'请输入备注1',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XH").focus();
			return false;
			}
			if($("#CJJG").val()==""){
				$("#CJJG").tips({
					side:3,
		            msg:'请输入备注2',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CJJG").focus();
			return false;
			}
			if($("#CLFL").val()==""){
				$("#CLFL").tips({
					side:3,
		            msg:'请输入备注3',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLFL").focus();
			return false;
			}
			if($("#HPZL").val()==""){
				$("#HPZL").tips({
					side:3,
		            msg:'请输入备注4',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HPZL").focus();
			return false;
			}
			if($("#HPHM").val()==""){
				$("#HPHM").tips({
					side:3,
		            msg:'请输入备注5',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HPHM").focus();
			return false;
			}
			if($("#JDCSYR").val()==""){
				$("#JDCSYR").tips({
					side:3,
		            msg:'请输入备注6',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDCSYR").focus();
			return false;
			}
			if($("#SYXZ").val()==""){
				$("#SYXZ").tips({
					side:3,
		            msg:'请输入备注7',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SYXZ").focus();
			return false;
			}
			if($("#FDJH").val()==""){
				$("#FDJH").tips({
					side:3,
		            msg:'请输入备注8',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FDJH").focus();
			return false;
			}
			if($("#CLSBDH").val()==""){
				$("#CLSBDH").tips({
					side:3,
		            msg:'请输入备注9',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLSBDH").focus();
			return false;
			}
			if($("#CSYS").val()==""){
				$("#CSYS").tips({
					side:3,
		            msg:'请输入备注10',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CSYS").focus();
			return false;
			}
			if($("#JTFS").val()==""){
				$("#JTFS").tips({
					side:3,
		            msg:'请输入备注11',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JTFS").focus();
			return false;
			}
			if($("#FZJG").val()==""){
				$("#FZJG").tips({
					side:3,
		            msg:'请输入备注12',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FZJG").focus();
			return false;
			}
			if($("#ZSXZQH").val()==""){
				$("#ZSXZQH").tips({
					side:3,
		            msg:'请输入备注13',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZSXZQH").focus();
			return false;
			}
			if($("#ZSXXDZ").val()==""){
				$("#ZSXXDZ").tips({
					side:3,
		            msg:'请输入备注14',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZSXXDZ").focus();
			return false;
			}
			if($("#DH").val()==""){
				$("#DH").tips({
					side:3,
		            msg:'请输入备注15',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DH").focus();
			return false;
			}
			if($("#LXFS").val()==""){
				$("#LXFS").tips({
					side:3,
		            msg:'请输入备注16',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LXFS").focus();
			return false;
			}
			if($("#TZSH").val()==""){
				$("#TZSH").tips({
					side:3,
		            msg:'请输入备注17',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TZSH").focus();
			return false;
			}
			if($("#TZRQ").val()==""){
				$("#TZRQ").tips({
					side:3,
		            msg:'请输入备注18',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TZRQ").focus();
			return false;
			}
			if($("#CJFS").val()==""){
				$("#CJFS").tips({
					side:3,
		            msg:'请输入备注19',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CJFS").focus();
			return false;
			}
			if($("#WFSJ").val()==""){
				$("#WFSJ").tips({
					side:3,
		            msg:'请输入备注20',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFSJ").focus();
			return false;
			}
			if($("#XZQH").val()==""){
				$("#XZQH").tips({
					side:3,
		            msg:'请输入备注21',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XZQH").focus();
			return false;
			}
			if($("#WFDD").val()==""){
				$("#WFDD").tips({
					side:3,
		            msg:'请输入备注22',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFDD").focus();
			return false;
			}
			if($("#LDDM").val()==""){
				$("#LDDM").tips({
					side:3,
		            msg:'请输入备注23',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LDDM").focus();
			return false;
			}
			if($("#DDMS").val()==""){
				$("#DDMS").tips({
					side:3,
		            msg:'请输入备注24',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DDMS").focus();
			return false;
			}
			if($("#WFSJ1").val()==""){
				$("#WFSJ1").tips({
					side:3,
		            msg:'请输入备注25',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFSJ1").focus();
			return false;
			}
			if($("#WFDD1").val()==""){
				$("#WFDD1").tips({
					side:3,
		            msg:'请输入备注26',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFDD1").focus();
			return false;
			}
			if($("#LDDM1").val()==""){
				$("#LDDM1").tips({
					side:3,
		            msg:'请输入备注27',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LDDM1").focus();
			return false;
			}
			if($("#DDMS1").val()==""){
				$("#DDMS1").tips({
					side:3,
		            msg:'请输入备注28',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DDMS1").focus();
			return false;
			}
			if($("#WFDZ").val()==""){
				$("#WFDZ").tips({
					side:3,
		            msg:'请输入备注29',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFDZ").focus();
			return false;
			}
			if($("#WFXW").val()==""){
				$("#WFXW").tips({
					side:3,
		            msg:'请输入备注30',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFXW").focus();
			return false;
			}
			if($("#SCZ").val()==""){
				$("#SCZ").tips({
					side:3,
		            msg:'请输入备注31',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SCZ").focus();
			return false;
			}
			if($("#BZZ").val()==""){
				$("#BZZ").tips({
					side:3,
		            msg:'请输入备注32',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BZZ").focus();
			return false;
			}
			if($("#ZQMJ").val()==""){
				$("#ZQMJ").tips({
					side:3,
		            msg:'请输入备注33',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZQMJ").focus();
			return false;
			}
			if($("#SPDZ").val()==""){
				$("#SPDZ").tips({
					side:3,
		            msg:'请输入备注34',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SPDZ").focus();
			return false;
			}
			if($("#SBBH").val()==""){
				$("#SBBH").tips({
					side:3,
		            msg:'请输入备注35',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SBBH").focus();
			return false;
			}
			if($("#ZPSTR1").val()==""){
				$("#ZPSTR1").tips({
					side:3,
		            msg:'请输入备注36',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZPSTR1").focus();
			return false;
			}
			if($("#ZPSTR2").val()==""){
				$("#ZPSTR2").tips({
					side:3,
		            msg:'请输入备注37',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZPSTR2").focus();
			return false;
			}
			if($("#ZPSTR3").val()==""){
				$("#ZPSTR3").tips({
					side:3,
		            msg:'请输入备注38',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZPSTR3").focus();
			return false;
			}
			if($("#SHZT").val()==""){
				$("#SHZT").tips({
					side:3,
		            msg:'请输入备注39',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SHZT").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>