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
<body class="no-skin" onload="test()">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
			
				<div class="row">
				
					<div id = "3" class="col-xs-12"  style="display:none;">
					<form action="violation/${msg}.do" name="Form" id="Form" method="post">
						<input type="hidden" name="XH" id="XH" value="${pd.XH}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">编号:${num}</td>
								<td><input type="text" disabled="disabled" name="XH" id="XH" value="${pd.XH}" maxlength="16" placeholder="这里输入备注1" title="备注1" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">上传时间:</td>
								<td><input type="text" disabled="disabled" name="SCSJ" id="SCSJ" value="${pd.SCSJ}" maxlength="12" placeholder="这里输入备注2" title="备注2" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法地点:</td>
								<td><input type="text" disabled="disabled" name="WFDD" id="WFDD" value="${pd.WFDD}" maxlength="1" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法车牌:</td>
								<td><input type="text" disabled="disabled"  name="HPHM" id="HPHM" value="${pd.HPHM}" maxlength="2" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">上报人微信openId:</td>
								<td><input type="text" disabled="disabled"  name="H" id="H" value="微信" maxlength="15" placeholder="这里输入备注5" title="备注5" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">手机号码:</td>
								<td><input type="text" disabled="disabled"  name="LXFS" id="LXFS" value="${pd.LXFS}" maxlength="128" placeholder="这里输入备注6" title="备注6" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">违法行为:</td>
								<td><input type="text" disabled="disabled" name="WFXW" id="WFXW" value="${pd.WFXW}" maxlength="1" placeholder="这里输入备注7" title="备注7" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">归属地:</td>
								<td><input type="text" disabled="disabled" name="FZJG" id="FZJG" value="${pd.FZJG}" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">是否民警:</td>
								<td><input type="text" disabled="disabled" name="FD" id="FD" value="是否民警" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">处理时间:</td>
								<td><input type="text" disabled="disabled" name="CLSJ" id="CLSJ" value="处理时间" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核状态:</td>
								<td><input type="text" disabled="disabled" name="SHZT" id="SHZT" value="${pd.SHZT}" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">关闭</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<div id = "2" class="controls" style=" display:none;  height: 120px; text-align: center;">
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
						<div id="4" style="display:none;">
							<span><font class="red">*</font>说明:</span>
                    			<textarea rows="3" cols="2" id="dz" style="width: 300px;"></textarea>
						</div>
						
						<div id="5" style="display:none;">
                			<button type="button" class="btn_delete btn btn-primary" data-dismiss="modal" onclick="zuofei()">审核作废</button>
               				<button type="button" class="btn_delete btn btn-primary" onclick="tongguo()">审核通过</button>
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
		function test() {
			var s =${num};
			if(s==3){
				$("#3").show();
			}else if(s==2){
				$("#2").show();
			}else if(s==4){
				$("#4").show();
				$("#5").show();
			}
		}
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
			
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		function edit1(Id,obj){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.URL = '<%=basePath%>violation/Edit.do?XH='+Id+'&num='+title;
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
				}
				diag.close();
			 };
			 diag.show();
			 
			 
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>