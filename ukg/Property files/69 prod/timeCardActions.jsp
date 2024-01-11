<div id="errorDiv" style="display:none;"></div>
<%@ taglib tagdir="/WEB-INF/tags/wpk/kvl" prefix="kvl"%>
<%@ taglib tagdir="/WEB-INF/tags/wpk/url" prefix="url"%>
<%@ taglib uri="/jstl-format" prefix="fmt"%>
<%@ taglib uri="/jstl-core" prefix="c"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<%@ taglib uri="/struts-bean" prefix="bean" %>
<%@ page import="org.apache.struts.taglib.html.Constants" %>
<%@ taglib uri="/struts-tiles" prefix="tiles"%>
<%@	taglib	uri="/kronos-html" prefix="v3html"%>
<%@ taglib uri="/kronos-lists" 	prefix="v3lists"%>
<%@ taglib tagdir="/WEB-INF/tags/wpk/kvl" prefix="kvl"%>
<%@	page import="com.kronos.wfc.platform.utility.framework.URLUtils,
	com.kronos.wfc.platform.properties.framework.KronosProperties,
	com.kronos.wfc.platform.utility.framework.ECMAEscapeUnescape,
	com.kronos.wfc.platform.utility.framework.list.ListFilter"
%>
<style>
.wrapper{
	position: relative;
}
.searchBox{
	position: relative;
}
.magGlass{
	height : auto;
	width : 16px;
	position: absolute;
	top : 2.5px;
	left : 84%;
}
.tooltip {
  position: relative;
  display: inline-block;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 16px;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  right: 20px;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}
.tooltiptext {
  width: 120px;
  background-color: black;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}

@keyframes scaling{
	0%,100%{
		transform : scale(0.2);
		background-color : #30ffb7;
	}
	40%{
		transform : scale(1);
		background-color : #07deff;
	}
	50%{
		transform : scale(1);
		background-color : #0761ff;
	}
}
.dots{
	text-align: center;
	vertical-align: middle;
	line-height: 2.5em;
	font-family: system-ui;
}




</style>
<script type="text/javascript">
function loading(){	
	const container = document.getElementById("dotContainer");
	container.textContent = '';
	/* while (container.firstChild) {
		container.firstChild.remove();
	} */
	const com = "UTCL";//"LOADING";
	const j=com.length;
	container.style.position="fixed";
	container.style.top="0";
	container.style.left="0";
	container.style.height="100%";
	container.style.width="100%";
	container.style.display="";
	container.style.backgroundColor="#FFFFFF";
	for(i=0;i<j;i++){
		const dotDiv = document.createElement("div");
		dotDiv.style.position="relative";
		dotDiv.style.height="2.5em";
		dotDiv.style.width="2.5em";
		dotDiv.className="dots";
		dotDiv.style.borderRadius="50%";
		dotDiv.style.margin="0.5em";
		dotDiv.style.display="inline-block";
		dotDiv.style.top="45%";
		dotDiv.style.left= "42.8%";
		// dotDiv.style.left= "38%";
		dotDiv.style.zIndex="999";
		dotDiv.textContent=com.charAt(i);		
		dotDiv.style.animation="scaling " + 10/j +"s ease-in-out " + (1/j*(i+1)) + "s infinite";
		container.appendChild(dotDiv);
	}
	
}
function confirmation(){
	const x = document.getElementById("U_I_09");
	if(confirm("Do You Want To Save Data? Click Cancel To Change Data.")){
		x.value="true";
	}else{
		x.value="false";
	}
	loading();
}
function getEmployees(){
	loading();
	document.forms.timeCardActionForm.doAction('<%= KronosProperties.get("cms.action.refresh").replaceAll("'","\\\\'") %>');
}
function showError(obj){
	const div = document.getElementById("errorDiv");
	if(obj.value.length > 0 && !ifCorrectInput(obj, true)){
		div.innerHTML="Please Input Correct Value In (HH:MM) Format! Note : Highest Possible Value Is 23:59.";
		//div.innerHTML += error;
		div.style.display="block";
		div.style.backgroundColor="red";
		return false;
	}
	return true;
	<%-- document.forms.timeCardActionForm.doAction('<%= KronosProperties.get("cms.action.showInvalidValue").replaceAll("'","\\\\'") %>'); --%>
}
function showJob(value){
	if(value === ""){
		value = "No Job Selected!";
	}
	const div = document.getElementById("jobDiv");
	console.log("Shown");
	div.style.display="block";
	div.style.color="red";
	<%-- document.forms.timeCardActionForm.doAction('<%= KronosProperties.get("cms.action.showInvalidValue").replaceAll("'","\\\\'") %>'); --%>
}
function ifCorrectInput(obj, isMins){
	console.log("Shuru",obj.value);
	if(obj.value.length > 0){
		if(!(/^[-]?([0-1]?[0-9]|[2][0-3]):([0][0-9]|([1-5][0-9]))$/).test(obj.value)){
			//showError("Please Input Correct Value In (HH:MM) Format! Note : Highest Possible Value Is 23:59.");
			obj.style.backgroundColor='red';
			return false;
		}else{
			obj.style.backgroundColor='';
		}
		/* if((/^([-]?[0-1]?[0-9]|[2][0-3]):[0-5]+[0-9]$/).test(value)){
			console.log(": er ",value)
			var amountParts = value.split(":");
			console.log("1 ",amountParts[0] );
			console.log("2 ",amountParts[1] );
			if(!ifCorrectInput(amountParts[0],false) || !ifCorrectInput(amountParts[1],true)){
				console.log("Double condition",value)
				showError("Please Input Correct Value In (HH:MM),(HH) Or (H) Format! Note : Highest Possible Value Is 23:59.");
				return false;
			}else{
				return true;
			}
		}else {
			if(isMins != true){
				if(!((/^([-]?[0-1]?[0-9]|[2][0-3])$/).test(value))){
					console.log("false",value)
					showError("Please Input Correct Value In (HH:MM),(HH) Or (H) Format And Should Be Integers! Note : Highest Possible Value Is 23:59.");
					return false;
				}else{
					return true;
				}
			}else if(isMins != false){
				console.log("true",value)
				if(!((/^[0-5]+[0-9]$/).test(value))){
					showError("Please Enter Correct Input! The MM Value Can Not Be Greater Than 59 Minutes!");
					return false;
				}else {
					return true;
				}
			}else{
				return true;
			}
		} */
	}
	return true;	
}


