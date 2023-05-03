<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%> 
 <a href="#/moiList" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
	<!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
   			<li><a href="#/moiList"><%-$.i18n.t('app.moi.general.title')%></a></li>
   			<li class="active"><%-$.i18n.t('app.moi.general.moirefunds')%></li>
    </ol>
	<div class="clearfix"></div>
                  <br/>
                  <!--Breadcrumb Ends Here-->
                  <!--Step Control Starts Here-->
    <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.moi.moipayments.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.moi.moipayments.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.moi.moipayments.confirm')%></p></div></div>
    </div>
                  <!--Step Control Ends Here-->
<form role="form">

<!-- Hidden Fields -->
     <input type="hidden" id="chk" />
     <input type="hidden" id="billerid" />     
     <input type="hidden" id="hidBillerType" />
     <input type="hidden" id="hidhirjiformat" />


<!-- Category List -->
	<div class="form-group">
    		<%if(billerServiceListDTO.length>0){%>
					<select name="BillerID"  id="serviceType" class="form-control" >
	                        <option selected value=""><%-$.i18n.t('app.moi.moipayments.selectbiller')%></option>
	                        <%_.each(billerServiceListDTO,function(data){%>
								<option value="<%-data.strBillerServiceDesc%>~<%-data.strBillerServiceCode%>" ><%-data.strBillerServiceDesc%></option>
							<%});%>
					</select>
            <%}%>
	</div>
   
	<div id="appTypemoi"> 
	</div> 


<!-- Sub Category List -->
	<div id="appType">
		<select name="Service"  id="apptype" class="form-control" >
			<option selected value=""><%-$.i18n.t('app.moi.moipayments.selectservicetype')%></option>
		</select>
	</div>
	</br>

