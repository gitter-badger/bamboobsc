<input type="hidden" id="BSC_PROG001D0004Q_queryScoreColor" name="BSC_PROG001D0004Q_queryScoreColor" value="Y" />


<table width="800px" border="0" cellspacing="1" cellpadding="1" bgcolor="#d8d8d8">
	<tr>
		<td width="400px" align="center" bgcolor="#F2F2F2"><b><font color='#000000' size="+1">${scoreRange}</font></b></td>
		<td width="400px" align="center" bgcolor="#F2F2F2"><b><font color='#000000' size="+1">${scoreColor}</font></b></td>
	</tr>

<#assign c=0 >

<#list scoreColors as scoreColor >
	<tr>
		<td width="300px" align="left" bgcolor="#ffffff">${scoreColor.scoreMin} ~ ${scoreColor.scoreMax}</td>
		<td width="500px" align="left" bgcolor="#ffffff">
		
			<table border="0" width="100%" bgcolor="#ffffff">
				<tr>
					<td align="center" width="150px" bgcolor="${scoreColor.bgColor}">
						<font color="${scoreColor.fontColor}">${colorTest}</font>	
					</td>
					<td align="center" width="350px">
					
			<#if ( c + 1 <  scoreColors?size ) >
							
							<button data-dojo-type="dijit/form/Button" 
								data-dojo-props="showLabel: true" 
								type="button"
								onclick="BSC_PROG001D0004Q_edit('${scoreColor.oid}', '${scoreColor.fontColor}', '${scoreColor.bgColor}', '${scoreColor.scoreMax?c}', false);"
								>${btnEdit}</button>
								
			<#else>
					
							<button data-dojo-type="dijit/form/Button" 
								data-dojo-props="showLabel: true" 
								type="button"
								onclick="BSC_PROG001D0004Q_edit('${scoreColor.oid}', '${scoreColor.fontColor}', '${scoreColor.bgColor}', '${scoreColor.scoreMax?c}', true);"
								>${btnEdit}</button>
															
							<button data-dojo-type="dijit/form/Button" 
								data-dojo-props="showLabel: true" 
								type="button"
								onclick="BSC_PROG001D0004Q_delete('${scoreColor.oid}');"
								>${btnDelete}</button>						
							
			</#if>		
								
					</td>
				</tr>
			</table>
			
		</td>
	</tr>
	
	<#assign c = c + 1 >
	
</#list>
		
</table>
