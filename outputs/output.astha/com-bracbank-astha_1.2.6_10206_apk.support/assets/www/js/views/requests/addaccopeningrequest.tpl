 <%
 var els=new EncryptedLocalStorage('secret');

 var devicePlatform = els.get("device.platform");

 
 var langs = $.i18n.lng();
 var allowedForAccount=els.get("allowedForAccount");
 var maximumLimitReached=els.get("maximumLimitReached");
 var smeNotAllowed=els.get("smeNotAllowed");
 var primaryAccountInnactive=els.get("primaryAccountInnactive");
 var address=els.get("customerAddress");
 var custname = els.get("custname");
 var custcardname;
				var custname1,custname2;
				if(custname.length<=24){
					custcardname = custname;
				}else{
				//custname1=custname.substring(0, 2);
				//custname2 = custname.slice(-2);
				//custname2 = custname.match(/\w+$/)[0];
				custname = custname.replace(/([a-z]+) .* ([a-z]+)/i, "$1 $2");
				custcardname = custname;
				}
 %>
 
 <!--Content Starts Here-->
<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.additionalAccount.additionalAccountOpening')%></li>
                  </ol>
               

                    <div class="clearfix"></div>
                    <br/>
					<% if(allowedForAccount) { %> 
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.homefinance.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.requests.homefinance.verify')%></p></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.homefinance.confirm')%></p></div></div>
                  </div>
                  <!--Step Control Ends Here-->
                     <!--One Time Billpay Starts Here-->
                   
                     <form role="form">
                        <div class="form-group required">
                          <select name="accountType" id="accountType" class="form-control">
                            <option value=""><%-$.i18n.t('app.requests.additionalAccount.accounttype')%></option>
                            <!-- for the option are hard coded -->
                            <%  _.each(accountTypeList,function(data){ %>
								<% if(langs=='en-US'){ %>
									<option value="<%-data.acctTypeCode%>~<%-data.acctTypeCodeEng%>" ><%-data.acctTypeCodeEng%></option>
								<%}else{%>
									<option value="<%-data.acctTypeCode%>~<%-data.acctTypeCodeArb%>"><%-data.acctTypeCodeArb%></option>
								<% } %>                            	
	            			<% }); %>
	            %>
                          </select>
                       </div>
                       <div class="form-group required">
                          <select name="currencyType"  id="currencyType" class="form-control">
                            <option value="" selected="selected"><%-$.i18n.t('app.requests.additionalAccount.currency')%></option>
                          </select>
                       </div>
                       <div class="form-group required">
                          <select name="purposeofAccount" id="purposeofAccount" class="form-control">
                            <option value="" selected="selected"><%-$.i18n.t('app.requests.additionalAccount.purpose')%></option>
                            
                            <!-- for the option are hard coded -->
                             <%  _.each(purposeList,function(data){ %>
                            	<% if(langs=='en-US'){ %>
									<option value="<%-data.purpCode%>~<%-data.purpEngCode%>" ><%-data.purpEngCode%></option>
								<%}else{%>
									<option value="<%-data.purpCode%>~<%-data.purpArbCode%>"><%-data.purpArbCode%></option>
								<% } %>
	            			<% }); %>
                          </select>
                       </div> 
                        <div class="form-group " id="debitCardDiv" style="display:none">
                        <label><%-$.i18n.t('app.requests.additionalAccount.debitcardrequiredQues')%></label><br/>
                                                  <div class="btn-group" data-toggle="buttons">
                          <label class="btn btn-default" id="labelYes">
                            <input type="radio" name="debitCardNeed" id="debitYes" value="yes"> <%-$.i18n.t('app.requests.additionalAccount.yes')%>
                          </label>
                          <label class="btn btn-success active" id="labelNo">
                            <input type="radio" name="debitCardNeed" id="debitNo" value="no" checked><%-$.i18n.t('app.requests.additionalAccount.no')%>
                          </label>
					</div>
                       </div>   
                        
					<div id="selectModeOfDelivery" style="display:none">
					
					  <div class="form-group" >
                        <label><%-$.i18n.t('app.requests.additionalAccount.modeofdeliveryQues')%></label><br/>
                         <div class="btn-group" data-toggle="buttons">
                          <label class="btn btn-success active" id="labelBranch">
                            <input type="radio" name="modeOfDelivery" checked value="branch" id="Branch"> <%-$.i18n.t('app.requests.additionalAccount.deliveryBranch')%>
                          </label>
                          <label class="btn btn-default" id="labelPost">
                            <input type="radio" name="modeOfDelivery" id="Post" value="post"> <%-$.i18n.t('app.requests.additionalAccount.deliveryPost')%>
                          </label>
					</div> 
					</div>					
					  
					 </div>
					 </div>
                       <div class="alert alert-info" id="branchinfoo" style="display:none">
	                                			<h4 style="text-align:center"><%-$.i18n.t('app.requests.additionalAccount.collectatmcard')%></h4>
       					</div>
                        <div id="errorDelivery" style="display:none">
                      		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.requestAccountOpening.selectDeliveryMode')%></font></p>
					  </div>
               <!--   <div class="form-group" style="display:none" id="selectBranch">
                          <select name="" id="" class="form-control">
                            <option value="" selected="selected"><%-$.i18n.t('app.requests.additionalAccount.selectBranch')%></option>
                            <option value="Business">Riyadh</option>
           
                          </select>
                       </div> -->
                       
                       
                       
                       <div class="form-group">
                      <div id="modifyAddress"  style="display:none"> 
                      <label><%-$.i18n.t('app.requests.additionalAccount.nameOnCard')%></label>
					<div class="form-group required" >					 
						<!--<input value="<%-custname%>" name="debitcardname" id="debitcardname"  placeholder="<%-$.i18n.t('app.requests.additionalAccount.enternameOnCard')%>"   type="text" class="form-control lenthcontrolname" readonly>-->
						<input type="text" autocomplete='off'  class="form-control" maxlength="24" value="<%- custcardname %>"  id="debitcardname" name="debitcardname" readonly>
					  </div>
					   <div id="errorNameOnCard" style="display:none">
                      		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.requestAccountOpening.plsinputname')%></font></p>
					  </div>
                      <div >
					  <%-$.i18n.t('app.requests.additionalAccount.branchdtname')%>
					  </div>
					  <!--
                      <a id="addaccopeningurl" name="addaccopeningurl"><%-$.i18n.t('app.requests.additionalAccount.modifyAddress')%></a>                     
                        <textarea class="form-control text-left" readonly id="address">
							<%- address %>
                       </textarea>
					   -->
                       </div>
                       </div>
                       

                      <div class="form-group">
                          <label class="checkinput small ">
               <input type="checkbox" class="check-hidden" id="checkConfirm">
                          <%-$.i18n.t('app.requests.additionalAccount.confirmMainAccount')%>                          
                        </label>
                      </div>
                      <div class="clearfix"></div>
                      <div id="errorCheckBox" style="display:none">
                      		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.requestAccountOpening.checkConfirm')%></font></p>
					  </div>
					  
                      <div class="clearfix"></div>
                      <br/>
                       <input type="button" id="addAccount" name="addAccount" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.homefinance.submit')%>"/>
                        
                       <a href="#/servicerequestmenu"class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.homefinance.cancel')%></a>
                       

                     </form>
                  <!--One time Billpay Ends Here-->
                  <br/>
                  <% } else if(maximumLimitReached) { %>
                  <div class="alert alert-info" id="maximumLimitReached">
					<span class="msg"><%-$.i18n.t('app.requests.additionalAccount.limitReached')%> </span>
				 </div> 
				 <% } else if(smeNotAllowed){ %>
				 <div class="alert alert-info" id="smeCustomerNotAllowed">
					<span class="msg"><%-$.i18n.t('app.requests.additionalAccount.notAllowedForSME')%> </span>
				 </div>
				 <% } else if(primaryAccountInnactive) { %>
				<div class="alert alert-info" id="primaryInactive">
					<span class="msg"><%-$.i18n.t('app.requests.additionalAccount.primaryAccountInactive')%> </span>
				 </div>
				 <% } %>
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
