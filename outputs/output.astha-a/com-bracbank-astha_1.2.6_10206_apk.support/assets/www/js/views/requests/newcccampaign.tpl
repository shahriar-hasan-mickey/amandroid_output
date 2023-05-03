 <!--Content Starts Here-->
 <%
	var els = new EncryptedLocalStorage('secret');
				var firstname=els.get("userlogin");
		    	
		    	var lastname=els.get("lastName");
		    	
		    	var empno=els.get("employeeno");
		    	
		    	var idtype=els.get("idtype");
		    	
		    	var nationality=els.get("nationality");
		    	
		    	var place=els.get("placeofidissue");
		    	
		    	var hijexpdate=els.get("hijiraidexpdate");
		    	
		    	var gender=els.get("gender");
		    	
		    	var homephone=els.get("homephone");
		    
		    	var emailid=els.get("emailid");
		    	
		    	var postno=els.get("postalnumber");
		    	
		    	var departmentname=els.get("departmentname");
		    	
		    	var workext= els.get("workext");
		    	
		    	var salaryreceivingdate=els.get("salaryreceivingdate");
		    	
		    	var employeename=els.get("name");
		    	
		    	var mobile=els.get("mobileforcc");
		    	
		    	var birthdate=els.get("birthdateforcc");
		    	
		    	var employeename=els.get("employeename");
		    	
		    	var cancelfromcampaign=els.get("cancelfromcampaign");
		    	
		    	var devicePlatform = els.get("device.platform");
		    	
		    	var campsummarycount= els.get("campsummarycount");
		    	
		    	var totalCampign=els.get("totalCampign");
		    	%>
		    	
                  <a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.newcc.newcc')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.newcc.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.requests.newcc.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.newcc.confirm')%></p></div></div>
                  </div>
                  <!--Step Control Ends Here-->
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
                      
                       <div class="infoCont">
                        <ul>
                            <li>
                               <p class="lbl"><%-$.i18n.t('app.requests.newcc.firstname')%></p>
                               <p name="firstname" id="firstname"><b>
                               <% if (firstname.length > 0 ) {%>
                               <%if(typeof(firstname)!="undefined"){%>
                             			<%-firstname%>
                               <%}else{%>
									<span class="nme"></span>
								<%}%>
                               <%}%>
                               </b></p>
                             </li>
                             <li>
                               <p class="lbl"><%-$.i18n.t('app.requests.newcc.lastname')%></p>
                               <p name="lastname" id="lastname"><b>
                                <% if ( lastname.length > 0 ) {%>
                               <%if(typeof(lastname)!="undefined"){%>
                             			<%-lastname%>
                               <%}else{%>
									<span class="nme"></span>
								<%}%>
                               <%}%>
                               </b></p>
                             </li>
                        </ul>
                      </div>
                     
                      <div class="form-group required">
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolname" name="embossname" id="embossname"  maxlength="35" placeholder="<%-$.i18n.t('app.requests.newcc.embossname')%>">
                      </div>
                    
                   
                      <div class="form-group">
                       <% if ( devicePlatform == "Android" ) { %>
                       		<input  type="number" autocomplete='off'  pattern="[0-9]*"  class="form-control lenthcontrol"  name="nodep" id="noofdep" maxlength="2" placeholder="<%-$.i18n.t('app.requests.newcc.noofdep')%>">
                       <%}else{%>
                           <input  type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  name="nodep" id="noofdep" maxlength="2" placeholder="<%-$.i18n.t('app.requests.newcc.noofdep')%>">
                       <%}%>
                      </div>
                      <div class="infoCont">
                        <ul>
                             <li>
                               <p class="lbl"><%-$.i18n.t('app.requests.newcc.mobno')%></p>
                               <p name="mobno" id="mobno"><b>
                               
                               <%if(typeof(mobile)!="undefined"){%>
                             			<%-mobile%>
                               <%}else{%>
									<span class="nme"></span>
								<%}%>
                             
                               </b></p>
                             </li>
                           </ul>
                        </div>
                      <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolAddress" name="address1" id="addr1" maxlength="35" placeholder="<%-$.i18n.t('app.requests.newcc.addr1')%>">
                      </div>
                      <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolAddress" name="address2" id="addr2" maxlength="35" placeholder="<%-$.i18n.t('app.requests.newcc.addr2')%>"">
                      </div>
                     
                      <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolAddress" name="buildnumber" id="buildno" maxlength="10" placeholder="<%-$.i18n.t('app.requests.newcc.buildno')%>">
                      </div>
                      <div class="form-group required">
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolAddress" name="mailaddr" id="mailaddr" maxlength="50" placeholder="<%-$.i18n.t('app.requests.newcc.mailaddr')%>">
                      </div>
                      
                    <div class="form-group required">
                          <select name="selectcity" id="selectcity" class="form-control">
                          <option value="" selected="selected"><%-$.i18n.t('app.requests.newcc.selectcit')%></option>
                            <% if ( city.length > 0 ) {%>
			        			<% _.each(city,function(tagdata){ %>
			        				<p>
										<%if(typeof(tagdata.description)!="undefined"){%>
											<option value="<%-tagdata.description%>"><%-tagdata.description%></option>
										<%}else{%>
											<span class="nme"></span>
										<%}%>
									</p>
									<% }); %>
					        <%}%>
					       </select>
                     </div>
                        
                         <div class="form-group required">
                         <% if ( devicePlatform == "Android" ) { %>
                          	<input  type="number" autocomplete='off'  pattern="[0-9]*"  class="form-control lenthcontrol"  name="zipcode" id="zipcode" maxlength="10" placeholder="<%-$.i18n.t('app.requests.newcc.zipcode')%>">
                         <%}else{%>
                           <input  type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  name="zipcode" id="zipcode" maxlength="10" placeholder="<%-$.i18n.t('app.requests.newcc.zipcode')%>">
                         <%}%>
                      </div>
                      <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control" name="state" id="state"  maxlength="25" placeholder="<%-$.i18n.t('app.requests.newcc.state')%>">
                      </div>
                    
                       <div class="form-group required">
                          <select name="payopt" id="payopt" class="form-control">
                          <option value="" selected="selected"><%-$.i18n.t('app.requests.newcc.selectpayopt')%></option>
                            <% if ( paymentOptionList.length > 0 ) {%>
			        			<% _.each(paymentOptionList,function(tagdata){ %>
			        			
			        			
			        				<p>
										<%if(typeof(tagdata.paymentOptionDesc)!="undefined"){%>
											<option value="<%-tagdata.paymentOptionDesc%>"><%-tagdata.paymentOptionDesc%></option>
										<%}else{%>
											<span class="nme"></span>
										<%}%>
									</p>
						       
						         <%});%>
					        <%}%>
					       </select>
                     </div>
                     
                      <div class="form-group required">
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolname" name="empname" id="empname" maxlength="15" placeholder="<%-$.i18n.t('app.requests.newcc.empname')%>">
                      </div> 
                      
				
                      <div class="form-group required">
                       <% if ( devicePlatform == "Android" ) { %>
                           <input  type="number" autocomplete='off'  pattern="[0-9]*"  class="form-control lenthcontrol" name="relmobno" id="relmobno" maxlength="10" placeholder="<%-$.i18n.t('app.requests.newcc.relmobno')%>">
                        <%}else{%>
                           <input  type="number" autocomplete='off'  pattern="[0-9]*"  inputmode="numeric" class="form-control lenthcontrol" name="relmobno" id="relmobno" maxlength="10" placeholder="<%-$.i18n.t('app.requests.newcc.relmobno')%>">
                        <%}%>
                      </div>
                      
                      
                      <div class="form-group ">
                        <% if ( devicePlatform == "Android" ) { %>
                           <input  type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  name="lengthofser" id="los" maxlength="2" placeholder="<%-$.i18n.t('app.requests.newcc.los')%>">
                        <%}else{%>
                            <input  type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  name="lengthofser" id="los" maxlength="2" placeholder="<%-$.i18n.t('app.requests.newcc.los')%>">
                        <%}%>
                      </div>
                      
                      <div class="form-group">
                       <% if ( devicePlatform == "Android" ) { %>
                           <input  type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  name="salary" id="sal"  maxlength="15" placeholder="<%-$.i18n.t('app.requests.newcc.sal')%>">
                       <%}else{%>
                             <input  type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  name="salary" id="sal"  maxlength="15" placeholder="<%-$.i18n.t('app.requests.newcc.sal')%>">
                       <%}%>
                      </div>
                      <div class="form-group">
                          <label class="checkinput small active  pull-left">
                          <input type="checkbox"  name="iagreee" id="iagreee" class="check-hidden" checked="checked">
                         <%-$.i18n.t('app.requests.newcc.credithistory')%>
                        </label>
                      </div>
                       <br/>
                      <br/>
					  <div id="errorCheckBox" style="display:none">
                      		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.request.validcheckbox')%></font></p>
					  </div>
                      <div class="clearfix"></div>
                      <br/>
                      
                       <input type="button" class="btn btn-success btn-block" id="applynewcreditcardrequest" name="applynewcreditcardrequest" value="<%-$.i18n.t('app.requests.newcc.submit')%>" />
                       		<% if ( campsummarycount == "1" || totalCampign =="1" ) { %>
                         		<a href="#/wealth" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.readycash.cancel')%></a>
                         	<%}else {%>
                         	 	<a href="#/campaignsummary" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.readycash.cancel')%></a>
                         	 <%}%>
                       </br>
                       <div class="alert alert-info">
                   			<span class="msg"><%-$.i18n.t('app.requests.personalfin.disclaimer')%></span>
						</div>
                     </form>
                  <!--One time Billpay Ends Here-->
                  <br/>
                  
<!--Content Ends Here-->
<script>
        $(function(){
            $(".dropselect").dropselect();
        });
</script>
<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
           $(this).val($(this).val().replace(/([^0-9])/g,""));
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
              var iOS = /iPad|iPhone|iPod/.test( navigator.userAgent );
            var inputType=$(this).attr("inputmode");
			if(iOS && inputType == "numeric" ){ 
				var old=$(this).val();
            	$(this).val(old+String.fromCharCode(convertNumbers2EnglishLocal(e.keyCode)));
 				e.preventDefault();
            }
            // return true;
          });

        });
     };
}(jQuery));
 $('.lenthcontrol').inputlength();
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>
<script>
(function ($){
     $.fn.inputlengthname=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
           $(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
         // $(this).val($(this).val().toUpperCase());
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontrolname').inputlengthname();
</script>

<script>
(function ($){
     $.fn.inputlengthAddress=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
           $(this).val($(this).val().replace(/([^0-9A-Za-z\s])/g,""));
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontrolAddress').inputlengthAddress();
</script>