</script>
<bean:define id="webServiceConfigTable"	name="org.apache.struts.taglib.html.BEAN" property="valueAsList(availEmployees)" /><!--  -->
<bean:define id="availUnitNames" name="timeCardActionForm" property="value(availUnitNames)"/>
<bean:define id="availWorkOrders" name="timeCardActionForm" property="value(availWorkOrders)"/>
<bean:define id="availReasons" name="timeCardActionForm" property="value(availReasons)"/>
<bean:define id="availComments" name="timeCardActionForm" property="value(availComments)"/>
<bean:define id="availEmployees" name="timeCardActionForm" property="value(availEmployees)"/>
<bean:define id="availPayCodes" name="timeCardActionForm" property="value(availPayCodes)"/>
<bean:define id="payCodeRefresh" name="timeCardActionForm" property="value(payCodeRefresh)"/>
<bean:define id="reasonRefresh" name="timeCardActionForm" property="value(reasonRefresh)"/>
<bean:define id="jobName" name="timeCardActionForm" property="value(jobName)"/>
<%-- 
<html:hidden property="availEmployees" value="value(availEmployees)" />
<html:hidden property="value(selectedUnitId)" />
<html:hidden property="value(selectedDate)" />
<html:hidden property="value(selectedWorkOrder)" />
<html:hidden property="value(selectedReason)" />
<html:hidden property="value(selectedEmployee)" />
<html:hidden property="value(selectionChanged)" />
<html:hidden property="value(isValueSaved)" /> 
--%>
<html:hidden property="value(disableSave)" />
<html:hidden property="value(isAccepted)" styleId="U_I_09" />
<html:hidden property="value(createdBy)" />
<%
String unitId = (String)request.getAttribute("unitId");
String scheduleDate = (String)request.getAttribute("scheduleDate");
String workOrderNum = (String)request.getAttribute("workOrderNum");
String reason = (String)request.getAttribute("reason");
String eCode = (String)request.getAttribute("eCode");
String jobNm = request.getAttribute("jobName") != null ? (String)request.getAttribute("jobName") : "";
%>
<v3lists:sort var="webServiceConfigSorter" items="webServiceConfigTable" property="state(cms_c_state)"  default="personNum" >
<v3lists:paginate var="paginate1" page="value(paginate_location_page)" items="webServiceConfigTable">

