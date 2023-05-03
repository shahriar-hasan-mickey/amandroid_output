<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var creditcardcontrols = els.get('creditcardcontrols');
console.log(creditcardcontrols);
var creditusageflag = els.get("creditusageflag");
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
                    <form role="form">
                      <% _.each(creditcardcontrols,function(data,index){ %>
                        <ul>
                        
                           <li class="list-group">
                              <div class="d_msg">
                                 <p><%-$.i18n.t('app.requests.debitcardusagectrl.debitcardno')%></p>
                                 <p class="type cust_type"><%-data.hidmaskcardnumber%></p>

                              </div>
                              
                              <div class="cc_control">
                      <div class="switchDiv" >
                       <span class="txt"><%-$.i18n.t('app.creditcard.cardusagecontrol.local')%></span>
                       <label  class="switch"  id="localCheckLabel" data-index="<%-index%>">
                          <input type="checkbox" disabled>
                          <span  class="slider round"></span>
                        </label>
                      </div>
                       <div class="switchDiv" >
                         <span class="txt"> <%-$.i18n.t('app.creditcard.cardusagecontrol.international')%></span>
                         <label  class="switch"  id="intCheckLabel" data-index="<%-index%>">
                            <input type="checkbox" disabled>
                            <span  class="slider round"></span>
                          </label>
                        </div>
                        <%if(data.ecommerceDBFlag=="Y"){%>
                        <div class="switchDiv" >
                       <span class="txt">   <%-$.i18n.t('app.creditcard.cardusagecontrol.ecommerce')%></span>
                       <label  class="switch"  id="ecommCheckLabel" data-index="<%-index%>">
                          <input type="checkbox" disabled>
                          <span  class="slider round"></span>
                        </label>
                      </div>
                      <%}%>
                 </div>
                           </li>
                          
                     </ul>
            <%});%>
                        
                        <a class="btn btn-success btn-block" href="#/debitCardusagecontrolOTP"><%-$.i18n.t('app.creditcard.cashondemandcc.confirm')%></a>
                        <a href="#/servicerequestmenu" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
                        
                     </form>
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
    console.log('ddd');
    var els = new EncryptedLocalStorage('secret'); 
    var creditcardcontrols = els.get("creditcardcontrols");
    console.log(creditcardcontrols);
        creditcardcontrols.forEach(function(item,index) {
		$('#showDateContent'+index).hide();
         console.log(item.controlFlag);
            
           // if(item.atmind == 1  && item.ecomind == 1 && item.motoind == 1  && item.posind == 1)
            if(item.localflagval == 'Y'  && item.interflagval == 'Y' )
            { 
			$('#showDateContent'+index).show();
              if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#localCheckLabel[data-index="'+index+'"]'));
                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#intCheckLabel[data-index="'+index+'"]'));
                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
          
             
           }
          
	 // if(item.atmflag == 0 && item.ecommflag == 0 &&  item.motoflag == 0 &&  item.posflag == 0)
		if(item.localflagval == 'Y'  && item.interflagval == 'N') 
            {
				$('#showDateContent'+index).show();
             if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#localCheckLabel[data-index="'+index+'"]'));
                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
          
            }
	//  if(item.atmflag == 0 && item.ecommflag == 0 &&  item.motoflag == 0 &&  item.posflag == 0) 
		if(item.localflagval == 'N'  && item.interflagval == 'Y' ) 
            { 
			$('#showDateContent'+index).show();
               if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#intCheckLabel[data-index="'+index+'"]'));
                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
               
            } 
          
          //   if(item.atmind == 3 && item.ecomind == 0 && item.motoind == 0  && item.posind == 3) 
		if(item.localflagval == 'N'  && item.interflagval == 'Y' ) 
            { 
			$('#showDateContent'+index).show();
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#intCheckLabel[data-index="'+index+'"]'));
                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
           // if(item.atmind == 2 && item.ecomind == 0 &&  item.motoind == 0 &&  item.posind == 2) 
		if(item.localflagval == 'Y'  && item.interflagval == 'N')
            { 
			$('#showDateContent'+index).show();
              if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#localCheckLabel[data-index="'+index+'"]'));
                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
            
            
             if(item.ecommerceDBFlag == "Y") 
            { 
             	if(item.ecommerceFlag != "Y") 
            { 
			$('#showDateContent'+index).show();
              if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#localCheckLabel[data-index="'+index+'"]'));
                $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
            }
          });
    });

</script>
