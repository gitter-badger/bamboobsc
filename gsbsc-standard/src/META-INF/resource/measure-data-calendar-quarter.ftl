<input type="hidden" name="BSC_PROG002D0005Q_dataFor" id="BSC_PROG002D0005Q_dataFor" value="${dataFor}" />
<input type="hidden" name="BSC_PROG002D0005Q_frequency" id="BSC_PROG002D0005Q_frequency" value="${frequency}" />
<input type="hidden" name="BSC_PROG002D0005Q_empId" id="BSC_PROG002D0005Q_empId" value="${empId}" />
<input type="hidden" name="BSC_PROG002D0005Q_orgId" id="BSC_PROG002D0005Q_orgId" value="${orgId}" />
<input type="hidden" name="BSC_PROG002D0005Q_queryCalendar" id="BSC_PROG002D0005Q_queryCalendar" value="Y" />
<table width="100%" border="0" cellspacing="1" cellpadding="1" bgcolor="#232323">		
	<tr>
		<td colspan="4" bgcolor="#3796FF" align="center">
			<b><font color="#FFFFFF" size="+1">${kpi.name}</font></b>
		</td>
	</tr>	
	<tr>
		<td colspan="4" bgcolor="#3796FF" align="center">
			<font color="#FFFFFF" size="2"><b>${management}:</b>${managementName}, <b>${calculation}:</b>${calculationName}, <b>${unit}:</b>${kpi.unit}, <b>${target}:${kpi.target}, <b>${min}:</b>${kpi.min}</font>
		</td>
	</tr>				
	<tr>
		<td colspan="4" bgcolor="#3796FF" align="center">
			<font color="#FFFFFF" size="2"><b>${formulaName}:</b>${formula.name}</font>
		</td>
	</tr>		
	<tr>
		<td colspan="4" bgcolor="#3796FF" align="center">
			<img src="./images/go-previous.png" alt="prev" border="0" onclick="BSC_PROG002D0005Q_prevCalendar();" />
			&nbsp;
			<b><font color="#FFFFFF" size="+3">${yyyy}</font></b>
			&nbsp;
			<img src="./images/go-next.png" alt="next" border="0" onclick="BSC_PROG002D0005Q_nextCalendar();" />
		</td>
	</tr>	
	<tr>
		<td bgcolor="#3796FF" width="14%"><div align="center"><b><font color="#FFFFFF" size="+1">First quarter</font></b></div></td>
		<td bgcolor="#3796FF" width="14%"><div align="center"><b><font color="#FFFFFF" size="+1">Second quarter</font></b></div></td>
		<td bgcolor="#3796FF" width="14%"><div align="center"><b><font color="#FFFFFF" size="+1">The third quarter</font></b></div></td>
		<td bgcolor="#3796FF" width="14%"><div align="center"><b><font color="#FFFFFF" size="+1">Fourth quarter</font></b></div></td>
	</tr>	
	
	<tr>
		<td bgcolor="#CDD7E2" align="center">
				
			<#assign targetValue = "" >
			<#assign actualValue = "" >
			<#list masureDatas as masure >
				<#if masure.date == yyyy+"0101" >
					<#assign targetValue = masure.target >
					<#assign actualValue = masure.actual >					
				</#if>
			</#list>				
															
			<table border="0" width="85px">
				<tr>
					<td width="15px" align="center">
						T:
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_TARGET:${yyyy}0101" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${targetValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />							
					</td>														
				</tr>
				<tr>
					<td width="15px" align="center">
						A:	
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_ACTUAL:${yyyy}0101" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${actualValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />								
					</td>														
				</tr>						
			</table> 	
			    	
		</td>	
		<td bgcolor="#CDD7E2" align="center">
				
			<#assign targetValue = "" >
			<#assign actualValue = "" >
			<#list masureDatas as masure >
				<#if masure.date == yyyy+"0401" >
					<#assign targetValue = masure.target >
					<#assign actualValue = masure.actual >					
				</#if>
			</#list>
											
			<table border="0" width="85px">
				<tr>
					<td width="15px" align="center">
						T:
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_TARGET:${yyyy}0401" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${targetValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />							
					</td>														
				</tr>
				<tr>
					<td width="15px" align="center">
						A:	
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_ACTUAL:${yyyy}0401" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${actualValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />								
					</td>														
				</tr>						
			</table> 	
			    	
		</td>	
		<td bgcolor="#CDD7E2" align="center">
				
			<#assign targetValue = "" >
			<#assign actualValue = "" >
			<#list masureDatas as masure >
				<#if masure.date == yyyy+"0701" >
					<#assign targetValue = masure.target >
					<#assign actualValue = masure.actual >					
				</#if>
			</#list>
											
			<table border="0" width="85px">
				<tr>
					<td width="15px" align="center">
						T:
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_TARGET:${yyyy}0701" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${targetValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />							
					</td>														
				</tr>
				<tr>
					<td width="15px" align="center">
						A:	
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_ACTUAL:${yyyy}0701" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${actualValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />								
					</td>														
				</tr>						
			</table> 	
			    	
		</td>	
		<td bgcolor="#CDD7E2" align="center">
				
			<#assign targetValue = "" >
			<#assign actualValue = "" >
			<#list masureDatas as masure >
				<#if masure.date == yyyy+"1001" >
					<#assign targetValue = masure.target >
					<#assign actualValue = masure.actual >					
				</#if>
			</#list>
											
			<table border="0" width="85px">
				<tr>
					<td width="15px" align="center">
						T:
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_TARGET:${yyyy}1001" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${targetValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />							
					</td>														
				</tr>
				<tr>
					<td width="15px" align="center">
						A:	
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_ACTUAL:${yyyy}1001" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${actualValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-999999999.00,max:999999999.00},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="9" />								
					</td>														
				</tr>						
			</table> 	
			    	
		</td>							
	</tr>		
	
	<tr>
		<td bgcolor="#FFFFFF" colspan="4"><b><font color="#333333">T (${targetValueName}) , A (${actualValueName})</font></b></td>
	</tr>		
</table>	