<% if ( devicePlatform == "Android" ) { %>
<!-- Start Traffic violation -->
	<div class="traffic">
		<div class="form-group required">
        	<input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol" id="violID" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" name="ViolationID" placeholder="<%-$.i18n.t('app.moi.moipayments.violationid')%>">
			<p class="help-block error-message label label-danger" id="Error_Traffic" style="display: none;"><%-$.i18n.t('validation.moi.violIDnotnull')%></p>
			<p class="help-block error-message label label-danger" id="Error_Trafficzero" style="display: none;"><%-$.i18n.t('validation.moi.violidzeroval')%></p>
			<p class="help-block error-message label label-danger" id="Error_Trafficlength" style="display: none;"><%-$.i18n.t('validation.moi.violIDlength')%></p>
		
		</div>
	</div>
<!-- End Traffic -->



<!-- General Sponsor Id Starts -->
 	<div class="form-group required" id="sponsorID">
 			<div class="optwrap input-group ">
		<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="sponsorId" name="sponsorId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.sponsorid')%>" maxlength="10" />
		<span class="input-group-btn">
		<button type="button" id="getsponsorId" name="getsponsorId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
	</div>
		<p id="Error_sponsorId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sponsoridnotnull')%></p>
		<p id="Error_sponsorIdzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sponsoridnotzero')%></p>
		<p id="Error_sponsorIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sponsoridnotlength')%></p>
	</div>
<!-- General Sponsor Id Ends -->


  
<!-- 1. Start Alien Control Starts -->
	<div class="moiRefund">
		<div class="form-group required" id="visanumber">
			<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="visaNumber" name="visaNumber" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.visanumber')%>">
			<p id="Error_visanumber" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.visanumbernotnull')%></p>
			<p id="Error_visanumberzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.visanumberzeroval')%></p>
			<p id="Error_visanumberlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.visanumberlength')%></p>
		</div>

		<div class="form-group required" id="dependentcount">
		    <input type="number" autocomplete='off'  maxlength="2" pattern="[0-9]*" class="form-control lenthcontrol" id="dependentCount" name="dependentCount" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.dependentcount')%>">
			<p id="Error_dependentcount" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.dependentcountnotnull')%></p>
			<p id="Error_dependentcountlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.dependentcountlength')%></p>
			<p id="Error_dependentcountzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.dependentcountzero')%></p>
		</div>
		                           
		<div class="form-group required" id="household" >
		    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="houseHold" name="houseHold" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.household')%>">
			<p id="Error_household" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.householdnotnull')%></p>
			<p id="Error_householdzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.householdzeroval')%></p>
			<p id="Error_householdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.householdlength')%></p>
		</div>
		 <div class="form-group" id="jobcategory" >
		    <select name="jobCategory" id="jobCategory" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.jobcategory')%>">
			</select>
			<p id="Error_jobCategory" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.jobcategorynotnull')%></p>
		</div>
		 <div class="form-group" id="iqamatime">
		    <select name="iqamaTime" id="iqamaTime" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamaduration')%>">
		    </select>
			<p id="Error_iqamaTime" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamatimenotnull')%></p>
		</div>
		
		<div class="form-group required" id="bordernumber">
		    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="BorderNumber" name="BorderNumber" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.borderno')%>">
			<p id="Error_BorderNumber" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotnull')%></p>
			<p id="Error_BorderNumberzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotzero')%></p>
			<p id="Error_BorderNumberlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotlength')%></p>
		</div>
	</div>
<!-- Start Alien Control Ends -->
<%}else{%>
<!-- Start Traffic violation -->
	<div class="traffic">
		<div class="form-group required">
        	<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="violID" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" name="ViolationID" placeholder="<%-$.i18n.t('app.moi.moipayments.violationid')%>">
			<p class="help-block error-message label label-danger" id="Error_Traffic" style="display: none;"><%-$.i18n.t('validation.moi.violIDnotnull')%></p>
			<p class="help-block error-message label label-danger" id="Error_Trafficzero" style="display: none;"><%-$.i18n.t('validation.moi.violidzeroval')%></p>
			<p class="help-block error-message label label-danger" id="Error_Trafficlength" style="display: none;"><%-$.i18n.t('validation.moi.violIDlength')%></p>
		
		</div>
	</div>
<!-- End Traffic -->



<!-- General Sponsor Id Starts -->
 	<div class="form-group required" id="sponsorID">
 			<div class="optwrap input-group ">
		<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="sponsorId" name="sponsorId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.sponsorid')%>" maxlength="10" />
		<span class="input-group-btn">
		<button type="button" id="getsponsorId" name="getsponsorId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
	</div>
		<p id="Error_sponsorId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sponsoridnotnull')%></p>
		<p id="Error_sponsorIdzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sponsoridnotzero')%></p>
		<p id="Error_sponsorIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sponsoridnotlength')%></p>
	</div>
<!-- General Sponsor Id Ends -->


  
<!-- 1. Start Alien Control Starts -->
	<div class="moiRefund">
		<div class="form-group required" id="visanumber">
			<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="visaNumber" name="visaNumber" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.visanumber')%>">
			<p id="Error_visanumber" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.visanumbernotnull')%></p>
			<p id="Error_visanumberzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.visanumberzeroval')%></p>
			<p id="Error_visanumberlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.visanumberlength')%></p>
		</div>

		<div class="form-group required" id="dependentcount">
		    <input type="number" autocomplete='off'  maxlength="2" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="dependentCount" name="dependentCount" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.dependentcount')%>">
			<p id="Error_dependentcount" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.dependentcountnotnull')%></p>
			<p id="Error_dependentcountlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.dependentcountlength')%></p>
			<p id="Error_dependentcountzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.dependentcountzero')%></p>
		</div>
		                           
		<div class="form-group required" id="household" >
		    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="houseHold" name="houseHold" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.household')%>">
			<p id="Error_household" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.householdnotnull')%></p>
			<p id="Error_householdzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.householdzeroval')%></p>
			<p id="Error_householdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.householdlength')%></p>
		</div>
		 <div class="form-group" id="jobcategory" >
		    <select name="jobCategory" id="jobCategory" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.jobcategory')%>">
			</select>
			<p id="Error_jobCategory" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.jobcategorynotnull')%></p>
		</div>
		 <div class="form-group" id="iqamatime">
		    <select name="iqamaTime" id="iqamaTime" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamaduration')%>">
		    </select>
			<p id="Error_iqamaTime" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamatimenotnull')%></p>
		</div>
		<div class="form-group required" id="bordernumber">
		    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="BorderNumber" name="BorderNumber" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.borderno')%>">
			<p id="Error_BorderNumber" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotnull')%></p>
			<p id="Error_BorderNumberzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotzero')%></p>
			<p id="Error_BorderNumberlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotlength')%></p>
		</div>
	</div>
<!-- Start Alien Control Ends -->

<%}%>


