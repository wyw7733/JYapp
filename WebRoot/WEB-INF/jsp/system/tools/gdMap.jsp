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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
<style>
        .marker {
            color: #ff6600;
            padding: 4px 10px;
            border: 1px solid #fff;
            white-space: nowrap;
            font-size: 12px;
            font-family: "";
            background-color: #0066ff;
        }
</style>

<base href="<%=basePath%>">

<!-- jsp文件头和头部 -->
<%@ include file="../index/top.jsp"%>
</head>
<body class="no-skin">
	<!-- Map start -->
	<div id="container"></div>
	<div id="myPageTop">
	    <table>
	        <tr>
	            <td>
	                <label>按关键字搜索：</label>
	            </td>
	            <td class="column2">
	                <label>左击获取经纬度：</label>
	            </td>
	        </tr>
	        <tr>
	            <td>
	                <input type="text" placeholder="请输入关键字进行搜索" id="tipinput">
	            </td>
	            <td class="column2">
	               	 经度:<input type="text" readonly="true" id="lng">
					纬度:<input type="text" readonly="true" id="lat">
	            </td>
	        </tr>
	    </table>
		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- Map end -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../index/foot.jsp"%>
	<!-- Map imports scripts -->
	<script type="text/javascript"
            src="http://webapi.amap.com/maps?v=1.3&key=661eeed2abe634300e2657c7f41eba45&plugin=AMap.Autocomplete"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
	
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<script type="text/javascript">
		$(top.hangge());
		
		//Map scripts
		var lng, lat; //经度，纬度

		var marker, map = new AMap.Map("container", {
	        resizeEnable: true,
	        center: [108.947087, 34.259369],
	        zoom: 15
	    });

	    //为地图注册click事件获取鼠标点击出的经纬度坐标
	    var clickEventListener = map.on('click', function(e) {
			clearMarker();

	        document.getElementById("lng").value = e.lnglat.getLng();
			document.getElementById("lat").value = e.lnglat.getLat();
			
			addMarker(e.lnglat.getLng(), e.lnglat.getLat());

	    });

	    var auto = new AMap.Autocomplete({
	        input: "tipinput"
	    });

	    AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发

	    function select(e) {
			clearMarker();
	        if (e.poi && e.poi.location) {
	            map.setZoom(15);
	            map.setCenter(e.poi.location);
				addMarker(e.poi.location.lng, e.poi.location.lat);

				document.getElementById("lng").value = e.poi.location.lng;
				document.getElementById("lat").value = e.poi.location.lat;
	        }
	    }	
		
		 //实例化点标记
		 function addMarker(lng, lat) {
			marker = new AMap.Marker({
				icon: "http://webapi.amap.com/theme/v1.3/markers/n/mark_r.png",
				position: [lng, lat]
			});
			marker.setMap(map);
		}
		
		//清除点标记
		function clearMarker() {
	        if (marker) {
	            marker.setMap(null);
	            marker = null;
	        }
		}
	</script>

</body>
</html> 