<div class="Panel">
   <table class="ControlLayout">
   	  <tr>
   	  	<th><label for="khtmlNameInput">Search</label></th>
   	  	<th colspan="4"><div id="errorDiv" style="display:none;"></div></th>
   	  </tr>
      <tr>
      	<th><label for="khtmlNameInput"><span>*</span> <kvl:label id="cms.label.principalEmployer" /></label></th>
      	<th><label for="khtmlNameInput"><span>*</span> <fmt:message key="label.schedule.date" /></label></th>
      	<th><label for="khtmlNameInput"><span>*</span> <fmt:message key="label.wkNum" /></label></th>
      	<th> <label for="khtmlNameInput"><span>*</span> <fmt:message key="label.search.for" /></label></th>
      	<th> <label for="khtmlNameInput"><span></span> <fmt:message key="label.eCode" /> <span style="color:red;"> (Optional)</span></label></th>
      	
         <!-- td colspan="5">
            <label>
               <fmt:message bundle="${local}" key = "wcb.textlabel.config.label.import-translations"/>
            </label>
         </td-->
      </tr>
      <tr>
      
		<td  class="last-child">
	  		<select id="selectedPE" name="value(unitId)" onchange="getEmployees();"> 
	    	<option value="-1"><kvl:label id="cms.label.selectUnitName"/></option>
			<c:forEach var="principalEmployer" items="${availUnitNames}">
        		<option value="${principalEmployer.unitId}" 
		 			<c:if test="${principalEmployer.unitId == unitId}">selected</c:if>>
          			<c:out value="${principalEmployer.unitName}"/>
        		</option>
        	</c:forEach>
	  		</select>
		</td>
		<td>
			<input id="value(scheduleDate)"	name="value(scheduleDate)" value="${scheduleDate}" type="text" size="20" onchange="getEmployees();"></input>
			<kvl:date-selector-eot-bot-popup id="value(scheduleDate)" eot_bot_enable="bot" start_of_week="1" 
				hide_text_field="true" text_label_field="label.schedule.date" />
		</td>
		<!-- <td>
		<html:text property="value(workOrderNum)" styleId="khtmlNameInput" onchange="setDataChanged();" 
			size="20" maxlength="50" readonly="true"  />
		</td>-->
		<td>
			<input list="workOrders" name="value(workOrderNum)" onchange="getEmployees();showJob(this.value)" value="${workOrderNum}" autocomplete="off">
  			<datalist id="workOrders">
  				<c:forEach var="workOrder" items="${availWorkOrders}" varStatus="i">
		    			<option value="${workOrder.value}">${workOrder.key}</option>
		    	</c:forEach>
  			</datalist>
			<%-- <select id="selectWorkOrder" name="value(workOrderNum)" onchange="getEmployees();"> 
		    	<option value="-1">Select WorkOrder No.</option>
		    		<c:forEach var="workOrder" items="${availWorkOrders}" varStatus="i">
		    			<option value="${workOrder}"
		    				<c:if test="${workOrder == workOrderNum}">selected</c:if>
		    			>${workOrder}</option>
		    			<!-- option value="unapprovedLeave">Unapproved Leave</option -->
		    		</c:forEach>
		    	</select> --%>
			
		</td>
			
		<td>
			<select id="selectReason" name="value(reason)" onchange="getEmployees();">
				<option value="-1" > Select Reason </option>
				<c:forEach var="reas" items="${availReasons}" >
					<option value="${reas }" <c:if test="${reas == reasonRefresh }" > selected</c:if> > ${reas.toUpperCase() }</option>
					<%-- <c:choose>
						<c:when test="${ reas.toUpperCase() == 'MISSED PUNCH' || reas.toUpperCase() == 'OVERTIME' || reas.toUpperCase() == 'UNSCHEDULED ABSENCE' }">
							<option value="${reas }" <c:if test="${reas == reasonRefresh }" > selected</c:if> > ${reas }</option> 
						</c:when>
						<c:when test="${ reas.toUpperCase() == 'OTHER' }">
							<option value="UNSCHEDULED ABSENCE" <c:if test="${reasonRefresh == 'UNSCHEDULED ABSENCE' }" > selected</c:if> > ${reas }</option> 
						</c:when> 
					</c:choose>	--%>
				</c:forEach>
			</select>
		</td>
		<td >
		<div class="wrapper">
			<span class="searchBox" >
				<html:text property="value(eCode)" styleId="khtmlNameInput"  onchange="setDataChanged();getEmployees()" size="20" maxlength="50" />
			</span>
			<span class="magGlass">
				<a href="javascript:document.forms.timeCardActionForm.doAction('<%= KronosProperties.get("cms.action.edit").replaceAll("'","\\\\'") %>')" style="text-decoration:none;">
					<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 					viewBox="0 0 490.4 490.4" style="enable-background:new 0 0 490.4 490.4;" xml:space="preserve">
						<g>
							<path d="M484.1,454.796l-110.5-110.6c29.8-36.3,47.6-82.8,47.6-133.4c0-116.3-94.3-210.6-210.6-210.6S0,94.496,0,210.796
								s94.3,210.6,210.6,210.6c50.8,0,97.4-18,133.8-48l110.5,110.5c12.9,11.8,25,4.2,29.2,0C492.5,475.596,492.5,463.096,484.1,454.796z
		 						M41.1,210.796c0-93.6,75.9-169.5,169.5-169.5s169.6,75.9,169.6,169.5s-75.9,169.5-169.5,169.5S41.1,304.396,41.1,210.796z"/>
						</g>
					</svg>
				</a>
			</span>
		</div>
		</td>
		<td>
			<div id="dotContainer" style="display:none;"></div>
				<%-- <kvl:button id="cms.label.search" action="">
                        <html:button styleId="searchButton" property="searchButton" onclick="getEmployees();"><kvl:resource id="LocaleProfile.label.search" /></html:button>
                </kvl:button> --%>
			</td>
		
	</tr>
	<tr>	
		<th > <div id="jobDiv"> JOB : ${jobName.toUpperCase() } </div></th>
   		<!-- <th><label for="khtmlNameInput">Apply</label></th> -->
   	</tr>
  <%--  	<tr>
   		<th> <label for="khtmlNameInput"><span>*</span> <fmt:message key="label.paycode" /></label></th>
   	</tr> --%>
   	<tr style="display:none;">
	   	<td>
			<select id="selectedPayCode" name="value(payCode)" onchange="getEmployees();"> 
		    	<option value="-1">Select PayCode</option>
		    		<c:forEach var="payCode" items="${availPayCodes}" varStatus="i">
		    			<option value="${payCode}"
		    				<c:if test='${payCode == payCodeRefresh}'>selected</c:if>
		    				>${payCode.toUpperCase()}
		    			</option>
		    			<!-- <option value="unapprovedLeave">Unapproved Leave</option> -->
		    		</c:forEach>
		    	</select>
			
			</td>
	</tr>
