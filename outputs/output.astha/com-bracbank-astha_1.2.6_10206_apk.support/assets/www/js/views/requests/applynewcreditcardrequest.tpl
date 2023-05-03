<%
var els = new EncryptedLocalStorage('secret');
 			var firstname =	els.get("userlogin");
		    var lastname =	els.get("lastName");
		    var idnoo =	els.get("employeeno");
		    var idtype =	els.get("idtype");
		    var nationalitycode =	els.get("nationality");
		    //var idplaceofissue  =	els.get("placeofidissue");
		   var idexpiry  =	els.get("hijiraidexpdate");
		   var gendercode  =	els.get("gender");
		   var phno = 	els.get("homephone");
		   var mobno = 	els.get("mobileforcc");
		   var email = 	els.get("emailid");
		   var zipcode = 	els.get("postalnumber");
		   var dep = 	els.get("departmentname");
		   var workextn = 	els.get("workext");
		   var dos = 	els.get("salaryreceivingdate");
		   var ename = 	els.get("name");
		   //var mobileno = els.get("mobileno");
		   var dob = 	els.get("birthdateforcc");
		   var empname = 	els.get("employeename");
		   var devicePlatform = els.get("device.platform");
		   var cancelfromcampaign=els.get("cancelfromcampaign");
%>
 
 <!--Content Starts Here-->
                  <a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest" ><%-$.i18n.t('app.requests.newcc.servicereq')%></a></li>
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
                  
                  <form role="form">
	                      	<div class="form-group required">
		                          <select name="cardtype" id="cardtype" class="form-control">
		                          <option value="" selected="selected"><%-$.i18n.t('app.requests.newcc.selectcardtype')%></option>
		                            <% if ( cardTypeList.length > 0 ) {%>
					        			<% _.each(cardTypeList,function(tagData){ %>
					        				<p>
												<%if(typeof(tagData.cardTypeDesc)!="undefined"){%>
													<option value="<%-tagData.cardTypeDesc%>~<%-tagData.cardTypeCode%>"><%-tagData.cardTypeDesc%></option>
												<%}else{%>
													<span class="nme"></span>
												<%}%>
											</p>
										<% }); %>
							        <%}%>
							       </select>
	                     	</div>
	                     	<div id="errorCardType" style="display:none">
	                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.newcc.validcardtype')%></font></p>
	                     	</div>
	                     	
	                     	<div class="form-group required">
		                          <select name="cardname" id="cardname" class="form-control">
		                          <option value="" selected="selected"><%-$.i18n.t('app.requests.newcc.selectcardname')%></option>
		                           <!-- <% if ( cardList.length > 0 ) {%>
					        			<% _.each(cardList,function(tagdata){ %>
					        				<p>
												<%if(typeof(tagdata.cardDesc)!="undefined"){%>
													<option value="<%-tagdata.cardDesc%>"><%-tagdata.cardDesc%></option>
												<%}else{%>
													<span class="nme"></span>
												<%}%>
											</p>
												<% }); %>
							        <%}%> -->
							       </select>
	                     	</div>
	                      	<div id="errorCardName" style="display:none">
	                        		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.newcc.validcardname')%></font></p>
	                      	</div>
	                      	
                       		<!--<div class="form-group">
		                       	<select name="product" id="product" class="form-control">
		                          <option value="" selected="selected"><%-$.i18n.t('app.requests.newcc.selectproduct')%></option>
		                            <% if ( productTypeList.length > 0 ) {%>
					        			<% _.each(productTypeList,function(tagdata){ %>
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
                     		</div>-->
                     		
                       		<div class="infolbl row">
                        		<div class="col-xs-6">
                            		
			                               <p class="lbl"><%-$.i18n.t('app.requests.newcc.firstname')%></p>
			                    </div>
			                    <div class="col-xs-6">
			                               <p name="firstname" id="firstname"><b>
				                               	
				                               		<%if(typeof(firstname)!=""){%>
				                             			<%-firstname%>
				                               		<%}else{%>
														<span class="nme"></span>
													<%}%>
			                               </b></p>
                             	</div>
                             </div>
                             
                             

                        
                        
                      <!-- Start from account -->
                   <div class="dropselect" data-title="<%-$.i18n.t('app.requests.newcc.casaacc')%>" >
                   	<% if ( casaAcc.length > 0 ) {%>
			        	<% _.each(casaAcc,function(tagData){ %>
			        <%if((tagData.currencyCode)=="KWD"){%>
                       	<label class="list-group-item">
                                   <input type="radio" value="<%-tagData.accountNumber%>~<%-tagData.accountNumberMasked%>" name="frmacno" id="frmacno"/>
											<p>
													<%if(typeof(tagData.accountShortName)!="undefined"){%>
														<span class="nme" id="accno" name="accname"><%-tagData.accountShortName%></span>
													<%}else{%>
														<span class="nme"></span>
													<%}%>
													<%if(typeof(tagData.currencyCode)!="undefined"){%>
														<small class="cur pull-right"><%-tagData.currencyCode%></small>
													<%}else{%>
														<span class="nme"></span>
													<%}%>
											</p>
											<p>
													<%if(typeof(tagData.accountNumberMasked)!="undefined"){%>
														<small class="text-muted" id="accno" name="accno"><%-tagData.accountNumberMasked%>
													</small>
													<%}else{%>
														<span class="nme"></span>
													<%}%>
													<%if(typeof(tagData.availableBalance)!="undefined"){%>
														<span class="amt pull-right"><%- checkAmount($.formatNumber(tagData.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
													<%}else{%>
														<span class="nme"></span>
													<%}%>
											</p>

							</label>
				             <%}%>
							
							
							 <% }); %> 
					<%}else{%>
					   <div class="alert alert-info">
								 <span class="msg"><%-$.i18n.t('app.creditcard.activatecc.nocard')%></span>
						</div>
				    <%}%>
                       </div>
                       <!-- End from account -->
                        <div id="errorFromAct" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
                        </div>
                       <div class="infolbl row required">
                       		<div class="col-xs-6">
                               <p class="lbl"><%-$.i18n.t('app.requests.newcc.mobno')%></p>
                            </div>
                            <div class="col-xs-6">
                               <p name="mobno" id="mobno"><b>
                               <%if(typeof(mobno)!="undefined" || typeof(mobno)!="null"){%>
                             			<%-mobno%>
                               <%}else{%>
									<span class="nme"></span>
								<%}%>
                               </b></p>
                           </div>
                           </div>
                             <div class="infolbl row ">
                       		<div class="col-xs-6">
                               <p class="lbl"><%-$.i18n.t('app.requests.newcc.dob')%></p>
                            </div>
                            <div class="col-xs-6">
                               <p name="dob" id="dob"><b>
                               <%if(typeof(dob)!="undefined" || typeof(dob)!="null"){%>
                             			<%-dob%>
                               <%}else{%>
									<span class="nme"></span>
								<%}%>
                               </b></p>
                            </div>
                        </div>
                      <div class="form-group required">
                          <select name="selectcity" id="selectcity" class="form-control">
                          <option value="" selected="selected"><%-$.i18n.t('app.requests.newcc.selectcity')%></option>
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
                      <%if(typeof(empname)!="undefined" || typeof(empname)!="null"){%>
                           <input type="text"  autocomplete='off'  class="form-control lenthcontrolbeneemp" name="empname" id="empname" value="<%-empname%>" maxlength="50" placeholder="<%-$.i18n.t('app.requests.newcc.empname')%>">
                      <%}else{%>
							<input type="text"  autocomplete='off'  class="form-control lenthcontrolbeneemp" name="empname" id="empname" value="">
					  <%}%>
                      </div>
                      <% if ( devicePlatform == "Android" ) { %>
                      <div class="form-group required">
                           <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="2" id="los" name="los" placeholder="<%-$.i18n.t('app.requests.newcc.lengthofservice')%>">
                      </div>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="15" id="sal" name="sal" placeholder="<%-$.i18n.t('app.requests.newcc.sal')%>">
                      </div>
                      <%}else{%>
                      <div class="form-group required">
                           <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="2" id="los" name="los" placeholder="<%-$.i18n.t('app.requests.newcc.lengthofservice')%>">
                      </div>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="15" id="sal" name="sal" placeholder="<%-$.i18n.t('app.requests.newcc.sal')%>">
                      </div>
                      <%}%>
                      <div class="form-group">
                      		<label class="checkinput small active  pull-left">
	                          	<input type="checkbox" name="iagreee" id="iagreee" class="check-hidden" checked="checked">
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
                       <% if ( cancelfromcampaign == "1" ) { %>
                         	<a href="#/dateline" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.readycash.cancel')%></a>
					   <%}else {%>
                       		<a href="#/servicerequest"  class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.newcc.cancel')%></a>
                       <%}%>

                     </form>
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<script>
        $(function(){
            $(".dropselect").dropselect();
        });
        $(".content").animate({ scrollTop: 0 }, "fast");
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
		$.fn.inputlengthbeneemp=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
					//$(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
					
					var notallowed ="!@#$%^&*()_+=-{};:\"?><|\/,'[].";
					var notallowednumber ="0123456789";
					var orignalValue=$(this).val();
					for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
					 		if(notallowed.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
					 for (var i=0;i<= 1;i++){
						var atchar = orignalValue[i];
					 		if(notallowednumber.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
					 $(this).val(orignalValue);
	            	 if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	            		var values=$(this).val();
						if(e.keyCode != '32') {
			            	values=values.substring(0, values.length - 1);
				      	}
	           			$(this).val(values).focus();
	              		e.preventDefault();
	            	}
	     		});
	   		});
		};
	}(jQuery));
	$('.lenthcontrolbeneemp').inputlengthbeneemp();
	
</script>