<!-- 2. Start Motor Vehicle  -->
	<div id="motorvehicle">
	     <div class="form-group" id="bodytype">
	        	<select id="bodyType" name="bodyType" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.bodytype')%>">
	       		</select>
				<p id="Error_bodyType" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bodytypenotnull')%></p>
	     </div>
	     <div class="form-group" id="newregtype">
	        	<select id="newregType" name="newregType" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.newregtype')%>">
	       		</select>
				<p id="Error_newregType" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newregtypenotnull')%></p>
	     </div>
	     <% if ( devicePlatform == "Android" ) { %>
	     <div class="form-group required" id="sequenceno">
	          	<input type="number" autocomplete='off'  minlength="8" maxlength="9" pattern="[0-9]*" class="form-control lenthcontrol" id="sequenceNo" name="sequenceNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.seqno')%>">
				<p id="Error_sequenceno" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sequencenonotnull')%></p>
				<p id="Error_sequencenozero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sequencenozeroval')%></p>
				<p id="Error_sequencenolength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.sequencenolength')%></p>
	     </div>
	     <div class="form-group required" id="currentownerid">
	     		<div class="optwrap input-group ">
	           	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="currentownerId" name="currentownerId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.currentownerid')%>">
	           		<span class="input-group-btn">
		<button type="button" id="getcurrentownerId" name="getcurrentownerId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
	</div>
				<p id="Error_currentownerid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridnotnull')%></p>
				<p id="Error_currentowneridzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridzeroval')%></p>
				<p id="Error_currentowneridlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridlength')%></p>
	     </div>
	     <div class="form-group required"  id="newownerid">
	         	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="newownerId" name="newownerId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.newownerid')%>">
				<p id="Error_newownerid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridnotnull')%></p>
				<p id="Error_newowneridzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridzeroval')%></p>
				<p id="Error_newowneridlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridlength')%></p>
	     </div>
	     <div class="form-group required" id="customcardno">
	           	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="customcardNo" name="customcardNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.customcardno')%>">
				<p id="Error_customcardno" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnonotnull')%></p>
				<p id="Error_customcardnozero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnozeroval')%></p>
				<p id="Error_customcardnolength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnolength')%></p>
	     </div>
<%}else{%>
	     <div class="form-group required" id="sequenceno">
	          	<input type="number" autocomplete='off'  minlength="8" maxlength="9" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="sequenceNo" name="sequenceNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.seqno')%>">
				<p id="Error_sequenceno" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sequencenonotnull')%></p>
				<p id="Error_sequencenozero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sequencenozeroval')%></p>
				<p id="Error_sequencenolength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.sequencenolength')%></p>
	     </div>
	     <div class="form-group required" id="currentownerid">
	     	<div class="optwrap input-group ">
	           	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="currentownerId" name="currentownerId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.currentownerid')%>">
	           			<span class="input-group-btn">
		<button type="button" id="getcurrentownerId" name="getcurrentownerId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
	</div>
				<p id="Error_currentownerid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridnotnull')%></p>
				<p id="Error_currentowneridzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridzeroval')%></p>
				<p id="Error_currentowneridlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridlength')%></p>
	     </div>
	     <div class="form-group required"  id="newownerid">
	         	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="newownerId" name="newownerId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.newownerid')%>">
				<p id="Error_newownerid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridnotnull')%></p>
				<p id="Error_newowneridzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridzeroval')%></p>
				<p id="Error_newowneridlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridlength')%></p>
	     </div>
	     <div class="form-group required" id="customcardno">
	           	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="customcardNo" name="customcardNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.customcardno')%>">
				<p id="Error_customcardno" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnonotnull')%></p>
				<p id="Error_customcardnozero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnozeroval')%></p>
				<p id="Error_customcardnolength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnolength')%></p>
	     </div>
		<%}%>
