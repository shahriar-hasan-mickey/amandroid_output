<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var creditusageflag = els.get("creditusageflag");
var sevicerequestusageflag = els.get("sevicerequestusageflag");
%>

<!--Content Starts Here-->

<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

<ol class="breadcrumb cust_breadcrumb pull-left">

 <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
 
   <li class="active"><%-$.i18n.t('app.requests.debitcardusagectrl.debitcardusgctrl')%></li>
</ol>
 <div class="clearfix"></div>

	
      
              <div class="billpay cust_panel">

              <div class="newWiz">
                                <div class="steps done">
                                    <div>
                                        1
                                        <p><%-$.i18n.t('app.creditcard.cclimit.input')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.cclimit.verify')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.cclimit.confirm')%></p>
                                    </div>
                                </div>
                            </div>
							<div class="alert alert-info">
							<span class="msg"><%-$.i18n.t('app.requests.debitcardusagectrl.transseldcusage1')%></span>
							<p></p>
							<span class="msg"><%-$.i18n.t('app.requests.debitcardusagectrl.transseldcusage')%></span>
						  </div>
                     <!--Billpay Starts Here-->
                     <form role="form" class="form-inline">
					 <% if ( debitCardControlFetchDTO.length > 0) { %>
                       <ul>
                          <% _.each(debitCardControlFetchDTO,function(data,index){ %>
              
            <%if(data.ctrlfetcherrorcode!='MSI-VP-1005'){%>
               <li class="list-group">
                  <div class="d_msg">
                    <p><%-$.i18n.t('app.requests.debitcardusagectrl.debitcardno')%></p>
                     <p class="type cust_type"><%-data.debitCardnomasked%></p>
                  </div>
                    <div class="cc_control">
                      <div class="switchDiv" >
                       <span class="txt"><%-$.i18n.t('app.creditcard.cardusagecontrol.local')%></span>
                       <label  class="switch"  id="localCheckLabel" data-index="<%-index%>">
                          <input type="checkbox">
                          <span  class="slider round"></span>
                        </label>
                      </div>
                       <div class="switchDiv" >
                         <span class="txt"> <%-$.i18n.t('app.creditcard.cardusagecontrol.international')%></span>
                         <label  class="switch"  id="intCheckLabel" data-index="<%-index%>">
                            <input type="checkbox">
                            <span  class="slider round"></span>
                          </label>
                        </div>
                      <%if(data.ecommerceDBFlag=="Y"){%>
	           			<div class="switchDiv" id="switchDiv" >
	                       <span class="txt">   <%-$.i18n.t('app.creditcard.cardusagecontrol.ecommerce')%></span>
	                       <label  class="switch"  id="ecommCheckLabel" data-index="<%-index%>">
	                          <input type="checkbox">
	                          <span  class="slider round"></span>
	                        </label>
	                      </div>
             		<%}%>
                  <div id="errorcheckLabel<%-index%>" style="display:none">
                <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cardusagecontrol.errorcheckLabel')%></font></p>
              </div>

               </li>
               
           
                 <%}%>         
        <%});%>
                        </ul>
                        <div id="errorcheckLabelEnd" style="display:none">
                <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cardusagecontrol.errorcheckLabel')%></font></p>
              </div>
              <br/>
                        <button id="validatePoints" name="validatePoints" type="button" class="btn btn-success btn-block"><%-$.i18n.t('app.tedallalrewards.submit')%></button>
    			
				<a  href="#/servicerequestmenu" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.homefinance.cancel')%> </a>
				
                     </form>
					 <%}else if ( debitCardControlFetchDTO==null||debitCardControlFetchDTO==''||debitCardControlFetchDTO==undefined){%>
							<div class="alert alert-info">
								<span class="msg"><%-$.i18n.t('app.product.creditcard.nodata')%></span>
							</div>
							<br/><br/>
								<a  href="#/servicerequestmenu" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.login.backtohome')%></a>
					 <%}else{%>
						 	<div class="alert alert-info">
                   				<span class="msg"><%-errorDescription%></span>
                   			</div>
							<br/><br/>
				   		<a  href="#/servicerequestmenu" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.login.backtohome')%></a>
					 <%}%>
                  </div>

                  <br/>
                  <br/>
               </section>
               <!--Content Ends Here-->
            </div>
            <!--contentwrap Ends here -->
         </div>
         <!--bodywrap starts here -->
         <!-- footer area-->
        
      </div>
      

 <script>
  $(document).ready(function(){

    var els = new EncryptedLocalStorage('secret'); 
    var debitCardControlFetchDTO = els.get("debitCardControlFetchDTO");

        debitCardControlFetchDTO.forEach(function(item,index) {
            
         console.log(item.controlFlag);
            
            if(item.controlFlag == "N" )
            { 
            
              if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
          
             
           }
            
             if(item.controlFlag == "L" ) 
            { 
                
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
            if(item.controlFlag == "I") 
            { 
                
             if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
            if(item.ecommerceDBFlag == "Y") 
            { 
             	if(item.ecommerceFlag != "Y") 
            {   
		             if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active')){
		
		                $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
		                $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
		              }
	              }
            }
            
          });
    });

</script>
  
