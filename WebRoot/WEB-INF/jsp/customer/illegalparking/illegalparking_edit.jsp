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
								<td><input type="text" name="WFBH" id="WFBH" value="${pd.WFBH}" maxlength="22" placeholder="这里输入备注1" title="备注1" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注2:</td>
								<td><input type="text" name="JDSLB" id="JDSLB" value="${pd.JDSLB}" maxlength="1" placeholder="这里输入备注2" title="备注2" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注3:</td>
								<td><input type="text" name="JDSBH" id="JDSBH" value="${pd.JDSBH}" maxlength="15" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注4:</td>
								<td><input type="text" name="WSJYW" id="WSJYW" value="${pd.WSJYW}" maxlength="1" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注5:</td>
								<td><input type="text" name="RYFL" id="RYFL" value="${pd.RYFL}" maxlength="1" placeholder="这里输入备注5" title="备注5" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注6:</td>
								<td><input type="text" name="JSZH" id="JSZH" value="${pd.JSZH}" maxlength="18" placeholder="这里输入备注6" title="备注6" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注7:</td>
								<td><input type="text" name="DABH" id="DABH" value="${pd.DABH}" maxlength="12" placeholder="这里输入备注7" title="备注7" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注8:</td>
								<td><input type="text" name="FZJG" id="FZJG" value="${pd.FZJG}" maxlength="10" placeholder="这里输入备注8" title="备注8" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注9:</td>
								<td><input type="text" name="ZJCX" id="ZJCX" value="${pd.ZJCX}" maxlength="10" placeholder="这里输入备注9" title="备注9" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注10:</td>
								<td><input type="text" name="DSR" id="DSR" value="${pd.DSR}" maxlength="30" placeholder="这里输入备注10" title="备注10" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注11:</td>
								<td><input type="text" name="ZSXZQH" id="ZSXZQH" value="${pd.ZSXZQH}" maxlength="10" placeholder="这里输入备注11" title="备注11" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注12:</td>
								<td><input type="text" name="ZSXXDZ" id="ZSXXDZ" value="${pd.ZSXXDZ}" maxlength="128" placeholder="这里输入备注12" title="备注12" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注13:</td>
								<td><input type="text" name="DH" id="DH" value="${pd.DH}" maxlength="50" placeholder="这里输入备注13" title="备注13" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注14:</td>
								<td><input type="text" name="LXFS" id="LXFS" value="${pd.LXFS}" maxlength="128" placeholder="这里输入备注14" title="备注14" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注15:</td>
								<td><input type="text" name="CLFL" id="CLFL" value="${pd.CLFL}" maxlength="1" placeholder="这里输入备注15" title="备注15" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注16:</td>
								<td><input type="text" name="HPZL" id="HPZL" value="${pd.HPZL}" maxlength="2" placeholder="这里输入备注16" title="备注16" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注17:</td>
								<td><input type="text" name="HPHM" id="HPHM" value="${pd.HPHM}" maxlength="15" placeholder="这里输入备注17" title="备注17" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注18:</td>
								<td><input type="text" name="JDCSYR" id="JDCSYR" value="${pd.JDCSYR}" maxlength="128" placeholder="这里输入备注18" title="备注18" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注19:</td>
								<td><input type="text" name="SYXZ" id="SYXZ" value="${pd.SYXZ}" maxlength="1" placeholder="这里输入备注19" title="备注19" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注20:</td>
								<td><input type="text" name="JTFS" id="JTFS" value="${pd.JTFS}" maxlength="3" placeholder="这里输入备注20" title="备注20" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注21:</td>
								<td><input class="span10 date-picker" name="WFSJ" id="WFSJ" value="${pd.WFSJ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注21" title="备注21" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注22:</td>
								<td><input type="text" name="XZQH" id="XZQH" value="${pd.XZQH}" maxlength="6" placeholder="这里输入备注22" title="备注22" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注23:</td>
								<td><input type="text" name="DLLX" id="DLLX" value="${pd.DLLX}" maxlength="2" placeholder="这里输入备注23" title="备注23" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注24:</td>
								<td><input type="text" name="GLXZDJ" id="GLXZDJ" value="${pd.GLXZDJ}" maxlength="1" placeholder="这里输入备注24" title="备注24" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注25:</td>
								<td><input type="text" name="WFDD" id="WFDD" value="${pd.WFDD}" maxlength="5" placeholder="这里输入备注25" title="备注25" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注26:</td>
								<td><input type="text" name="LDDM" id="LDDM" value="${pd.LDDM}" maxlength="4" placeholder="这里输入备注26" title="备注26" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注27:</td>
								<td><input type="text" name="DDMS" id="DDMS" value="${pd.DDMS}" maxlength="3" placeholder="这里输入备注27" title="备注27" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注28:</td>
								<td><input type="text" name="DDJDWZ" id="DDJDWZ" value="${pd.DDJDWZ}" maxlength="10" placeholder="这里输入备注28" title="备注28" style="width:98%;"/></td>
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
								<td><input type="text" name="WFJFS" id="WFJFS" value="${pd.WFJFS}" maxlength="22" placeholder="这里输入备注31" title="备注31" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注32:</td>
								<td><input type="text" name="FKJE" id="FKJE" value="${pd.FKJE}" maxlength="22" placeholder="这里输入备注32" title="备注32" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注33:</td>
								<td><input type="text" name="SCZ" id="SCZ" value="${pd.SCZ}" maxlength="22" placeholder="这里输入备注33" title="备注33" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注34:</td>
								<td><input type="text" name="BZZ" id="BZZ" value="${pd.BZZ}" maxlength="22" placeholder="这里输入备注34" title="备注34" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注35:</td>
								<td><input type="text" name="ZNJ" id="ZNJ" value="${pd.ZNJ}" maxlength="22" placeholder="这里输入备注35" title="备注35" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注36:</td>
								<td><input type="text" name="ZQMJ" id="ZQMJ" value="${pd.ZQMJ}" maxlength="30" placeholder="这里输入备注36" title="备注36" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注37:</td>
								<td><input type="text" name="JKFS" id="JKFS" value="${pd.JKFS}" maxlength="1" placeholder="这里输入备注37" title="备注37" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注38:</td>
								<td><input type="text" name="FXJG" id="FXJG" value="${pd.FXJG}" maxlength="12" placeholder="这里输入备注38" title="备注38" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注39:</td>
								<td><input type="text" name="FXJGMC" id="FXJGMC" value="${pd.FXJGMC}" maxlength="128" placeholder="这里输入备注39" title="备注39" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注40:</td>
								<td><input type="text" name="CLJG" id="CLJG" value="${pd.CLJG}" maxlength="12" placeholder="这里输入备注40" title="备注40" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注41:</td>
								<td><input type="text" name="CLJGMC" id="CLJGMC" value="${pd.CLJGMC}" maxlength="128" placeholder="这里输入备注41" title="备注41" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注42:</td>
								<td><input type="text" name="CFZL" id="CFZL" value="${pd.CFZL}" maxlength="10" placeholder="这里输入备注42" title="备注42" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注43:</td>
								<td><input class="span10 date-picker" name="CLSJ" id="CLSJ" value="${pd.CLSJ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注43" title="备注43" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注44:</td>
								<td><input type="text" name="JKBJ" id="JKBJ" value="${pd.JKBJ}" maxlength="1" placeholder="这里输入备注44" title="备注44" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注45:</td>
								<td><input class="span10 date-picker" name="JKRQ" id="JKRQ" value="${pd.JKRQ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注45" title="备注45" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注46:</td>
								<td><input type="text" name="PZBH" id="PZBH" value="${pd.PZBH}" maxlength="15" placeholder="这里输入备注46" title="备注46" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注47:</td>
								<td><input type="text" name="JSJQBJ" id="JSJQBJ" value="${pd.JSJQBJ}" maxlength="2" placeholder="这里输入备注47" title="备注47" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注48:</td>
								<td><input type="text" name="JLLX" id="JLLX" value="${pd.JLLX}" maxlength="1" placeholder="这里输入备注48" title="备注48" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注49:</td>
								<td><input type="text" name="LRR" id="LRR" value="${pd.LRR}" maxlength="30" placeholder="这里输入备注49" title="备注49" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注50:</td>
								<td><input class="span10 date-picker" name="LRSJ" id="LRSJ" value="${pd.LRSJ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注50" title="备注50" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注51:</td>
								<td><input type="text" name="JBR1" id="JBR1" value="${pd.JBR1}" maxlength="30" placeholder="这里输入备注51" title="备注51" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注52:</td>
								<td><input type="text" name="JBR2" id="JBR2" value="${pd.JBR2}" maxlength="30" placeholder="这里输入备注52" title="备注52" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注53:</td>
								<td><input type="text" name="SGDJ" id="SGDJ" value="${pd.SGDJ}" maxlength="1" placeholder="这里输入备注53" title="备注53" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注54:</td>
								<td><input type="text" name="CLDXBJ" id="CLDXBJ" value="${pd.CLDXBJ}" maxlength="1" placeholder="这里输入备注54" title="备注54" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注55:</td>
								<td><input type="text" name="JDCCLDXBJ" id="JDCCLDXBJ" value="${pd.JDCCLDXBJ}" maxlength="1" placeholder="这里输入备注55" title="备注55" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注56:</td>
								<td><input type="text" name="ZDJLBJ" id="ZDJLBJ" value="${pd.ZDJLBJ}" maxlength="1" placeholder="这里输入备注56" title="备注56" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注57:</td>
								<td><input type="text" name="XXLY" id="XXLY" value="${pd.XXLY}" maxlength="1" placeholder="这里输入备注57" title="备注57" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注58:</td>
								<td><input type="text" name="XRMS" id="XRMS" value="${pd.XRMS}" maxlength="1" placeholder="这里输入备注58" title="备注58" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注59:</td>
								<td><input type="text" name="DKBJ" id="DKBJ" value="${pd.DKBJ}" maxlength="1" placeholder="这里输入备注59" title="备注59" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注60:</td>
								<td><input type="text" name="JMZNJBJ" id="JMZNJBJ" value="${pd.JMZNJBJ}" maxlength="1" placeholder="这里输入备注60" title="备注60" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注61:</td>
								<td><input type="text" name="ZDBJ" id="ZDBJ" value="${pd.ZDBJ}" maxlength="1" placeholder="这里输入备注61" title="备注61" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注62:</td>
								<td><input type="text" name="JSJG" id="JSJG" value="${pd.JSJG}" maxlength="10" placeholder="这里输入备注62" title="备注62" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注63:</td>
								<td><input type="text" name="FSJG" id="FSJG" value="${pd.FSJG}" maxlength="10" placeholder="这里输入备注63" title="备注63" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注64:</td>
								<td><input class="span10 date-picker" name="GXSJ" id="GXSJ" value="${pd.GXSJ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注64" title="备注64" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注65:</td>
								<td><input type="text" name="BZ" id="BZ" value="${pd.BZ}" maxlength="256" placeholder="这里输入备注65" title="备注65" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注66:</td>
								<td><input type="text" name="YWJYW" id="YWJYW" value="${pd.YWJYW}" maxlength="256" placeholder="这里输入备注66" title="备注66" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注67:</td>
								<td><input type="text" name="ZJMC" id="ZJMC" value="${pd.ZJMC}" maxlength="1" placeholder="这里输入备注67" title="备注67" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注68:</td>
								<td><input type="text" name="CCLZRQ" id="CCLZRQ" value="${pd.CCLZRQ}" maxlength="30" placeholder="这里输入备注68" title="备注68" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注69:</td>
								<td><input type="text" name="NL" id="NL" value="${pd.NL}" maxlength="3" placeholder="这里输入备注69" title="备注69" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注70:</td>
								<td><input type="text" name="XB" id="XB" value="${pd.XB}" maxlength="1" placeholder="这里输入备注70" title="备注70" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注71:</td>
								<td><input type="text" name="HCBJ" id="HCBJ" value="${pd.HCBJ}" maxlength="1" placeholder="这里输入备注71" title="备注71" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注72:</td>
								<td><input type="text" name="JD" id="JD" value="${pd.JD}" maxlength="10" placeholder="这里输入备注72" title="备注72" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注73:</td>
								<td><input type="text" name="WD" id="WD" value="${pd.WD}" maxlength="10" placeholder="这里输入备注73" title="备注73" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注74:</td>
								<td><input type="text" name="YLZZ1" id="YLZZ1" value="${pd.YLZZ1}" maxlength="255" placeholder="这里输入备注74" title="备注74" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注75:</td>
								<td><input type="text" name="YLZZ2" id="YLZZ2" value="${pd.YLZZ2}" maxlength="255" placeholder="这里输入备注75" title="备注75" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注76:</td>
								<td><input type="text" name="YLZZ3" id="YLZZ3" value="${pd.YLZZ3}" maxlength="255" placeholder="这里输入备注76" title="备注76" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注77:</td>
								<td><input type="text" name="YLZZ4" id="YLZZ4" value="${pd.YLZZ4}" maxlength="2048" placeholder="这里输入备注77" title="备注77" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注78:</td>
								<td><input type="text" name="YLZZ5" id="YLZZ5" value="${pd.YLZZ5}" maxlength="255" placeholder="这里输入备注78" title="备注78" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注79:</td>
								<td><input type="text" name="YLZZ6" id="YLZZ6" value="${pd.YLZZ6}" maxlength="255" placeholder="这里输入备注79" title="备注79" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注80:</td>
								<td><input type="text" name="YLZZ7" id="YLZZ7" value="${pd.YLZZ7}" maxlength="255" placeholder="这里输入备注80" title="备注80" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注81:</td>
								<td><input type="text" name="YLZZ8" id="YLZZ8" value="${pd.YLZZ8}" maxlength="255" placeholder="这里输入备注81" title="备注81" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注82:</td>
								<td><input type="text" name="CJFS" id="CJFS" value="${pd.CJFS}" maxlength="2" placeholder="这里输入备注82" title="备注82" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注83:</td>
								<td><input class="span10 date-picker" name="WFSJ1" id="WFSJ1" value="${pd.WFSJ1}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注83" title="备注83" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注84:</td>
								<td><input type="text" name="WFDD1" id="WFDD1" value="${pd.WFDD1}" maxlength="5" placeholder="这里输入备注84" title="备注84" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注85:</td>
								<td><input type="text" name="LDDM1" id="LDDM1" value="${pd.LDDM1}" maxlength="4" placeholder="这里输入备注85" title="备注85" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注86:</td>
								<td><input type="text" name="DDMS1" id="DDMS1" value="${pd.DDMS1}" maxlength="3" placeholder="这里输入备注86" title="备注86" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注87:</td>
								<td><input type="text" name="JSRXZ" id="JSRXZ" value="${pd.JSRXZ}" maxlength="2" placeholder="这里输入备注87" title="备注87" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注88:</td>
								<td><input type="text" name="CLYT" id="CLYT" value="${pd.CLYT}" maxlength="2" placeholder="这里输入备注88" title="备注88" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注89:</td>
								<td><input type="text" name="XCFW" id="XCFW" value="${pd.XCFW}" maxlength="1" placeholder="这里输入备注89" title="备注89" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注90:</td>
								<td><input type="text" name="DZZB" id="DZZB" value="${pd.DZZB}" maxlength="2048" placeholder="这里输入备注90" title="备注90" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注91:</td>
								<td><input type="text" name="SFZDRY" id="SFZDRY" value="${pd.SFZDRY}" maxlength="1" placeholder="这里输入备注91" title="备注91" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注92:</td>
								<td><input type="text" name="XYSFZMHM" id="XYSFZMHM" value="${pd.XYSFZMHM}" maxlength="18" placeholder="这里输入备注92" title="备注92" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注93:</td>
								<td><input type="text" name="XYXM" id="XYXM" value="${pd.XYXM}" maxlength="64" placeholder="这里输入备注93" title="备注93" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注94:</td>
								<td><input type="text" name="YLZZ11" id="YLZZ11" value="${pd.YLZZ11}" maxlength="1024" placeholder="这里输入备注94" title="备注94" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注95:</td>
								<td><input type="text" name="YLZZ12" id="YLZZ12" value="${pd.YLZZ12}" maxlength="1024" placeholder="这里输入备注95" title="备注95" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注96:</td>
								<td><input type="text" name="YLZZ13" id="YLZZ13" value="${pd.YLZZ13}" maxlength="1024" placeholder="这里输入备注96" title="备注96" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注97:</td>
								<td><input type="text" name="YLZZ14" id="YLZZ14" value="${pd.YLZZ14}" maxlength="1024" placeholder="这里输入备注97" title="备注97" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注98:</td>
								<td><input type="text" name="YLZZ15" id="YLZZ15" value="${pd.YLZZ15}" maxlength="1024" placeholder="这里输入备注98" title="备注98" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注99:</td>
								<td><input type="text" name="YLZZ16" id="YLZZ16" value="${pd.YLZZ16}" maxlength="1024" placeholder="这里输入备注99" title="备注99" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注100:</td>
								<td><input type="text" name="YLZZ17" id="YLZZ17" value="${pd.YLZZ17}" maxlength="1024" placeholder="这里输入备注100" title="备注100" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注101:</td>
								<td><input type="text" name="YLZZ18" id="YLZZ18" value="${pd.YLZZ18}" maxlength="1024" placeholder="这里输入备注101" title="备注101" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注102:</td>
								<td><input type="text" name="XH" id="XH" value="${pd.XH}" maxlength="16" placeholder="这里输入备注102" title="备注102" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注103:</td>
								<td><input type="text" name="CJJG" id="CJJG" value="${pd.CJJG}" maxlength="12" placeholder="这里输入备注103" title="备注103" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注104:</td>
								<td><input type="text" name="FDJH" id="FDJH" value="${pd.FDJH}" maxlength="10" placeholder="这里输入备注104" title="备注104" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注105:</td>
								<td><input type="text" name="CLSBDH" id="CLSBDH" value="${pd.CLSBDH}" maxlength="35" placeholder="这里输入备注105" title="备注105" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注106:</td>
								<td><input type="text" name="CSYS" id="CSYS" value="${pd.CSYS}" maxlength="5" placeholder="这里输入备注106" title="备注106" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注107:</td>
								<td><input type="text" name="CLPP" id="CLPP" value="${pd.CLPP}" maxlength="32" placeholder="这里输入备注107" title="备注107" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注108:</td>
								<td><input type="text" name="ZZXZQH" id="ZZXZQH" value="${pd.ZZXZQH}" maxlength="10" placeholder="这里输入备注108" title="备注108" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注109:</td>
								<td><input type="text" name="TZSH" id="TZSH" value="${pd.TZSH}" maxlength="15" placeholder="这里输入备注109" title="备注109" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注110:</td>
								<td><input class="span10 date-picker" name="TZRQ" id="TZRQ" value="${pd.TZRQ}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="备注110" title="备注110" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注111:</td>
								<td><input type="text" name="SPDZ" id="SPDZ" value="${pd.SPDZ}" maxlength="128" placeholder="这里输入备注111" title="备注111" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注112:</td>
								<td><input type="text" name="SBBH" id="SBBH" value="${pd.SBBH}" maxlength="12" placeholder="这里输入备注112" title="备注112" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注113:</td>
								<td><input type="text" name="ZPSTR1" id="ZPSTR1" value="${pd.ZPSTR1}" maxlength="4000" placeholder="这里输入备注113" title="备注113" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注114:</td>
								<td><input type="text" name="ZPSTR2" id="ZPSTR2" value="${pd.ZPSTR2}" maxlength="4000" placeholder="这里输入备注114" title="备注114" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注115:</td>
								<td><input type="text" name="ZPSTR3" id="ZPSTR3" value="${pd.ZPSTR3}" maxlength="4000" placeholder="这里输入备注115" title="备注115" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注116:</td>
								<td><input type="text" name="SHZT" id="SHZT" value="${pd.SHZT}" maxlength="5" placeholder="这里输入备注116" title="备注116" style="width:98%;"/></td>
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
			if($("#WFBH").val()==""){
				$("#WFBH").tips({
					side:3,
		            msg:'请输入备注1',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFBH").focus();
			return false;
			}
			if($("#JDSLB").val()==""){
				$("#JDSLB").tips({
					side:3,
		            msg:'请输入备注2',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDSLB").focus();
			return false;
			}
			if($("#JDSBH").val()==""){
				$("#JDSBH").tips({
					side:3,
		            msg:'请输入备注3',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDSBH").focus();
			return false;
			}
			if($("#WSJYW").val()==""){
				$("#WSJYW").tips({
					side:3,
		            msg:'请输入备注4',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WSJYW").focus();
			return false;
			}
			if($("#RYFL").val()==""){
				$("#RYFL").tips({
					side:3,
		            msg:'请输入备注5',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#RYFL").focus();
			return false;
			}
			if($("#JSZH").val()==""){
				$("#JSZH").tips({
					side:3,
		            msg:'请输入备注6',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JSZH").focus();
			return false;
			}
			if($("#DABH").val()==""){
				$("#DABH").tips({
					side:3,
		            msg:'请输入备注7',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DABH").focus();
			return false;
			}
			if($("#FZJG").val()==""){
				$("#FZJG").tips({
					side:3,
		            msg:'请输入备注8',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FZJG").focus();
			return false;
			}
			if($("#ZJCX").val()==""){
				$("#ZJCX").tips({
					side:3,
		            msg:'请输入备注9',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZJCX").focus();
			return false;
			}
			if($("#DSR").val()==""){
				$("#DSR").tips({
					side:3,
		            msg:'请输入备注10',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DSR").focus();
			return false;
			}
			if($("#ZSXZQH").val()==""){
				$("#ZSXZQH").tips({
					side:3,
		            msg:'请输入备注11',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZSXZQH").focus();
			return false;
			}
			if($("#ZSXXDZ").val()==""){
				$("#ZSXXDZ").tips({
					side:3,
		            msg:'请输入备注12',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZSXXDZ").focus();
			return false;
			}
			if($("#DH").val()==""){
				$("#DH").tips({
					side:3,
		            msg:'请输入备注13',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DH").focus();
			return false;
			}
			if($("#LXFS").val()==""){
				$("#LXFS").tips({
					side:3,
		            msg:'请输入备注14',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LXFS").focus();
			return false;
			}
			if($("#CLFL").val()==""){
				$("#CLFL").tips({
					side:3,
		            msg:'请输入备注15',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLFL").focus();
			return false;
			}
			if($("#HPZL").val()==""){
				$("#HPZL").tips({
					side:3,
		            msg:'请输入备注16',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HPZL").focus();
			return false;
			}
			if($("#HPHM").val()==""){
				$("#HPHM").tips({
					side:3,
		            msg:'请输入备注17',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HPHM").focus();
			return false;
			}
			if($("#JDCSYR").val()==""){
				$("#JDCSYR").tips({
					side:3,
		            msg:'请输入备注18',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDCSYR").focus();
			return false;
			}
			if($("#SYXZ").val()==""){
				$("#SYXZ").tips({
					side:3,
		            msg:'请输入备注19',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SYXZ").focus();
			return false;
			}
			if($("#JTFS").val()==""){
				$("#JTFS").tips({
					side:3,
		            msg:'请输入备注20',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JTFS").focus();
			return false;
			}
			if($("#WFSJ").val()==""){
				$("#WFSJ").tips({
					side:3,
		            msg:'请输入备注21',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFSJ").focus();
			return false;
			}
			if($("#XZQH").val()==""){
				$("#XZQH").tips({
					side:3,
		            msg:'请输入备注22',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XZQH").focus();
			return false;
			}
			if($("#DLLX").val()==""){
				$("#DLLX").tips({
					side:3,
		            msg:'请输入备注23',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DLLX").focus();
			return false;
			}
			if($("#GLXZDJ").val()==""){
				$("#GLXZDJ").tips({
					side:3,
		            msg:'请输入备注24',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#GLXZDJ").focus();
			return false;
			}
			if($("#WFDD").val()==""){
				$("#WFDD").tips({
					side:3,
		            msg:'请输入备注25',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFDD").focus();
			return false;
			}
			if($("#LDDM").val()==""){
				$("#LDDM").tips({
					side:3,
		            msg:'请输入备注26',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LDDM").focus();
			return false;
			}
			if($("#DDMS").val()==""){
				$("#DDMS").tips({
					side:3,
		            msg:'请输入备注27',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DDMS").focus();
			return false;
			}
			if($("#DDJDWZ").val()==""){
				$("#DDJDWZ").tips({
					side:3,
		            msg:'请输入备注28',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DDJDWZ").focus();
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
			if($("#WFJFS").val()==""){
				$("#WFJFS").tips({
					side:3,
		            msg:'请输入备注31',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFJFS").focus();
			return false;
			}
			if($("#FKJE").val()==""){
				$("#FKJE").tips({
					side:3,
		            msg:'请输入备注32',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FKJE").focus();
			return false;
			}
			if($("#SCZ").val()==""){
				$("#SCZ").tips({
					side:3,
		            msg:'请输入备注33',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SCZ").focus();
			return false;
			}
			if($("#BZZ").val()==""){
				$("#BZZ").tips({
					side:3,
		            msg:'请输入备注34',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BZZ").focus();
			return false;
			}
			if($("#ZNJ").val()==""){
				$("#ZNJ").tips({
					side:3,
		            msg:'请输入备注35',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZNJ").focus();
			return false;
			}
			if($("#ZQMJ").val()==""){
				$("#ZQMJ").tips({
					side:3,
		            msg:'请输入备注36',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZQMJ").focus();
			return false;
			}
			if($("#JKFS").val()==""){
				$("#JKFS").tips({
					side:3,
		            msg:'请输入备注37',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JKFS").focus();
			return false;
			}
			if($("#FXJG").val()==""){
				$("#FXJG").tips({
					side:3,
		            msg:'请输入备注38',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FXJG").focus();
			return false;
			}
			if($("#FXJGMC").val()==""){
				$("#FXJGMC").tips({
					side:3,
		            msg:'请输入备注39',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FXJGMC").focus();
			return false;
			}
			if($("#CLJG").val()==""){
				$("#CLJG").tips({
					side:3,
		            msg:'请输入备注40',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLJG").focus();
			return false;
			}
			if($("#CLJGMC").val()==""){
				$("#CLJGMC").tips({
					side:3,
		            msg:'请输入备注41',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLJGMC").focus();
			return false;
			}
			if($("#CFZL").val()==""){
				$("#CFZL").tips({
					side:3,
		            msg:'请输入备注42',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CFZL").focus();
			return false;
			}
			if($("#CLSJ").val()==""){
				$("#CLSJ").tips({
					side:3,
		            msg:'请输入备注43',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLSJ").focus();
			return false;
			}
			if($("#JKBJ").val()==""){
				$("#JKBJ").tips({
					side:3,
		            msg:'请输入备注44',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JKBJ").focus();
			return false;
			}
			if($("#JKRQ").val()==""){
				$("#JKRQ").tips({
					side:3,
		            msg:'请输入备注45',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JKRQ").focus();
			return false;
			}
			if($("#PZBH").val()==""){
				$("#PZBH").tips({
					side:3,
		            msg:'请输入备注46',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PZBH").focus();
			return false;
			}
			if($("#JSJQBJ").val()==""){
				$("#JSJQBJ").tips({
					side:3,
		            msg:'请输入备注47',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JSJQBJ").focus();
			return false;
			}
			if($("#JLLX").val()==""){
				$("#JLLX").tips({
					side:3,
		            msg:'请输入备注48',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JLLX").focus();
			return false;
			}
			if($("#LRR").val()==""){
				$("#LRR").tips({
					side:3,
		            msg:'请输入备注49',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LRR").focus();
			return false;
			}
			if($("#LRSJ").val()==""){
				$("#LRSJ").tips({
					side:3,
		            msg:'请输入备注50',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LRSJ").focus();
			return false;
			}
			if($("#JBR1").val()==""){
				$("#JBR1").tips({
					side:3,
		            msg:'请输入备注51',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JBR1").focus();
			return false;
			}
			if($("#JBR2").val()==""){
				$("#JBR2").tips({
					side:3,
		            msg:'请输入备注52',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JBR2").focus();
			return false;
			}
			if($("#SGDJ").val()==""){
				$("#SGDJ").tips({
					side:3,
		            msg:'请输入备注53',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SGDJ").focus();
			return false;
			}
			if($("#CLDXBJ").val()==""){
				$("#CLDXBJ").tips({
					side:3,
		            msg:'请输入备注54',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLDXBJ").focus();
			return false;
			}
			if($("#JDCCLDXBJ").val()==""){
				$("#JDCCLDXBJ").tips({
					side:3,
		            msg:'请输入备注55',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDCCLDXBJ").focus();
			return false;
			}
			if($("#ZDJLBJ").val()==""){
				$("#ZDJLBJ").tips({
					side:3,
		            msg:'请输入备注56',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZDJLBJ").focus();
			return false;
			}
			if($("#XXLY").val()==""){
				$("#XXLY").tips({
					side:3,
		            msg:'请输入备注57',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XXLY").focus();
			return false;
			}
			if($("#XRMS").val()==""){
				$("#XRMS").tips({
					side:3,
		            msg:'请输入备注58',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XRMS").focus();
			return false;
			}
			if($("#DKBJ").val()==""){
				$("#DKBJ").tips({
					side:3,
		            msg:'请输入备注59',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DKBJ").focus();
			return false;
			}
			if($("#JMZNJBJ").val()==""){
				$("#JMZNJBJ").tips({
					side:3,
		            msg:'请输入备注60',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JMZNJBJ").focus();
			return false;
			}
			if($("#ZDBJ").val()==""){
				$("#ZDBJ").tips({
					side:3,
		            msg:'请输入备注61',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZDBJ").focus();
			return false;
			}
			if($("#JSJG").val()==""){
				$("#JSJG").tips({
					side:3,
		            msg:'请输入备注62',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JSJG").focus();
			return false;
			}
			if($("#FSJG").val()==""){
				$("#FSJG").tips({
					side:3,
		            msg:'请输入备注63',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FSJG").focus();
			return false;
			}
			if($("#GXSJ").val()==""){
				$("#GXSJ").tips({
					side:3,
		            msg:'请输入备注64',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#GXSJ").focus();
			return false;
			}
			if($("#BZ").val()==""){
				$("#BZ").tips({
					side:3,
		            msg:'请输入备注65',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BZ").focus();
			return false;
			}
			if($("#YWJYW").val()==""){
				$("#YWJYW").tips({
					side:3,
		            msg:'请输入备注66',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YWJYW").focus();
			return false;
			}
			if($("#ZJMC").val()==""){
				$("#ZJMC").tips({
					side:3,
		            msg:'请输入备注67',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZJMC").focus();
			return false;
			}
			if($("#CCLZRQ").val()==""){
				$("#CCLZRQ").tips({
					side:3,
		            msg:'请输入备注68',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CCLZRQ").focus();
			return false;
			}
			if($("#NL").val()==""){
				$("#NL").tips({
					side:3,
		            msg:'请输入备注69',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NL").focus();
			return false;
			}
			if($("#XB").val()==""){
				$("#XB").tips({
					side:3,
		            msg:'请输入备注70',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XB").focus();
			return false;
			}
			if($("#HCBJ").val()==""){
				$("#HCBJ").tips({
					side:3,
		            msg:'请输入备注71',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HCBJ").focus();
			return false;
			}
			if($("#JD").val()==""){
				$("#JD").tips({
					side:3,
		            msg:'请输入备注72',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JD").focus();
			return false;
			}
			if($("#WD").val()==""){
				$("#WD").tips({
					side:3,
		            msg:'请输入备注73',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WD").focus();
			return false;
			}
			if($("#YLZZ1").val()==""){
				$("#YLZZ1").tips({
					side:3,
		            msg:'请输入备注74',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ1").focus();
			return false;
			}
			if($("#YLZZ2").val()==""){
				$("#YLZZ2").tips({
					side:3,
		            msg:'请输入备注75',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ2").focus();
			return false;
			}
			if($("#YLZZ3").val()==""){
				$("#YLZZ3").tips({
					side:3,
		            msg:'请输入备注76',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ3").focus();
			return false;
			}
			if($("#YLZZ4").val()==""){
				$("#YLZZ4").tips({
					side:3,
		            msg:'请输入备注77',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ4").focus();
			return false;
			}
			if($("#YLZZ5").val()==""){
				$("#YLZZ5").tips({
					side:3,
		            msg:'请输入备注78',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ5").focus();
			return false;
			}
			if($("#YLZZ6").val()==""){
				$("#YLZZ6").tips({
					side:3,
		            msg:'请输入备注79',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ6").focus();
			return false;
			}
			if($("#YLZZ7").val()==""){
				$("#YLZZ7").tips({
					side:3,
		            msg:'请输入备注80',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ7").focus();
			return false;
			}
			if($("#YLZZ8").val()==""){
				$("#YLZZ8").tips({
					side:3,
		            msg:'请输入备注81',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ8").focus();
			return false;
			}
			if($("#CJFS").val()==""){
				$("#CJFS").tips({
					side:3,
		            msg:'请输入备注82',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CJFS").focus();
			return false;
			}
			if($("#WFSJ1").val()==""){
				$("#WFSJ1").tips({
					side:3,
		            msg:'请输入备注83',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFSJ1").focus();
			return false;
			}
			if($("#WFDD1").val()==""){
				$("#WFDD1").tips({
					side:3,
		            msg:'请输入备注84',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WFDD1").focus();
			return false;
			}
			if($("#LDDM1").val()==""){
				$("#LDDM1").tips({
					side:3,
		            msg:'请输入备注85',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LDDM1").focus();
			return false;
			}
			if($("#DDMS1").val()==""){
				$("#DDMS1").tips({
					side:3,
		            msg:'请输入备注86',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DDMS1").focus();
			return false;
			}
			if($("#JSRXZ").val()==""){
				$("#JSRXZ").tips({
					side:3,
		            msg:'请输入备注87',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JSRXZ").focus();
			return false;
			}
			if($("#CLYT").val()==""){
				$("#CLYT").tips({
					side:3,
		            msg:'请输入备注88',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLYT").focus();
			return false;
			}
			if($("#XCFW").val()==""){
				$("#XCFW").tips({
					side:3,
		            msg:'请输入备注89',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XCFW").focus();
			return false;
			}
			if($("#DZZB").val()==""){
				$("#DZZB").tips({
					side:3,
		            msg:'请输入备注90',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DZZB").focus();
			return false;
			}
			if($("#SFZDRY").val()==""){
				$("#SFZDRY").tips({
					side:3,
		            msg:'请输入备注91',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SFZDRY").focus();
			return false;
			}
			if($("#XYSFZMHM").val()==""){
				$("#XYSFZMHM").tips({
					side:3,
		            msg:'请输入备注92',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XYSFZMHM").focus();
			return false;
			}
			if($("#XYXM").val()==""){
				$("#XYXM").tips({
					side:3,
		            msg:'请输入备注93',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XYXM").focus();
			return false;
			}
			if($("#YLZZ11").val()==""){
				$("#YLZZ11").tips({
					side:3,
		            msg:'请输入备注94',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ11").focus();
			return false;
			}
			if($("#YLZZ12").val()==""){
				$("#YLZZ12").tips({
					side:3,
		            msg:'请输入备注95',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ12").focus();
			return false;
			}
			if($("#YLZZ13").val()==""){
				$("#YLZZ13").tips({
					side:3,
		            msg:'请输入备注96',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ13").focus();
			return false;
			}
			if($("#YLZZ14").val()==""){
				$("#YLZZ14").tips({
					side:3,
		            msg:'请输入备注97',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ14").focus();
			return false;
			}
			if($("#YLZZ15").val()==""){
				$("#YLZZ15").tips({
					side:3,
		            msg:'请输入备注98',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ15").focus();
			return false;
			}
			if($("#YLZZ16").val()==""){
				$("#YLZZ16").tips({
					side:3,
		            msg:'请输入备注99',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ16").focus();
			return false;
			}
			if($("#YLZZ17").val()==""){
				$("#YLZZ17").tips({
					side:3,
		            msg:'请输入备注100',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ17").focus();
			return false;
			}
			if($("#YLZZ18").val()==""){
				$("#YLZZ18").tips({
					side:3,
		            msg:'请输入备注101',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YLZZ18").focus();
			return false;
			}
			if($("#XH").val()==""){
				$("#XH").tips({
					side:3,
		            msg:'请输入备注102',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XH").focus();
			return false;
			}
			if($("#CJJG").val()==""){
				$("#CJJG").tips({
					side:3,
		            msg:'请输入备注103',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CJJG").focus();
			return false;
			}
			if($("#FDJH").val()==""){
				$("#FDJH").tips({
					side:3,
		            msg:'请输入备注104',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FDJH").focus();
			return false;
			}
			if($("#CLSBDH").val()==""){
				$("#CLSBDH").tips({
					side:3,
		            msg:'请输入备注105',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLSBDH").focus();
			return false;
			}
			if($("#CSYS").val()==""){
				$("#CSYS").tips({
					side:3,
		            msg:'请输入备注106',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CSYS").focus();
			return false;
			}
			if($("#CLPP").val()==""){
				$("#CLPP").tips({
					side:3,
		            msg:'请输入备注107',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLPP").focus();
			return false;
			}
			if($("#ZZXZQH").val()==""){
				$("#ZZXZQH").tips({
					side:3,
		            msg:'请输入备注108',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZZXZQH").focus();
			return false;
			}
			if($("#TZSH").val()==""){
				$("#TZSH").tips({
					side:3,
		            msg:'请输入备注109',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TZSH").focus();
			return false;
			}
			if($("#TZRQ").val()==""){
				$("#TZRQ").tips({
					side:3,
		            msg:'请输入备注110',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TZRQ").focus();
			return false;
			}
			if($("#SPDZ").val()==""){
				$("#SPDZ").tips({
					side:3,
		            msg:'请输入备注111',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SPDZ").focus();
			return false;
			}
			if($("#SBBH").val()==""){
				$("#SBBH").tips({
					side:3,
		            msg:'请输入备注112',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SBBH").focus();
			return false;
			}
			if($("#ZPSTR1").val()==""){
				$("#ZPSTR1").tips({
					side:3,
		            msg:'请输入备注113',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZPSTR1").focus();
			return false;
			}
			if($("#ZPSTR2").val()==""){
				$("#ZPSTR2").tips({
					side:3,
		            msg:'请输入备注114',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZPSTR2").focus();
			return false;
			}
			if($("#ZPSTR3").val()==""){
				$("#ZPSTR3").tips({
					side:3,
		            msg:'请输入备注115',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZPSTR3").focus();
			return false;
			}
			if($("#SHZT").val()==""){
				$("#SHZT").tips({
					side:3,
		            msg:'请输入备注116',
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