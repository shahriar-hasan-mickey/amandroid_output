   <%
		var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var creditcardcontrols = els.get('creditcardcontrols');
console.log("----------",creditcardcontrols);
var creditusageflag = els.get("creditusageflag");
var dcusagecontrolmodify = els.get('debitCardControlUpdateresultDTO');
console.log("dcusagecontrolmodify========",dcusagecontrolmodify);
var errordesc = els.get("errordesc");
			%>       
 

<!--Content Starts Here-->
  
<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

<ol class="breadcrumb cust_breadcrumb pull-left">
  
 <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
 
   <li class="active"><%-$.i18n.t('app.requests.debitcardusagectrl.debitcardusgctrl')%></li>
</ol>


                    <div class="clearfix"></div>
                    <br/>
                       <div class="newWiz">
                  <div class="steps done"><div>1  <p><%-$.i18n.t('app.creditcard.cardusagecontrol.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2
                      <p><%-$.i18n.t('app.creditcard.cardusagecontrol.review')%></p></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.creditcard.cardusagecontrol.confirm')%></p></div></div>
                  </div>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->

                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
				<!--	<div class="alert alert-success text-center">

<strong><%-$.i18n.t('app.creditcard.cardusagecontrol.successmsg')%></strong><%-$.i18n.t('app.creditcard.cardusagecontrol.successmsg1')%>

                                </div>-->

              <div class="billpay cust_panel">
              
                         
                     <!--Billpay Starts Here-->
                      <form role="form">
                      <% _.each(creditcardcontrols,function(data,index){ %>
                        <ul>
                		  <% 
						  console.log("dcusagecontrolmodifyindex",dcusagecontrolmodify[index].statuscode);
						  if(dcusagecontrolmodify && dcusagecontrolmodify[index].statuscode){ 
						  %> 
                      <li>
                    <% 
					console.log("dcusagecontrolmodifyindex+++++++",dcusagecontrolmodify[index].statuscode);
					if(dcusagecontrolmodify[index].statuscode == 'MSI-VP-0000' || dcusagecontrolmodify[index].statuscode == 'MSI-POST-0000'){ 
					%>
                         <div class="alert alert-success  text-center">
                          <strong> <%-$.i18n.t('app.creditcard.cardusagecontrol.successEach')%></strong>
                        </div>
                
                          <% 
						  console.log("dcusagecontrolmodifyindex---------",dcusagecontrolmodify[index].statuscode);
						  } else if(dcusagecontrolmodify[index].statuscode == 'MSI-VP-9999' || dcusagecontrolmodify[index].statuscode == 'MSI-POST-9999'){ 
						  %>
                        <div class="alert alert-danger text-center">
                         <strong><%-$.i18n.t('app.creditcard.cardusagecontrol.failureEach')%></strong>
                        </div>
                         <%}else{%>
                        <div class="alert alert-danger text-center">
                         <strong><%-dcusagecontrolmodify[index].statusdescription%></strong>
                        </div>
                       <%}%>
                        </li>
                        <%}%>
                           
                              
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
                      
                  
                  
                     </form>
                     <br/>
                     <a class="btn btn-primary btn-block" href="#/servicerequestmenu"><%-$.i18n.t('app.creditcard.cclimit.home')%></a>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
               </section>
<!--Content Ends Here-->
<script>
  $(document).ready(function(){
    console.log('ddd');
    var els = new EncryptedLocalStorage('secret'); 
    var creditcardcontrols = els.get("creditcardcontrols");
    console.log("dccard---------",creditcardcontrols);
        creditcardcontrols.forEach(function(item,index) {
		
         console.log(item.controlFlag);
            
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
    if(item.localflagval == 'Y'  && item.interflagval == 'N' ) 
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
    if(item.localflagval == 'Y'  && item.interflagval == 'N' )
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