<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="gs" uri="http://www.gsweb.org/controller/tag" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

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
	
<style type="text/css">

</style>

<script type="text/javascript">

function BSC_PROG001D0008Q_GridFieldStructure() {
	return [
			{ name: "${action.getText('BSC_PROG001D0008Q_grid_01')}", field: "oid", formatter: BSC_PROG001D0008Q_GridButtonClick, width: "15%" },  
			{ name: "${action.getText('BSC_PROG001D0008Q_grid_02')}", field: "aggrId", width: "15%" },
			{ name: "${action.getText('BSC_PROG001D0008Q_grid_03')}", field: "name", width: "30%" },
			{ name: "${action.getText('BSC_PROG001D0008Q_grid_04')}", field: "description", width: "40%" }
		];
}

function BSC_PROG001D0008Q_GridButtonClick(itemOid) {
	var rd="";
	rd += "<img src=\"" + _getSystemIconUrl('PROPERTIES') + "\" border=\"0\" alt=\"edit\" onclick=\"BSC_PROG001D0008Q_edit('" + itemOid + "');\" />";
	rd += "&nbsp;&nbsp;&nbsp;&nbsp;";
	rd += "<img src=\"" + _getSystemIconUrl('REMOVE') + "\" border=\"0\" alt=\"delete\" onclick=\"BSC_PROG001D0008Q_confirmDelete('" + itemOid + "');\" />";
	return rd;	
}

function BSC_PROG001D0008Q_clear() {	
	dijit.byId('BSC_PROG001D0008Q_aggrId').set('value', '');
	dijit.byId('BSC_PROG001D0008Q_name').set('value', '');
	clearQuery_${programId}_grid();
}

function BSC_PROG001D0008Q_edit(oid) {
	BSC_PROG001D0008E_TabShow(oid);
}

function BSC_PROG001D0008Q_confirmDelete(oid) {
	confirmDialog(
			"${programId}_managementDialogId000", 
			_getApplicationProgramNameById('${programId}'), 
			"${action.getText('BSC_PROG001D0008Q_confirmDelete')}", 
			function(success) {
				if (!success) {
					return;
				}	
				xhrSendParameter(
						'${basePath}/bsc.aggregationMethodDeleteAction.action', 
						{ 'fields.oid' : oid }, 
						'json', 
						_gscore_dojo_ajax_timeout,
						_gscore_dojo_ajax_sync, 
						true, 
						function(data) {
							alertDialog(_getApplicationProgramNameById('${programId}'), data.message, function(){}, data.success);
							getQueryGrid_${programId}_grid();
						}, 
						function(error) {
							alert(error);
						}
				);	
			}, 
			(window.event ? window.event : null) 
	);			
}

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

<body class="claro" bgcolor="#EEEEEE" >

	<gs:toolBar
		id="${programId}" 
		cancelEnable="Y" 
		cancelJsMethod="${programId}_TabClose();" 
		createNewEnable="Y"
		createNewJsMethod="BSC_PROG001D0008A_TabShow();"		 
		saveEnabel="N" 
		saveJsMethod=""
		refreshEnable="Y" 		 
		refreshJsMethod="${programId}_TabRefresh();" 		
		></gs:toolBar>
	<jsp:include page="../header.jsp"></jsp:include>	

	<table border="0" width="100%" height="50px" cellpadding="1" cellspacing="0" >		
		<tr>
    		<td height="25px" width="10%"  align="right"><s:property value="getText('BSC_PROG001D0008Q_aggrId')"/>:</td>
    		<td height="25px" width="40%"  align="left">
    			<gs:textBox name="BSC_PROG001D0008Q_aggrId" id="BSC_PROG001D0008Q_aggrId" value="" width="200" maxlength="14"></gs:textBox>
				<div data-dojo-type="dijit/Tooltip" data-dojo-props="connectId:'BSC_PROG001D0008Q_aggrId'">
    				Input Id.
				</div>     			
    		</td>  					
    		<td height="25px" width="10%"  align="right"><s:property value="getText('BSC_PROG001D0008Q_name')"/>:</td>
    		<td height="25px" width="40%"  align="left">
    			<gs:textBox name="BSC_PROG001D0008Q_name" id="BSC_PROG001D0008Q_name" value="" width="200" maxlength="100"></gs:textBox>
				<div data-dojo-type="dijit/Tooltip" data-dojo-props="connectId:'BSC_PROG001D0008Q_name'">
    				Input name.
				</div>        			
    		</td>  					
    	</tr>
    	<tr>
    		<td  height="25px" width="100%"  align="center" colspan="4">
    			<gs:button name="BSC_PROG001D0008Q_query" id="BSC_PROG001D0008Q_query" onClick="getQueryGrid_${programId}_grid();"
    				handleAs="json"
    				sync="N"
    				xhrUrl="${basePath}/bsc.aggregationMethodManagementGridQueryAction.action"
    				parameterType="postData"
    				xhrParameter=" 
    					{ 
    						'searchValue.parameter.aggrId'	: dijit.byId('BSC_PROG001D0008Q_aggrId').get('value'), 
    						'searchValue.parameter.name'	: dijit.byId('BSC_PROG001D0008Q_name').get('value'),
    						'pageOf.size'					: getGridQueryPageOfSize_${programId}_grid(),
    						'pageOf.select'					: getGridQueryPageOfSelect_${programId}_grid(),
    						'pageOf.showRow'				: getGridQueryPageOfShowRow_${programId}_grid()
    					} 
    				"
    				errorFn="clearQuery_${programId}_grid();"
    				loadFn="dataGrid_${programId}_grid(data);" 
    				programId="${programId}"
    				label="${action.getText('BSC_PROG001D0008Q_query')}" 
    				iconClass="dijitIconSearch"></gs:button>
    			<gs:button name="BSC_PROG001D0008Q_clear" id="BSC_PROG001D0008Q_clear" onClick="BSC_PROG001D0008Q_clear();" 
    				label="${action.getText('BSC_PROG001D0008Q_clear')}" 
    				iconClass="dijitIconClear"></gs:button>
    		</td>
    	</tr> 	
	</table>
	
	<gs:grid gridFieldStructure="BSC_PROG001D0008Q_GridFieldStructure()" clearQueryFn="" id="_${programId}_grid" programId="${programId}"></gs:grid>
	
<script type="text/javascript">${programId}_page_message();</script>	
</body>
</html>
	