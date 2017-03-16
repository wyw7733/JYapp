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
						<form action="violation/list.do" method="post" name="Form" id="Form">
						<table style="margin-top:5px;">
							<tr>
								<%-- <td>
									<div class="nav-search">
										<span class="input-icon">
											<input type="text" placeholder="这里输入关键词" class="nav-search-input" id="nav-search-input" autocomplete="off" name="keywords" value="${pd.keywords }" placeholder="这里输入关键词"/>
											<i class="ace-icon fa fa-search nav-search-icon"></i>
										</span>
									</div>
								</td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastStart" id="lastStart"  value="" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始日期" title="开始日期"/></td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastEnd" name="lastEnd"  value="" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束日期" title="结束日期"/></td> --%>
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="name" id="id" data-placeholder="请选择" style="vertical-align:top;width: 120px;">
									<option value="">请选择统计条件</option>
									<option value="1">未审核</option>
									<option value="2">已审核</option>
									<option value="3">作废</option>
								  	</select>
								</td>
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="name" id="id" data-placeholder="请选择" style="vertical-align:top;width: 120px;">
									<option value="">全部归属地</option>
									<option value="1">莲湖区</option>
									<option value="2">新城区</option>
									<option value="3">碑林区</option>
									<option value="4">雁塔区</option>
									<option value="5">高新区</option>
									<option value="6">曲江区</option>
									<option value="7">未央区</option>
									<option value="8">经开区</option>
									<option value="9">灞桥区</option>
									<option value="10">长安区</option>
									<option value="11">高速大队</option>
								  	</select>
								</td>
								
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="name" id="id" data-placeholder="请选择" style="vertical-align:top;width: 120px;">
									<option value="">请选择标记条件</option>
									<option value="1">经典案例</option>
									<option value="2">曝光素材</option>
									<option value="3">其他</option>
									<option value="4">疑难杂症</option>
									<option value="5">高速</option>
								  	</select>
								</td>
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="name" id="id" data-placeholder="请选择" style="vertical-align:top;width: 120px;">
									<option value="">请选择是否录入违法</option>
									<option value="1">否</option>
									<option value="2">是</option>
								  	</select>
								</td>
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="name" id="id" data-placeholder="请选择" style="vertical-align:top;width: 140px;">
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
								  	</select>
								</td>
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="name" id="id" data-placeholder="请选择" style="vertical-align:top;width: 100px;">
									<option value="">是否民警上传</option>
									<option value="1">是</option>
									<option value="2">否</option>
								  	</select>
								</td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastStart" id="lastStart"  value="" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始日期" title="开始日期"/></td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastEnd" name="lastEnd"  value="" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束日期" title="结束日期"/></td>
								
								<%-- <c:if test="${QX.cha == 1 }">
								<td style="vertical-align:top;padding-left:2px"><a class="btn btn-light btn-xs" onclick="tosearch();"  title="检索"><i id="nav-search-icon" class="ace-icon fa fa-search bigger-110 nav-search-icon blue"></i></a></td>
								</c:if>
								<c:if test="${QX.toExcel == 1 }"><td style="vertical-align:top;padding-left:2px;"><a class="btn btn-light btn-xs" onclick="toExcel();" title="导出到EXCEL"><i id="nav-search-icon" class="ace-icon fa fa-download bigger-110 nav-search-icon blue"></i></a></td></c:if> --%>
							</tr>
							<tr >
								<td colspan="8" style="vertical-align:left;padding-left:2px;"> 
								 <a id="statistics" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">数据查询</a> 
                   				 <a href="/xapt/wx/take/list" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">清除查询</a> 
                    			 <a id="stathbdown" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">红包奖励下载</a> 
                   				 <a id="statlbdown" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">数据下载</a> 
                   				 <a id="statCount" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">数据统计</a> 
                   				 <a id="newReply" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">最新回复</a> 
                   				 <a id="workStat" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">工作统计</a> 
                   				 <a id="policeStat" style="padding:8px 12px;position:relative;top:2px;" class="btn btn-sm">警员专区</a> 
								<span style="padding:8px 12px;position:relative;top:10px;">共13209起</span> 
								 </td>
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
									<th class="center">编号</th>
									<th class="center">上传时间</th>
									<th class="center">违法地点</th>
									<th class="center">违法车牌</th>
									<th class="center">上报人微信OpenId</th>
									<th class="center">手机号码</th>
									<th class="center">违法行为</th>
									<th class="center">车牌号修改</th>
									<th class="center">归属地</th>
									<th class="center">归属地修改</th>
									<th class="center">是否民警</th>
									<th class="center">详情</th>
									<th class="center">处理时间</th>
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
												<label class="pos-rel"><input type='checkbox' name='ids' value="${var.VIOLATION_ID}" class="ace" /><span class="lbl"></span></label>
											</td>
											<td class='center' style="width: 30px;">${vs.index+1}</td>
											<td class='center'>${var.XH}</td>
											<td class='center'>${var.SCSJ}</td>
											<td class='center'>${var.WFDD}</td>
											<td class='center'>${var.HPHM}</td>
											<td class='center'>微信</td>
											<td class='center'>${var.LXFS}</td>
											<td class='center'>${var.WFXW}</td>
											<td class='center'><!-- 车牌号修改 --> 
												<c:if test="${var.SHZT == 0 }"><!-- 0未审核，1已通过，2未通过 -->
													<a class="btn btn-xs btn-success" title="修改" ><!-- onclick="edit('${var.XH}');" -->
														<i class="ace-icon fa fa-pencil-square-o bigger-120" title="修改">修改</i>
													</a>
												</c:if>
											</td>
											<td class='center'>${var.FZJG}</td>
											<td class='center'><!-- 归属地修改 -->
												<c:if test="${var.SHZT == 0 }"><!-- 0未审核，1已通过，2未通过 -->
													<a class="btn btn-xs btn-success" title="修改" onclick="edit('${var.XH}');">
														<i class="ace-icon fa fa-pencil-square-o bigger-120" title="修改">修改</i>
													</a>
												</c:if>
											</td>
											<td class='center'>是否民警</td>
											<td class='center'>详情</td>
											<td class='center'>处理时间</td>
											<td class="center">
												<c:if test="${QX.edit != 1 && QX.del != 1 }">
												<span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="ace-icon fa fa-lock" title="无权限"></i></span>
												</c:if>
												<div class="hidden-sm hidden-xs btn-group">
													<c:if test="${var.SHZT == 0 }"><!-- 0未审核，1已通过，2未通过 -->
													<a class="btn btn-xs btn-success" title="受理" onclick="edit('${var.XH}');">
														<i class="ace-icon fa fa-pencil-square-o bigger-120" title="受理">受理</i>
														<!-- 受理 -->
													</a>
													</c:if>
													<c:if test="${var.SHZT == 1 }">已审核</c:if>
													<c:if test="${var.SHZT == 2 }">已作废</c:if>
												</div>
												<div class="hidden-md hidden-lg">
													<div class="inline pos-rel">
														<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
														</button>
			
														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<c:if test="${QX.edit == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="edit('${var.VIOLATION_ID}');" class="tooltip-success" data-rel="tooltip" title="修改">
																	<span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
																</a>
															</li>
															</c:if>
															<c:if test="${QX.del == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="del('${var.VIOLATION_ID}');" class="tooltip-error" data-rel="tooltip" title="删除">
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
								<%-- <td style="vertical-align:top;">
									<c:if test="${QX.add == 1 }">
									<a class="btn btn-mini btn-success" onclick="add();">新增</a>
									</c:if>
									<c:if test="${QX.del == 1 }">
									<a class="btn btn-mini btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除" ><i class='ace-icon fa fa-trash-o bigger-120'></i></a>
									</c:if>
								</td> --%>
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
			 diag.URL = '<%=basePath%>violation/goAdd.do';
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
					var url = "<%=basePath%>violation/delete.do?VIOLATION_ID="+Id+"&tm="+new Date().getTime();
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
			 diag.URL = '<%=basePath%>violation/goEdit.do?VIOLATION_ID='+Id;
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
								url: '<%=basePath%>violation/deleteAll.do?tm='+new Date().getTime(),
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
			window.location.href='<%=basePath%>violation/excel.do';
		}
	</script>
</body>
</html>