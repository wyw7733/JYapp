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
					
					<form action="violation/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="VIOLATION_ID" id="VIOLATION_ID" value="${pd.XH}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">编号:</td>
								<td><input type="text" name="XH" id="XH" value="${pd.XH}" maxlength="16" placeholder="这里输入备注1" title="备注1" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">上传时间:</td>
								<td><input type="text" name="SCSJ" id="SCSJ" value="${pd.SCSJ}" maxlength="12" placeholder="这里输入备注2" title="备注2" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法地点:</td>
								<td><input type="text" name="WFDD" id="WFDD" value="${pd.WFDD}" maxlength="1" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法车牌:</td>
								<td><input type="text" name="HPHM" id="HPHM" value="${pd.HPHM}" maxlength="2" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">上报人微信openId:</td>
								<td><input type="text" name="H" id="H" value="微信" maxlength="15" placeholder="这里输入备注5" title="备注5" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">手机号码:</td>
								<td><input type="text" name="LXFS" id="LXFS" value="${pd.LXFS}" maxlength="128" placeholder="这里输入备注6" title="备注6" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法行为:</td>
								<td><input type="text" name="WFXW" id="WFXW" value="${pd.WFXW}" maxlength="1" placeholder="这里输入备注7" title="备注7" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">归属地:</td>
								<td><input type="text" name="FZJG" id="FZJG" value="${pd.FZJG}" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">是否民警:</td>
								<td><input type="text" name="FD" id="FD" value="是否民警" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">处理时间:</td>
								<td><input type="text" name="CLSJ" id="CLSJ" value="处理时间" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核状态:</td>
								<td><input type="text" name="SHZT" id="SHZT" value="${pd.SHZT}" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						<div>
						</div>
							<div class="controls" style="height: 120px;text-align: center;">
			                    <span>区域：</span>
			                    <select id="gsdh" class="screen" style="width:150px;">
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
						<div>
						
						</div >
							<span><font class="red">*</font>说明:</span>
                    			<textarea rows="3" cols="2" id="dz" style="width: 300px;"></textarea>
						</div>
						
						<div class="modal-footer">
                			<button type="button" class="btn_delete btn btn-primary" data-dismiss="modal" onclick="zuofei()">审核作废</button>
               				<button type="button" class="btn_delete btn btn-primary" onclick="tongguo()">审核通过</button>
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
			 if($("#SCSJ").val()==""){
				$("#SCSJ").tips({
					side:3,
		            msg:'请输入备注2',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SCSJ").focus();
			return false;
			} 
			if($("#WFDD").val()==""){
				$("#WFDD").tips({
					side:3,
		            msg:'请输入备注3',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFDD").focus();
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
			if($("#LXFS").val()==""){
				$("#LXFS").tips({
					side:3,
		            msg:'请输入备注4',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LXFS").focus();
			return false;
			}
			
			if($("#WFXW").val()==""){
				$("#WFXW").tips({
					side:3,
		            msg:'请输入备注6',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFXW").focus();
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