</div>
<!-- End Motor Vehicle Refund -->

<!-- 3. start civil registration-->
	<div  id="civil">
	    <div  id="dates">
	    	  <label for="Hijri"><span id="hijrilabel"></span></label>
	    	  <div class="form-group">
	    	  <% if ( devicePlatform == "Android" ) { %>
	    	  <div class="col-xs-3"><input autocomplete='off'  type="number" maxlength="2" pattern="[0-9]*" class="form-control lenthcontrol" id="dte" name="dte" placeholder="<%-$.i18n.t('app.moi.moipayments.date')%>"></div>
	    	  <div class="col-xs-1">-</div>
	    	  <div class="col-xs-3"><input autocomplete='off'  type="number" maxlength="2" pattern="[0-9]*" class="form-control lenthcontrol" id="mnt" name="mnt" placeholder="<%-$.i18n.t('app.moi.moipayments.month')%>"></div>
	    	  <div class="col-xs-1">-</div>
	    	  <div class="col-xs-3"><input autocomplete='off'  type="number" maxlength="4" pattern="[0-9]*" class="form-control lenthcontrol" id="yer" name="yer" placeholder="<%-$.i18n.t('app.moi.moipayments.year')%>"></div>
	    	  <%}else{%>
	    	  <div class="col-xs-3"><input  autocomplete='off' type="number" maxlength="2" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="dte" name="dte" placeholder="<%-$.i18n.t('app.moi.moipayments.date')%>"></div>
	    	  <div class="col-xs-1">-</div>
	    	  <div class="col-xs-3"><input autocomplete='off'  type="number" maxlength="2" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="mnt" name="mnt" placeholder="<%-$.i18n.t('app.moi.moipayments.month')%>"></div>
	    	  <div class="col-xs-1">-</div>
	    	  <div class="col-xs-3"><input  autocomplete='off' type="number" maxlength="4" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="yer" name="yer" placeholder="<%-$.i18n.t('app.moi.moipayments.year')%>"></div>
	    	  <%}%>
		</div>
		<p id="Error_hijridatenull" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.datenull')%></p>
		<p id="Error_hijrimonthnull" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.monthnull')%></p>
		<p id="Error_hijridatevalid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.datevalid')%></p>
		<p id="Error_hijrimonthvalid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.monthvalid')%></p>
		<p id="Error_hijriyearnull" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.yearnotnull')%></p>
		<p id="Error_hijriyearvalid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.yearvalid')%></p>
		
	    <div class="clearfix"></div>
		<br/> 
	    	  
			   
	   </div>
	 </div>
<!-- End Civil Registration-->