</table>
</div>

<v3lists:search var="searchBean" items="webServiceConfigTable"	property="personNum" pattern="value(selectedId)">
			<table id="khtmlWebServiceConfigListTable" class="Tabular"	cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<th class="ActionCell"></th>
						<%-- <tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="workOrderNum" />
							<tiles:put name="displayname">	<fmt:message key="label.workordernumber" />	</tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert>
						<tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="woJobName" />
							<tiles:put name="displayname">	<fmt:message key="label.job.name" />	</tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert> --%>
						<tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="personNum" />
							<tiles:put name="displayname">	<fmt:message key="label.eCode" />	</tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert>
						<tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="empName" />
							<tiles:put name="displayname">	<fmt:message key="label.name" />	</tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert>
						<tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="labAcc" />
							<tiles:put name="displayname">	<fmt:message key="label.vendor.code" />	</tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert>
						<%-- <tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="exceptionDate" />
							<tiles:put name="displayname">	<fmt:message key="label.exception.date" /></tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert> --%>
				
						<%-- <tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="labAcc" />
							<tiles:put name="displayname">	<fmt:message key="label.transfer" /></tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert> --%>
						<th class="ActionCell"><fmt:message key="label.transfer" /></th>
						<%-- <tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="overtimeHours" />
							<tiles:put name="displayname">	<fmt:message key="label.unapproved.hours" />	</tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert> --%>
						<th class="ActionCell"><fmt:message key="label.unapproved.hours" /></th>
						<%-- <tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="payCode" />
							<tiles:put name="displayname">	<fmt:message key="label.paycode" /></tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert> --%>
						<th class="ActionCell"><fmt:message key="label.paycode" /></th>
						<%-- <tiles:insert name="sort-ui">
							<tiles:put name="sorter" beanName="webServiceConfigSorter" />
							<tiles:put name="property" value="state(cms_c_state)" />
							<tiles:put name="fieldname" value="amount" />
							<tiles:put name="displayname">	<fmt:message key="label.amount" />	</tiles:put>
							<tiles:put name="cssClassName" value="last-child" />
						</tiles:insert> --%>
						<th class="ActionCell"><fmt:message key="label.amount" /></th>
						<th class="ActionCell"><fmt:message key="label.comment" /></th>
						<!-- <th class="ActionCell" "></th> -->
					</tr>
				</thead>
				<tfoot>
					<tr class="TablePaginator">
						<td colspan="299" cLass="last-child">
							<div id="paginate1">
								<tiles:insert name="paginator-ui">
									<tiles:put name="paginator" beanName="paginate1" />
									<tiles:put name="property"	value="value(paginate_location_page)" />
									<tiles:put name="showAll" value="true" />
								</tiles:insert>
							</div>
						</td>
					</tr>
				</tfoot>
				
				<tbody>
				
					<bean:size id="numConfigs" name="webServiceConfigTable" />
					<c:if test="${numConfigs < 1}">
						<tr>
							<td class="last-child" colspan="299"><kvl:resource id='i18n.wfc.displayEmptyTableMessage' /></td>
						</tr>
					</c:if>
					<c:set var="rowIndex" value="${0}" />
			
					<c:forEach var="item" items="${webServiceConfigTable}" varStatus="status">
						<c:set var="itemId" value="${item.getPersonNum()}" />
			
							<tr class="last-child <c:if test='${rowIndex % 2 !=  0}'>Even</c:if>">
							
								  <td>${rowIndex + 1}
									<!--<input type="radio" class="Selected" name="valueAsStringArray(selectedIds)" value="<c:out value='${item.getPersonNum()}' />"
											<c:out value='${item.getPersonNum()}'  />
											onclick="TableRowsSelection.doSelectRow(this)" />-->
								</td>
								<%-- <td class="last-child" style="text-align:center;">
									<c:if test="${item.getWorkOrderNum() == null}"> &nbsp; </c:if> 
									${item.getWorkOrderNum()}
								</td>
								<td class="last-child" style="text-align:center;">
									<c:if test="${item.getWoJobName() == null}"> &nbsp; </c:if> 
									${item.getWoJobName()}
								</td> --%>
								<td class="last-child" style="text-align:center;">
									<c:if test="${item.getPersonNum() == null}"> &nbsp; </c:if> 
									<!-- <a href="javascript:setSelectedItem(<c:out value="${item.getPersonNum()}" />);document.forms.timeCardActionForm.doAction('<%= KronosProperties.get("cms.action.edit").replaceAll("'","\\\\'") %>')">-->
										<c:out value='${item.getPersonNum()}' />
									</a>
								</td>
								<td class="last-child" style="text-align:center;">
									<c:if test="${item.getEmpName() == null}"> &nbsp; </c:if> 
									${item.getEmpName().toUpperCase()}
								</td>
								<td class="last-child" style="text-align:center;">
									<c:if test="${item.getLabAcc() == null}"> &nbsp; </c:if> 
									${item.getLabAcc().split('/')[4]}
								</td>
								
								<!-- 
								<td class="last-child" style="text-align:center;">
									<c:if test="${item.getExceptionDate() == null}"> &nbsp; </c:if> 
									<a href="javascript:setSelectedItem(<c:out value="${item.getPersonNum()}" />);document.forms.timeCardActionForm.doAction('<%= KronosProperties.get("cms.action.edit").replaceAll("'","\\\\'") %>')">
										<c:out value='${item.getExceptionDate()}' />
									</a>
								</td> 
								-->
								<td class="last-child" style="text-align:center;">
									<c:if test="${item.getLabAcc() == null}"> &nbsp; </c:if> 
									<input name="value(${item.getPersonNum()}_transfer)" size="60" value="${item.getLabAcc()}" readonly="true"/>
								</td>
								<td class="last-child" style="text-align:center;">
									<c:if test="${item.getUnapprovedHours() == null}"> &nbsp; </c:if> 
									${item.getUnapprovedHours()}
								</td>
								<td class="last-child" style="text-align:center;">
									<select id="selectedPayCodes" name="value(${item.getPersonNum()}_payCode)"> 
		    							<option value="-1">Select PayCode</option>
		    							<c:forEach var="payCode" items="${availPayCodes}" varStatus="i">
		    								<option value="${payCode}" 
		    									<c:if test="${payCode == item.getPayCode()}" >selected </c:if>
		    										>${payCode.toUpperCase()}
		    								</option>
		    							</c:forEach>
		    						</select>
								</td>
								
								<!--% String amt = request.getAttribute(${item.getPersonNum()}.getPersonNum() + "_amount") != null ? (String)request.getAttribute(tRow.getPersonNum() + "_amount") : ""; %>-->
								<td class="last-child" style="text-align:center;" >
									<input name="value(${item.getPersonNum()}_amount)" value="${item.getAmount()}" size="3" maxlength="6" autocomplete="off"
										onkeyup="javascript:if(!ifCorrectInput(this,false)) {this.focus()} else {this.style.backgroundColor='';}"
										onblur="javascript:if(!showError(this)) {this.focus()} else {document.getElementById('errorDiv').style.display='none';}"/>
								</td>
								<td class="last-child" style="text-align:center;">
									<select id="selectedComments" name="value(${item.getPersonNum()}_comment)"> 
		    							<option value="NA">NA</option>
		    							<c:forEach var="comm" items="${availComments}" varStatus="i">
		    								<option value="${comm}" 
		    									<c:if test="${comm == item.getComment()}" >selected </c:if>
		    										>${comm.toUpperCase()}
		    								</option>
		    							</c:forEach>
		    						</select>
								</td>
								<td style="display: none;">
									<div class="tooltip" style="width:16px; height:16px; display: none;">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48">
    										<defs>
        										<style>.cls-3{fill:#6fabe6}.cls-4{fill:#82bcf4}</style>
    										</defs>
										    <g id="Bubble_Word_information" data-name="Bubble Word information">
										        <path d="M47 7v28a4 4 0 0 1-4 4H9l-8 6V7a4 4 0 0 1 4-4h38a4 4 0 0 1 4 4z" style="fill:#fc6"/>
										        <path d="M47 7c0 30.36.22 28.68-.54 30H23A20 20 0 0 1 3 17V3.54A4 4 0 0 1 5 3h38a4 4 0 0 1 4 4z" style="fill:#ffde76"/>
										        <path class="cls-3" d="M26 9a2 2 0 1 1-2.82-1.82A2 2 0 0 1 26 9z"/>
										        <path class="cls-4" d="M25.82 9.82a2 2 0 0 1-2.64-2.64 2 2 0 0 1 2.64 2.64z"/>
										        <path class="cls-3" d="M29 33a2 2 0 0 1-2 2h-6a2 2 0 0 1 0-4h1V19a2 2 0 0 1-1.41-3.41C21.31 14.85 22 15 24 15a2 2 0 0 1 2 2v14h1a2 2 0 0 1 2 2z"/>
										        <path class="cls-4" d="M29 33h-3a2 2 0 0 1-2-2V15a2 2 0 0 1 2 2v14h1a2 2 0 0 1 2 2z"/>
										    </g>
										</svg>
  										<c:choose>
  											<c:when test="${not item.getHasException() && not empty item.getRunTimeStatus().toString()}"> 
  												<span class="tooltiptext" style="width:400px; height:150px; font-size: large; color:green;"><c:out value="${item.getRunTimeStatus().toString().toUpperCase()}"/></span>
  											</c:when>	
  											<%-- <c:otherwise>
  												<span class="tooltiptext" style="width:400px; height:150px; font-size: large;  color:red;"> </span>
  											</c:otherwise> --%>
  										</c:choose>
  										
									</div>
								</td>
			
							</tr>
							<c:set var="rowIndex" value="${rowIndex+1}" />
					</c:forEach>
			
				</tbody>
			</table>

		</v3lists:search>
	</v3lists:paginate>
</v3lists:sort>
