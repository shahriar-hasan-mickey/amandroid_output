<%var els=new EncryptedLocalStorage('secret');
var moitrafic=els.get("moitrafic");
%>
 <a href="#/moiList" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
	<!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
   			<li><a href="#/moiList"><%-$.i18n.t('app.moi.general.title')%></a></li>
   			<li class="active"><%-$.i18n.t('app.moi.general.moipayments')%></li>
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
	<div id="secError">
					<strong><span id="showError" class="text-danger"></span></strong>
	</div>
	</br>
	
<!-- Category List -->
	<div class="form-group">
	
	<%if(billerServiceListDTO.length>0){%>
					<select name="BillerID"  id="serviceType" class="form-control" >					
					 <%_.each(billerServiceListDTO,function(data){%>
					<%if(data.strBillerServiceCode=="093"){%>					
					 		<option selected value="<%-data.strBillerServiceDesc%>~<%-data.strBillerServiceCode%>" ><%-data.strBillerServiceDesc%></option>
				  	<%}%>
					
					 <%if(data.strBillerServiceCode!="093")%>
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

<!-- Start Traffic violation -->
	<div class="traffic">
		<div class="form-group required">
        	<input type="number"  autocomplete='off'  pattern="[0-9]*" class="form-control" id="violID" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" name="ViolationID" placeholder="<%-$.i18n.t('app.moi.moipayments.violationid')%>">
			<p class="help-block error-message label label-danger" id="Error_Traffic" style="display: none;"><%-$.i18n.t('validation.moi.violIDnotnull')%></p>
			<p class="help-block error-message label label-danger" id="Error_Trafficzero" style="display: none;"><%-$.i18n.t('validation.moi.violidzeroval')%></p>
			<p class="help-block error-message label label-danger" id="Error_Trafficlength" style="display: none;"><%-$.i18n.t('validation.moi.violIDlength')%></p>

			
		
		</div>
	</div>
<!-- End Traffic -->



<!-- General Sponsor Id Starts -->
 	<div class="form-group required" id="sponsorID">
		<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="sponsorId" name="sponsorId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.sponsorid')%>" maxlength="10" />
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
		<div class="form-group required" id="citizenid">
		    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="citizenId" name="citizenId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.citizenid')%>">
			<p id="Error_citizenid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.citizenidnotnull')%></p>
			<p id="Error_citizenidzeroval" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.citizenidzeroval')%></p>
			<p id="Error_citizenidlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.citizenidlength')%></p>
		</div>
		<div class="form-group required" id="bordernumber">
		    <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="BorderNumber" name="BorderNumber" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.borderno')%>">
			<p id="Error_BorderNumber" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotnull')%></p>
			<p id="Error_BorderNumberzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotzero')%></p>
			<p id="Error_BorderNumberlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.bordernumbernotlength')%></p>
		</div>
	</div>
<!-- Start Alien Control Ends -->



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
	     <div class="form-group required" id="sequenceno">
	          	<input type="number" autocomplete='off'  maxlength="9" pattern="[0-9]*" class="form-control lenthcontrol" id="sequenceNo" name="sequenceNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.seqno')%>">
				<p id="Error_sequenceno" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sequencenonotnull')%></p>
				<p id="Error_sequencenozero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sequencenozeroval')%></p>
				<p id="Error_sequencenolength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.sequencenolength')%></p>
	     </div>
	     <div class="form-group required"  id="newownerid">
	         	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="newownerId" name="newownerId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.newownerid')%>">
				<p id="Error_newownerid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridnotnull')%></p>
				<p id="Error_newowneridzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridzeroval')%></p>
				<p id="Error_newowneridlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.newowneridlength')%></p>
	     </div>
	     <div class="form-group required" id="currentownerid">
	           	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="currentownerId" name="currentownerId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.currentownerid')%>">
				<p id="Error_currentownerid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridnotnull')%></p>
				<p id="Error_currentowneridzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridzeroval')%></p>
				<p id="Error_currentowneridlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.currentowneridlength')%></p>
	     </div>
	     <div class="form-group required" id="customcardno">
	           	<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="customcardNo" name="customcardNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.customcardno')%>">
				<p id="Error_customcardno" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnonotnull')%></p>
				<p id="Error_customcardnozero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnozeroval')%></p>
				<p id="Error_customcardnolength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.customcardnolength')%></p>
	     </div>
	</div>
<!-- End Motor Vehicle Refund -->

<!-- 3. start civil registration-->
	<div  id="civil">
	    <div  id="dates">
	    	  <table>
				<tbody>
					<tr>
						<td class="col-xs-3">	    	 
						<input type="number" autocomplete='off'  maxlength="2" pattern="[0-9]*" class="form-control input-sm lenthcontrol" id="dte" name="dte" placeholder="<%-$.i18n.t('app.moi.moipayments.date')%>">
						</td>
						<td>-</td>
						<td class="col-xs-3"> <input type="number" autocomplete='off'  placeholder="<%-$.i18n.t('app.moi.moipayments.month')%>" name="mnt" id="mnt" class="form-control input-sm lenthcontrol" pattern="[0-9]*" maxlength="2"></td>
						<td>-</td>
						<td class="col-xs-4">
						<input type="number" autocomplete='off'  maxlength="4" pattern="[0-9]*" class="form-control input-sm lenthcontrol" id="yer" name="yer" placeholder="<%-$.i18n.t('app.moi.moipayments.year')%>">
						</td>
					</tr>
				</tbody>
				</table>
		</div>
		<p id="Error_hijridatenull" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.datenull')%></p>
		<p id="Error_hijrimonthnull" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.monthnull')%></p>
		<p id="Error_hijridatevalid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.datevalid')%></p>
		<p id="Error_hijrimonthvalid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.monthvalid')%></p>
		<p id="Error_hijriyearnull" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.yearnotnull')%></p>
		<p id="Error_hijriyearvalid" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.yearvalid')%></p>
		
	    <div class="clearfix"></div>
		<br/> 
	    	  <!-- 
	           <div class="form-group" id="dob">
	                <input type="number" maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="dob" name="DateOfBirth" placeholder="<%-$.i18n.t('app.moi.moipayments.dob')%>">
	                <input type="number" id="date"> - 
	           </div>
			    <div class="form-group" id="dod">
			            <input type="number" maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="dod" name="DateOfDeath" placeholder="<%-$.i18n.t('app.moi.moipayments.dod')%>">
			    </div>
			    <div class="form-group" id="dodv">
			          <input type="number" maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="dodv" name="DateOfDivorce" placeholder="<%-$.i18n.t('app.moi.moipayments.dodv')%>">
			   </div>
			   <div class="form-group" id="dol">
			          <input type="number" maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="dol" name="DateOfLoss" placeholder="<%-$.i18n.t('app.moi.moipayments.dol')%>">
			    </div>
			   <div class="form-group" id="dom">
			          <input type="number" maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="dom" name="dom" placeholder="<%-$.i18n.t('app.moi.moipayments.dom')%>">
			   </div>
			   -->
			   
	   </div>
	 </div>
<!-- End Civil Registration-->


<!-- 4. Start Deportation Control-->
	<div class="form-group" id="deportioncontrol">
	</div>
<!-- End of Deportation Control-->



<!-- 5. Start Deportation Sentences-->
	<div class="form-group" id="deportionsentences">
		<div class="form-group required" id="deporteeid">
			<input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="deporteeId" name="deporteeId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.deporteeid')%> ">
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
	        	<input type="number" autocomplete='off'  maxlength="2" pattern="[0-9]*" class="form-control lenthcontrol" id="visaNo" name="visaNo" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.numberofvisas')%>">
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
		<div class="form-group" id="licence">
			<select name="licenceType" id="licenceType" class="form-control" >
		  	</select>
			<p id="Error_licenceType" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licencetypenotnull')%></p>
		</div>
		
		<div class="form-group" id="licensetime">
			<select name="licenseTime" id="licenseTime" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamaduration')%>">
		    </select>
			<p id="Error_licenseTime" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licensetimenotnull')%></p>
		</div>
		
		<div class="form-group required" id="licenceid">
			<input type="number"  autocomplete='off' maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="licenceId" name="licenceId" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.id')%> ">
			<p id="Error_licenceId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licencenotnull')%></p>
			<p id="Error_licenceIdzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licenceidzeroval')%></p>
			<p id="Error_licenceIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.licencenolength')%></p>
		</div> 
	</div>
<!-- End Driving license-->


<!-- 9. Start Common Fields -->
<!-- Since IQAMA is not mandatory in IM calls, it has been commented -->
 
	<div class="form-group required" id="iqamanumber">
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="iqamaNumber" name="iqamaNumber" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamano')%>">
	       <p id="Error_iqamaNumber" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamanumbernotnull')%></p>
	       <p id="Error_iqamaNumberzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamanumberzeroval')%></p>
	       <p id="Error_iqamaNumberlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.iqamanumberlength')%></p>
	</div>
	
	<div class="form-group required" id="iqamaID">
	       <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="iqamaid" name="iqamaid" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.iqamaid')%>">
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
	<div class="form-group required" id="nationalid">
	     <input type="number" autocomplete='off'  maxlength="10" pattern="[0-9]*" class="form-control lenthcontrol" id="nationalId" name="nationalId" maxlength="10" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" placeholder="<%-$.i18n.t('app.moi.moipayments.nationalid')%>">
	     <p id="Error_nationalId" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.nationalidnotnull')%></p>
	     <p id="Error_nationalIdzero" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.nationalidzeroval')%></p>
	     <p id="Error_nationalIdlength" class="help-block error-message label label-danger" style="display: none;"><%-$.i18n.t('validation.moi.nationalidlength')%></p>
	</div>

<!-- End Common Fields-->


<!-- 10. Start Submit Button -->
	<div id="submitbuttons">
		<input type="button" id="service" name="service" class="btn btn-success btn-block" value="<%-$.i18n.t('app.moi.moipayments.submit')%>" />
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
           $('#BeneType').hide();
           $('#sponsorID').hide();
           $('#deportionsentences').hide();
           $('#drivinglicence').hide();
           $('#labor').hide();
           $('#dates').hide();
           $('#motorvehicle').hide();
           $('#nationalid').hide();
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

/*
	$('#serviceType').change(function () {
			var str = "";
            $('#appType').show();

            
    	$( "#serviceType option:selected" ).each(function() {

            str=$(this).val().split('-')[0];
            		
            $('#chk').val(str.split('-')[0]);
            		
            $('#billerid').val($(this).val().split('-')[1]);
            
            var billercatId=$(this).val().split('-')[1];
               
			var selected = $(this).val();
               
            
		    if(selected=='' || selected=='undefined'){
		               
		    	$('#chk').val('');
		        str='';
		        
		        $('#appType').hide();
		        return false;
			}
            else if(str=='Traffic Violation')
            {
                	
                		$('.traffic').show();
                		$('.moiRefund').hide();
                		$('#deportionsentences').hide();
                		$('#deportioncontrol').hide(); 
                		$('#drivinglicence').hide();
                		$('#labor').hide();
           	    		$('#iqamanumber').hide();
                		$('#civil').hide();
                		$('#sponsorID').hide();
                		$('#iqamaID').hide();
                		$('#motorvehicle').hide();
                		$('#nationalid').hide();
                		$('#saudipassport').hide();
                		
                		$('#submitbuttons').show();
            }
            else if(str=='Alien Control')
            {
                			$('.traffic').hide();
                			//myapptype();
                			//$('.moiRefund').show();
                			$("#alien").hide();
                			$('#deportioncontrol').hide();
                			$('#deportionsentences').hide();
                			$('#drivinglicence').hide();
                			$('#labor').hide();
                			$('#iqamanumber').hide();
                			$('#civil').hide();
                			$('#sponsorID').hide();
                			$('#iqamaID').hide();
                			$('#motorvehicle').hide();
                			$('#nationalid').hide();
                			$('#saudipassport').hide();
            }
            else if(str=='Saudi Passport')
            {
                		$('.traffic').hide();
                		$('.moiRefund').hide();
                		$('#deportionsentences').hide();
                		$('#deportioncontrol').hide();
                		$('#drivinglicence').hide();
                		$('#labor').hide();
                		$('#iqamanumber').hide();
                		$('#civil').hide();
                		$('#sponsorID').hide();
                		$('#iqamaID').hide();
                		$('#motorvehicle').hide();
                		$('#nationalid').show();
                		
                		$('#saudipassport').show();
                		$('#submitbuttons').show();
            }
            else if(str=='Civil Registration')
            {
                		
                		 //$('#civil').show();
             			 $('#saudipassport').hide();
                		 $('#iqamanumber').hide();
                		 $('#dates').hide();
                		 $('#iqamaID').hide();
                		 $('#sponsorID').hide();
                		 $('#nationalid').hide();
                		 //myapptype();
                		 $('.traffic').hide();
                		 $('.moiRefund').hide();
                		 $('#deportioncontrol').hide();
                		 $('#deportionsentences').hide();
                		 $('#drivinglicence').hide();
                		 $('#labor').hide();
                		 $('#motorvehicle').hide();
            }
            else if(str=='Labor Importation')
            {
                		$('#labor').show();
                		$('#saudipassport').hide();
                		$('#iqamanumber').hide();
                		$('#sponsorID').show();
                		$('.traffic').hide();
                		$('.moiRefund').hide();
                		$('#iqamaID').hide();
                		$('#deportionsentences').hide();
                		$('#deportioncontrol').hide();
                		$('#drivinglicence').hide();
                		$('#civil').hide();
                		$('#motorvehicle').hide();
                		$('#nationalid').hide();
                		
                		$('#submitbuttons').show();
            }
            else if(str=='Driving License')
            {
                		 $('#motorvehicle').hide();
                		 $('#saudipassport').hide();
                		 $('.traffic').hide();
                		 $('.moiRefund').hide();
                		 $('#deportionsentences').hide();
                		 $('#deportioncontrol').hide();
                		 $('#iqamanumber').hide();
                		 $('#labor').hide();
                		 $('#civil').hide();
                		 $('#sponsorID').hide();
                		 $('#iqamaID').hide();
                		 $('#nationalid').hide();
                		 
                		 $('#drivinglicence').show();
                		 $('#submitbuttons').show();
            }
            else if(str=='Motor Vehicle')
            {
                	  
                		$('.traffic').hide();
                		$('#saudipassport').hide();
                		$('.moiRefund').hide();
                		$('#nationalid').hide();
                		$('#deportionsentences').hide();
                		$('#iqamanumber').hide();
                		$('#deportioncontrol').hide();
                		$('#drivinglicence').hide();
                		$('#labor').hide();
                		$('#civil').hide();
                		$('#sponsorID').hide();
                		$('#iqamaID').hide();
                		$('#motorvehicle').show();
                		$('#bodytype').hide();
	            	 	$('#newregtype').hide();
	            	 	$('#customcardno').hide();
	            	 	$('#sequenceno').hide();
	            	 	$('#newownerid').hide();
	            	 	$('#currentownerid').hide();
	            	 	$('#iqamaID').hide();
	            	 	//myapptype();
            }
            else if(str=='Deportation Sentences')
            {
                		$('#deportionsentences').show();
                		$('#saudipassport').hide();
                		$('#deporteeid').hide();
                		$('#iqamanumber').hide();
                		$('#sponsorID').hide();
                		$('#iqamaID').hide();
                		//myapptype();
                		$('.traffic').hide();
                		$('.moiRefund').hide();
                		$('#deportioncontrol').hide();
                		$('#drivinglicence').hide();
                		$('#labor').hide();
                		$('#civil').hide();
                		$('#motorvehicle').hide();
                		$('#nationalid').hide();
            }
            else if(str=='Deportation Control')
            {
                		$('#deportioncontrol').show();
                		$('#saudipassport').hide();
                		$('#iqamanumber').show();
                		$('#deportionsentences').hide();
                		$('.traffic').hide();
                		$('.moiRefund').hide();
                		$('#drivinglicence').hide();
                		$('#labor').hide();
                		$('#civil').hide();
                		$('#sponsorID').hide();
                		$('#iqamaID').hide();
                		$('#motorvehicle').hide();
                		$('#nationalid').hide();
                		
                		$('#submitbuttons').show();
            }
            else
            {
                		$('.traffic').hide();
                		$('#saudipassport').hide();
                		$('.moiRefund').hide();
                		$('#deportionsentences').hide();
                		$('#deportioncontrol').hide();
                		$('#drivinglicence').hide();
                		$('#labor').hide();
                		$('#iqamanumber').hide();
                		$('#civil').hide();
                		$('#sponsorID').hide();
                		$('#iqamaID').hide();
                		$('#motorvehicle').hide();
                		$('#nationalid').hide();
            }
		});
	});

*/

/*
	function myapptype()
	{
			
			$( "#apptype option:selected" ).each(function() {
        		
            	var stype=$("#chk").val();
            	var sele=$(this).val();
            	
            	
            	if(stype=='Civil Registration'){
            	 		$('#nationalid').show();
            	 		$('#civil').show();
            	 	 	$('#dates').show();
	            	 	if(sele=="017"){
	            	 		$('#hijrilabel').text($.i18n.t('app.moi.moipayments.dob'));
	            	 	}
	            	 	if(sele=="018"){
	            	 		$('#hijrilabel').text($.i18n.t('app.moi.moipayments.dod'));
	            	 	}
	            	 	if(sele=="020"){
	            	 		$('#hijrilabel').text($.i18n.t('app.moi.moipayments.dodv'));
	            	 	}
						if(sele=="021"){
							$('#hijrilabel').text($.i18n.t('app.moi.moipayments.dol'));
						}
	            	 	if(sele=="019"){
	            	 		$('#hijrilabel').text($.i18n.t('app.moi.moipayments.dom'));
	            	 	}
				}
            	if(stype=='Deportation Sentences')
            	{
            			if(sele=="aptime0" || sele=="aptime1")
            			{
	            	 		$('#iqamanumber').show();
	            	 		$('#deporteeid').hide();
	            	 	}
	            	 	else{
	            	 		$('#iqamanumber').hide();
	            	 		$('#deporteeid').show();
	            	 	}
	            }
            	if(stype=='Motor Vehicle')
            	{
            			if(sele=="aptime0"||sele=="aptime8"||sele=="aptime11")
            			{
	            	 			$('#bodytype').hide();
	            	 			$('#newregtype').hide();
	            	 			$('#customcardno').hide();
	            	 			$('#sequenceno').show();
	            	 			$('#newownerid').show();
	            	 			$('#currentownerid').show();
	            	 			$('#iqamaID').hide();
	            	 	}
	            	 	if(sele=="aptime1"||sele=="aptime2"||sele=="aptime3"||sele=="aptime4"||sele=="aptime7"){
	            	 			$('#bodytype').hide();
	            	 			$('#newregtype').hide();
	            	 			$('#customcardno').hide();
	            	 			$('#sequenceno').show();
	            	 			$('#newownerid').hide();
	            	 			$('#currentownerid').show();
	            	 			$('#iqamaID').hide();
	            	 	}
	            	 	if(sele=="aptime5"||sele=="aptime6")
	            	 	{
	            	 			$('#bodytype').show();
	            	 			$('#newregtype').show();
	            	 			$('#customcardno').show();
	            	 			$('#sequenceno').hide();
	            	 			$('#newownerid').hide();
	            	 			$('#currentownerid').hide();
	            	 			$('#iqamaID').show();
	            	 	}
	            	 	if(sele=="aptime9"||sele=="aptime10")
	            	 	{
	            	 			$('#bodytype').show();
	            	 			$('#newregtype').show();
	            	 			$('#customcardno').hide();
	            	 			$('#sequenceno').show();
	            	 			$('#newownerid').hide();
	            	 			$('#currentownerid').hide();
	            	 			$('#iqamaID').show();
	            	 	}
            	}
            	if(stype=='Driving License')
            	{
            		$('#drivinglicence').show();
            	}
          		if(stype=='Alien Control')
          		{
          			 $('.moiRefund').show();
          			 
          			 
          			 if(sele=='014'  || sele=='015')
          			 {
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#bordernumber').hide();
                				$('#citizenid').hide();
                				
                				$('#iqamaID').show();
                				$('#dependentcount').show();
                				
					}
          			if(sele=='013')
                	{
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#bordernumber').hide();
                				$('#citizenid').hide();
                				$('#iqamaID').hide();
                				$('#nationalid').hide();
                				
                				$('#iqamanumber').show();
                				$('#dependentcount').show();
                	}
          			if(sele=='005')
          			{
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#dependentcount').hide();
                				$('#bordernumber').hide();
                				$('#citizenid').hide();
                				
                				$('#iqamaID').show();
          						$('#BeneType').show();
                				
                	}
                	if(sele=='004')
          			{
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#dependentcount').hide();
                				$('#bordernumber').hide();
                				$('#citizenid').hide();
                				
                				$('#iqamaID').show();
          						$('#BeneType').show();
                				
                	}
                	if(sele=='001')
          			{
          						$('#iqamaID').hide();
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#dependentcount').hide();
                				$('#citizenid').hide();
                				
                				$('#bordernumber').show();
          						$('#BeneType').show();
                				
                	}
                	if(sele=='016')
          			{
          						$('#iqamaID').hide();
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#dependentcount').hide();
                				
                				$('#iqamatime').show();
                				$('#citizenid').show();
                				$('#bordernumber').show();
          						$('#BeneType').show();
                				
                	}
                	if(sele=='002' || sele=='009' )
          			{
          						$('#iqamaID').hide();
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
								$('#citizenid').hide();                				
                				$('#dependentcount').hide();
                				
                				$('#sponsorID').show();
                				$('#jobcategory').show();
                				$('#iqamatime').show();
                				$('#bordernumber').show();
          						$('#BeneType').show();
                				
                	}
                	if(sele=='003' || sele=='008' )
          			{
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#dependentcount').hide();
                				$('#bordernumber').hide();
                				$('#citizenid').hide();
                				
                				$('#iqamaID').show();
          						$('#BeneType').show();
                				
                	}
                	if(sele=='011' || sele=='010' || sele=='007')
          			{
                				$('#iqamanumber').hide();
                				$('#visanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#dependentcount').hide();
                				$('#bordernumber').hide();
                				$('#citizenid').hide();
                				
                				$('#iqamaID').show();
          						$('#BeneType').show();
                				
                	}
                	if(sele=='006')
          			{
                				$('#iqamanumber').hide();
                				$('#household').hide();
                				$('#sponsorID').hide();
                				$('#jobcategory').hide();
                				$('#iqamatime').hide();
                				$('#dependentcount').hide();
                				$('#bordernumber').hide();
                				$('#citizenid').hide();
                				
                				$('#visanumber').show();
                				$('#iqamaID').show();
          						$('#BeneType').show();
                				
                	}
				}
				if(stype=='Traffic violation')
            	{
            		if(sele=='041'){
            		$('.traffic').show();
            		$('#BeneType').show();
            		$('#iqamaID').show();
            		}
            		if(sele=='040'){
            		$('#iqamaID').show();
            		}
            	}
          			  
			});
			$('#submitbuttons').show();
	}
*/
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