<!-- 4. Start Deportation Control-->
	<div class="form-group" id="deportioncontrol">
		<div class="form-group required">
			<div class="optwrap input-group">
			<% if ( devicePlatform == "Android" ) { %>
		    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="runalienid" name="runalienid" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.runalienid')%>">
		    <%}else{%>
		     <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="runalienid" name="runalienid" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.runalienid')%>">
	 		<%}%>
	 		<span class="input-group-btn">
			<button type="button" id="getRunAlienId" name="getRunAlienId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
			</span>
		 	</div>
			<p id="Error_deportioncontrolId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.plsenter')%> <%-$.i18n.t('app.moi.moipayments.runalienid')%></p>
			<p id="Error_deportioncontrolIdzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.runalienid')%> - <%-$.i18n.t('validation.moi.notzero')%> </p>
			<p id="Error_deportioncontrolIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.runalienid')%> - <%-$.i18n.t('validation.moi.neededlength')%></p>
		</div>
	</div>
<!-- End of Deportation Control-->



<!-- 5. Start Deportation Sentences-->
	<div class="form-group" id="deportionsentences">
		<div class="form-group required" id="deporteeid">
		<% if ( devicePlatform == "Android" ) { %>
			<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="deporteeId" name="deporteeId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.deporteeid')%> ">
		<%}else{%>
			<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="deporteeId" name="deporteeId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.deporteeid')%> ">
		<%}%>
			<p id="Error_deporteeid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.deportionsentsnotnull')%></p>
			<p id="Error_deporteeidlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.deportionsentslength')%></p>
		</div> 
	</div>
<!-- End of Deportation Sentences-->


<!-- 6. Start Saudi Passport -->
	<div class="form-group" id="saudipassport">
		<div class="form-group" id="passporttype">
			<select name="passportType" id="passportType" class="form-control" >
			</select>
			<p id="Error_passportType" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.saudipassportsnotnull')%></p>
		</div>	
	</div>
<!-- End of Saudi Passport-->



<!-- 7. Start  Labor Importation -->
	 <div class="form-group required" id="labor">
			<div class="form-group" id="visano">
			<% if ( devicePlatform == "Android" ) { %>
	        	<input type="number" autocomplete='off'  maxlength="2" pattern="[0-9]*" class="form-control lenthcontrol" id="visaNo" name="visaNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.numberofvisas')%>">
	        <%}else{%>
	        	<input type="number" autocomplete='off'  maxlength="2" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="visaNo" name="visaNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.numberofvisas')%>">
	        <%}%>
				<p id="Error_visano" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.numberofvisanotnull')%></p>
				<p id="Error_visanozero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.numberofvisazero')%></p>
				<p id="Error_visanolength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.numberofvisalength')%></p>
	        </div>
	        <div class="form-group" id="visatype">
	        	<select name="visaType" id="visaType" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.visatype')%>">
				</select>
				<p id="Error_visaType" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.visatypenotnull')%></p>
			</div>	
	</div>
<!-- End of  Labor Importation -->



<!-- 8. Start Driving license-->
	<div  id="drivinglicence">
		<div class="form-group" id="licence" style="display: none;" >
			<select name="licenceType" id="licenceType" class="form-control" style="display: none;" >
		  	</select>
			<p id="Error_licenceType" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licencetypenotnull')%></p>
		</div>
		
		<div class="form-group" id="licensetime" style="display: none;" >
			<select name="licenseTime" id="licenseTime" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamaduration')%>">
		    </select>
			<p id="Error_licenseTime" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licensetimenotnull')%></p>
		</div>
		
		<div class="form-group required" id="licenceid">
			<div class="optwrap input-group ">
		<% if ( devicePlatform == "Android" ) { %>
			<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="licenceId" name="licenceId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.beneficiaryid')%> ">
		<%}else{%>
			<input type="number"  autocomplete='off' maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="licenceId" name="licenceId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.beneficiaryid')%> ">
		<%}%>
		  <span class="input-group-btn">
		<button type="button" id="getlicenceId" name="getlicenceId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
			</div>
			<p id="Error_licenceId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.plsenter')%> <%-$.i18n.t('app.moi.moipayments.beneficiaryid')%></p>
			<p id="Error_licenceIdzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.beneficiaryid')%> - <%-$.i18n.t('validation.moi.notzero')%> </p>
			<p id="Error_licenceIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.beneficiaryid')%> - <%-$.i18n.t('validation.moi.neededlength')%></p>
		</div> 
	</div>
