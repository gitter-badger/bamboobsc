<%@page import="com.netsteadfast.greenstep.base.Constants"%>
<%@page import="com.netsteadfast.greenstep.util.ApplicationSiteUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="gs" uri="http://www.gsweb.org/controller/tag" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String mainSysBasePath = ApplicationSiteUtils.getBasePath(Constants.getMainSystem(), request);

%>
<!doctype html>
<html itemscope="itemscope" itemtype="http://schema.org/WebPage">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <base href="<%=basePath%>">
    
    <title>bambooCORE</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="bambooCORE">
	<meta http-equiv="description" content="bambooCORE">
	
	<link rel="stylesheet" href="<%=mainSysBasePath%>/d3/nv.d3.css">
	
	<script type="text/javascript" src="<%=mainSysBasePath%>core.configJsAction.action?ver=${jsVerBuild}"></script>
	
	<script type="text/javascript" src="<%=mainSysBasePath%>/jquery/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="<%=mainSysBasePath%>/d3/d3.js"></script>
	<script type="text/javascript" src="<%=mainSysBasePath%>/d3/nv.d3.js"></script>
	
	<!-- jqPlot -->
	<script type="text/javascript" src="<%=mainSysBasePath%>/jqplot/jquery.jqplot.min.js"></script>	
	<script type="text/javascript" src="<%=mainSysBasePath%>/jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
	<script type="text/javascript" src="<%=mainSysBasePath%>/jqplot/plugins/jqplot.dateAxisRenderer.min.js"></script>	
	<script type="text/javascript" src="<%=mainSysBasePath%>/jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
	<script type="text/javascript" src="<%=mainSysBasePath%>/jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
	<script type="text/javascript" src="<%=mainSysBasePath%>/jqplot/plugins/jqplot.enhancedLegendRenderer.min.js"></script>
		
	<link rel="stylesheet" type="text/css" href="<%=mainSysBasePath%>/jqplot/jquery.jqplot.min.css" />		
	
<style type="text/css">


</style>

<script type="text/javascript">


//------------------------------------------------------------------------------
function ${programId}_page_message() {
	var pageMessage='<s:property value="pageMessage" escapeJavaScript="true"/>';
	if (null!=pageMessage && ''!=pageMessage && ' '!=pageMessage) {
		alert(pageMessage);
	}	
}
//------------------------------------------------------------------------------

</script>

</head>

<body class="claro" bgcolor="#ffffff" >

${content}

<script type="text/javascript">${programId}_page_message();</script>	
</body>
</html>
