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
						<input type="hidden" name="XH" id="XH" value="${pd.XH}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">序号:</td>
								<td><input disabled="true " type="text" name="XH" id="XH" value="${pd.XH}"  placeholder="这里输入序号" title="序号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">号码号牌:</td>
								<td><input disabled="true " type="text" name="HPMP" id="HPMP" value="${pd.HPHM}"  placeholder="这里输入号牌号码" title="号牌号码" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">机动车所有人:</td>
								<td><input disabled="true " type="text" name="JDCSYR" id="JDCSYR" value="${pd.JDCSYR}"  placeholder="这里输入机动车所有人" title="机动车所有人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">电话:</td>
								<td><input disabled="true "type="text" name="DH" id="DH" value="${pd.DH}"  placeholder="这里输入电话" title="电话" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法时间:</td>
								<td><input disabled="true "type="text" name="WFSJ" id="WFSJ" value="${pd.WFSJ}"  placeholder="这里输入违法时间" title="违法时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法地点:</td>
								<td><input disabled="true "type="text" name="WFDD" id="WFDD" value="${pd.WFDD}"  placeholder="这里输入违法地点" title="违法地点" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">路段号码:</td>
								<td><input disabled="true "type="text" name="LDDM" id="LDDM" value="${pd.LDDM}"  placeholder="这里输入路段号码" title="路段号码" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">地点米数:</td>
								<td><input disabled="true "type="text" name="DDMS" id="DDMS" value="${pd.DDMS}"  placeholder="这里输入地点米数" title="地点米数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法地址:</td>
								<td><input disabled="true "type="text" name="WFDZ" id="WFDZ" value="${pd.WFDZ}"  placeholder="这里输入违法地址" title="违法地址" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法行为:</td>
								<td><input disabled="true "type="text" name="WFXW" id="WFXW" value="${pd.WFXW}"  placeholder="这里输入违法行为" title="违法行为" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">实测值:</td>
								<td><input disabled="true "type="text" name="SCZ" id="SCZ" value="${pd.SCZ}"  placeholder="这里输入实测值" title="实测值" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">标准值:</td>
								<td><input disabled="true "type="text" name="BZZ" id="BZZ" value="${pd.BZZ}"  placeholder="这里输入标准值" title="标准值" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">执勤民警:</td>
								<td><input disabled="true "type="text" name="ZQMJ" id="ZQMJ" value="${pd.ZQMJ}"  placeholder="这里输入执勤民警" title="执勤民警" style="width:98%;"/></td>
							</tr>
							<tr id="pic">
								<td style="width:75px;text-align: right;padding-top: 13px;">照片:</td>
								<td border="2">
								<img name="ZPSTR1" id="ZPSTR1" src="${pd.ZPSTR1}"  style="cursor:pointer;" onclick="bigger(1)" border="2" height="100px" width="100px"/>
								
								<img  name="ZPSTR2" id="ZPSTR2" src="${pd.ZPSTR2}"  style="cursor:pointer;" onclick="bigger(2)"border="2" height="100px" width="100px"/>
								
								<img  name="ZPSTR3" id="ZPSTR3" src="${pd.ZPSTR3}"  style="cursor:pointer;"  onclick="bigger(3)"border="2"height="100px" width="100px"/>
								</td>
							</tr>
							<tr id="showPic" style="display:none;">
								<td style="width:75px;text-align: right;padding-top: 13px;">照片展示:</td>
								<td><img src="" id="showP" width="300px" height="300px"></td>
							</tr>
 							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核状态:</td>
								<td>
								 	<select class="chosen-select form-control" name="SHZT" id="SHZT"  style="vertical-align:top;width:98%;">
										 
										<c:if test="${pd.SHZT==null||pd.SHZT==0}">
											<option value="0" selected>未审核</option>
											<option  value="1">审核已通过</option>
											<option value="2">审核未通过</option>
										</c:if>
										<c:if  test="${pd.SHZT!=null}">
											<c:if test="${pd.SHZT==1}">
												<option value="${pd.SHZT}">审核已通过</option>
											</c:if>
											<c:if test="${pd.SHZT==2}">
												<option value="${pd.SHZT}">审核未通过</option>
											</c:if>
										</c:if>
								  	</select>
								</td>
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
			/*  if($("#XH").val()==""){
				$("#XH").tips({
					side:3,
		            msg:'请输入备注1',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XH").focus();
			return false;
			} */
			
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
	
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});


	function bigger(id){
		var img1=document.getElementById("ZPSTR1");
		var img2=document.getElementById("ZPSTR2");
		var img3=document.getElementById("ZPSTR3");
		$('#showPic').show();
		if(id==1){
			$("#showP").attr('src','${pd.ZPSTR1}'); 
		}else if(id==2){
			$("#showP").attr('src','${pd.ZPSTR2}');
		}else if(id==3){
			$("#showP").attr('src','${pd.ZPSTR3}');
		}
	}
		</script>
		
</body>
</html>