<!-- End Driving license-->


<!-- 9. Start Common Fields -->
<!-- Since IQAMA is not mandatory in IM calls, it has been commented -->
 
	<div class="form-group required" id="iqamanumber">
	<% if ( devicePlatform == "Android" ) { %>
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="iqamaNumber" name="iqamaNumber" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamano')%>">
	 <%}else{%>
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="iqamaNumber" name="iqamaNumber" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamano')%>">
	 <%}%>
	       <p id="Error_iqamaNumber" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamanumbernotnull')%></p>
	       <p id="Error_iqamaNumberzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamanumberzeroval')%></p>
	       <p id="Error_iqamaNumberlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamanumberlength')%></p>
	</div>
	<div class="form-group" id="alienID">
	<div class="optwrap input-group ">
	<% if ( devicePlatform == "Android" ) { %>
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="alienId" name="alienId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.alienId')%>">
	<%}else{%>
	       <input type="number"  autocomplete='off' maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="alienId" name="alienId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.alienId')%>">
	<%}%>
		<span class="input-group-btn">
		<button type="button" id="getAlienId" name="getAlienId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
		</div>
	       <p id="Error_alienID" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.alienIDnotnull')%></p>
	       <p id="Error_alienIDzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.alienIDnotzero')%></p>
	       <p id="Error_alienIDlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.alienIDlength')%></p>
	</div>
	<div class="form-group" id="newIqamaID">
	<div class="optwrap input-group ">
	<% if ( devicePlatform == "Android") { %>
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="newiqamaid" name="newiqamaid" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.refund_alienId')%>">
	<%}else{%>
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="newiqamaid" name="newiqamaid" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.refund_alienId')%>">
	<%}%>
		<span class="input-group-btn">
		<button type="button" id="getnewIqamaId" name="getnewIqamaId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
		</div>
	       <p id="Error_newiqamaID" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newiqamaIDnotnull')%></p>
	       <p id="Error_newiqamaIDzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newiqamaIDnotzero')%></p>
	       <p id="Error_newiqamaIDlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newiqamaIDlength')%></p>
	</div>
	<div class="form-group" id="iqamaID">
	<div class="optwrap input-group">
	<% if ( devicePlatform == "Android" ) { %>
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="iqamaid" name="iqamaid" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamaid')%>">
	<%}else{%>
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="iqamaid" name="iqamaid" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamaid')%>">
	 <%}%>
	 <span class="input-group-btn">
		<button type="button" id="getId" name="getId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
	</span>
	</div>
	       <p id="Error_iqamaID" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamaIDnotnull')%></p>
	       <p id="Error_iqamaIDzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamaIDnotzero')%></p>
	       <p id="Error_iqamaIDlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamaIDlength')%></p>
	</div>
<!--
	<div class="form-group" id="BeneType">
		<select name="benetype" id="benetype" class="form-control" placeholder="Please Select Bene Type">
		</select>
		<p id="Error_licenseTime" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licensetimenotnull')%></p>
	</div>
-->
	<div class="form-group" id="nationalid">
	<div class="optwrap input-group">
	<% if ( devicePlatform == "Android" ) { %>
	     <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="nationalId" name="nationalId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.nationalid')%>">
	<%}else{%>
	     <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="nationalId" name="nationalId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.nationalid')%>">
	 <%}%>
	 <span class="input-group-btn">
		<button type="button" id="getIdNat" name="getIdNat" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
	 </div>
	     <p id="Error_nationalId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.nationalidnotnull')%></p>
	     <p id="Error_nationalIdzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.nationalidzeroval')%></p>
	     <p id="Error_nationalIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.nationalidlength')%></p>
	</div>
	<div class="form-group required" id="citizenid">
		<div class="optwrap input-group">
			<% if ( devicePlatform == "Android" ) { %>
	    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="citizenId" name="citizenId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.citizenid')%>">
	    <%}else{%>
	     <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="citizenId" name="citizenId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.citizenid')%>">
 		<%}%>
 		<span class="input-group-btn">
		<button type="button" id="getcitizenId" name="getcitizenId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
	 </div>
		<p id="Error_citizenid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.citizenidnotnull')%></p>
		<p id="Error_citizenidzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.citizenidzeroval')%></p>
		<p id="Error_citizenidlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.citizenidlength')%></p>
	</div>
	<div class="form-group required" id="voilatorId">
		<div class="optwrap input-group">
		<% if ( devicePlatform == "Android" ) { %>
	    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="violator_id" name="violator_id" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.violatorid')%>">
	    <%}else{%>
	     <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" id="violator_id" name="violator_id" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.violatorid')%>">
 		<%}%>
 		<span class="input-group-btn">
		<button type="button" id="getviolatorId" name="getviolatorId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
	 	</div>
		<p id="Error_voilatorId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.plsenter')%> <%-$.i18n.t('app.moi.moipayments.violatorid')%></p>
		<p id="Error_voilatorIdzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.violatorid')%> - <%-$.i18n.t('validation.moi.notzero')%> </p>
		<p id="Error_voilatorIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('app.moi.moipayments.violatorid')%> - <%-$.i18n.t('validation.moi.neededlength')%></p>
	</div>
<!-- End Common Fields-->


<!-- 10. Start Submit Button -->
	<div id="submitbuttons">
		<input type="button" id="refundservice" name="refundservice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.moi.moipayments.submit')%>" >
		<!-- <a id="service" name="service" class="btn btn-success btn-block"><%-$.i18n.t('app.moi.moipayments.submit')%></a> -->
		<a href="#/moiList" class="btn btn-primary btn-block"><%-$.i18n.t('app.moi.moipayments.cancel')%></a>
	</div>
<!-- End Submit Button -->

</br>
</form>
               
<script>
	$(document).ready(function(){
	
           $('#submitbuttons').hide();
           $('.traffic,.moiRefund').hide();
           $('#civil').hide();                      
           $('#appType').hide();
           $('#deportioncontrol').hide();
           $('#iqamanumber').hide();
           $('#iqamaID').hide();
	   $('#newIqamaID').hide();
           $('#alienID').hide();
           $('#BeneType').hide();
           $('#sponsorID').hide();
           $('#deportionsentences').hide();
           $('#drivinglicence').hide();
           $('#labor').hide();
           $('#dates').hide();
           $('#motorvehicle').hide();
           $('#nationalid').hide();
           $('#citizenid').hide();
           $('#voilatorId').hide();
           $('#saudipassport').hide();
           $('#licence').hide();
           //$('#licence').hide();
	});
</script>


<script>
	
	(function ($){
	    $.fn.inputlength=function(){
	      // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
	       return this.each(function(){
	         var makelength=$(this).attr("maxlength");
	         $(this).on('keyup',function(e){
	            if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	              var values=$(this).val();
	              values=values.substring(0, values.length - 1);
	               $(this).val(values).focus();
	              e.preventDefault();
	            }
	         })
	
	       });
	    };
	}(jQuery));
	$('.lenthcontrol').inputlength();

</script>

<script>
	var trandateDate = new Date();
	var d = trandateDate.getDate();
	var m = trandateDate.getMonth()+1;
	var y = trandateDate.getFullYear();
	//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
	var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
	$("#dob").val(myDate);
	$("#dod").val(myDate);
	$("#dom").val(myDate);
	$("#dol").val(myDate);	
	$("#dodv").val(myDate);
</script>

<script type="text/javascript">
function f(o){
  o.value=o.value.toUpperCase().replace(/([^0-9])/g,"");
}

function g(o){
  if(/[^0-9]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9\s])/g,"");
  }
}
</script>
