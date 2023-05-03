<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var creditcardcontrols = els.get('creditcardcontrols');
console.log("confirm---",creditcardcontrols);
var creditusageflag = els.get("creditusageflag");
%>

<!--Content Starts Here-->
<%if(creditusageflag=='Y'){%>
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<%}else{%>
<a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<%}%>
<ol class="breadcrumb cust_breadcrumb pull-left">
   <%if(creditusageflag=='Y'){%>
   <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cashondemandcc.creditcards')%></a></li>
 <%}else{%>
 <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.newcc.servicereq')%></a></li>
 <%}%>
   <li class="active"><%-$.i18n.t('app.creditcard.general.ccusagectrl')%></li>
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
                                 <p><%-$.i18n.t('app.creditcard.convertinstall.creditcardnumber')%></p>
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
                      <div class="switchDiv" >
                       <span class="txt">   <%-$.i18n.t('app.creditcard.cardusagecontrol.ecommerce')%></span>
                       <label  class="switch"  id="ecommCheckLabel" data-index="<%-index%>">
                          <input type="checkbox" disabled>
                          <span  class="slider round"></span>
                        </label>
                      </div>
                 </div>
                           </li>
                          <li>
                    <table class="table table-bordered table-striped" id="showDateContent<%-index%>" style="display:none;"> 
                      <tbody>
                      <tr>
                          <td><%-$.i18n.t('app.transfer.standinginstruction.from')%></td>
                          <td><%-data.custartdate%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.transfer.standinginstruction.to')%></td>
                          <td><%-data.cuenddate%></td>
                      </tr>
                        </tbody>
                    </table>
                  </li>
                     </ul>
            <%});%>
                        
                        <a class="btn btn-success btn-block" href="#/creditCardusagecontrolOTP"><%-$.i18n.t('app.creditcard.cashondemandcc.confirm')%></a>
                        <a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
                        
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
         console.log(item.ecomind, item.posind ,item.atmind  ,item.motoind);
            if(item.custartdate){
                // var startdte = item.custartdate;
                // var startdte_yyyy = startdte.substr(0, 4);
                // var startdte_mm = (startdte.substr(4, 2))
                // // < 10 ? '0'+(startdte.substr(4, 2)): (startdte.substr(4, 2));
                // var startdte_dd = (startdte.substr(6, 2))
                // // < 10 ? '0'+(startdte.substr(6, 2)): (startdte.substr(6, 2));
                // console.log(startdte_yyyy,startdte_mm,startdte_dd);
                // var formattedStartdte = startdte_yyyy + '/' + startdte_mm + '/'+ startdte_dd;
                var formattedStartdte = item.custartdate;
                $('#startDate[data-index="'+index+'"]').val(formattedStartdte);
            }
            if(item.cuenddate){
                // var enddte = item.cuenddate;
                // var enddte_yyyy = enddte.substr(0, 4);
                //  var enddte_mm = (enddte.substr(4, 2))
                //  // < 10 ? '0'+(enddte.substr(4, 2)): (enddte.substr(4, 2));
                // var enddte_dd = (enddte.substr(6, 2))
                //  // < 10 ? '0'+(enddte.substr(6, 2)): (enddte.substr(6, 2));
                // console.log(enddte_yyyy,enddte_mm,enddte_dd);
                // var formattedEnddte = enddte_yyyy + '/' + enddte_mm + '/'+ enddte_dd;
                var formattedEnddte = item.cuenddate;
                $('#endDate[data-index="'+index+'"]').val(formattedEnddte);
            }
           // if(item.atmind == 1  && item.ecomind == 1 && item.motoind == 1  && item.posind == 1)
            if(item.localflagval == 'Y'  && item.interflagval == 'Y' && item.ecomflagval == 'Y')
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
          
              if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {
                console.log($('#ecommCheckLabel[data-index="'+index+'"]'));
                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
           }
          //  if(item.atmind == 1  && item.ecomind == 0 && item.motoind == 0 && item.posind == 1) 
 		if(item.localflagval == 'Y'  && item.interflagval == 'Y' && item.ecomflagval == 'N')
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
		if(item.localflagval == 'Y'  && item.interflagval == 'N' && item.ecomflagval == 'Y') 
            {
				$('#showDateContent'+index).show();
             if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#localCheckLabel[data-index="'+index+'"]'));
                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
          if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {
                console.log($('#ecommCheckLabel[data-index="'+index+'"]'));
                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
	//  if(item.atmflag == 0 && item.ecommflag == 0 &&  item.motoflag == 0 &&  item.posflag == 0) 
		if(item.localflagval == 'N'  && item.interflagval == 'Y' && item.ecomflagval == 'Y') 
            { 
			$('#showDateContent'+index).show();
               if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#intCheckLabel[data-index="'+index+'"]'));
                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
               if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {
                console.log($('#ecommCheckLabel[data-index="'+index+'"]'));
                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            } 
           //   if(item.atmind == 0  &&item.ecomind == 1  && item.motoind == 1  && item.posind == 0)
		if(item.localflagval == 'N'  && item.interflagval == 'N' && item.ecomflagval == 'Y') 
            { 
			$('#showDateContent'+index).show();
              if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {
                console.log($('#ecommCheckLabel[data-index="'+index+'"]'));
                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            } 
          //   if(item.atmind == 3 && item.ecomind == 0 && item.motoind == 0  && item.posind == 3) 
		if(item.localflagval == 'N'  && item.interflagval == 'Y' && item.ecomflagval == 'N') 
            { 
			$('#showDateContent'+index).show();
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#intCheckLabel[data-index="'+index+'"]'));
                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
           // if(item.atmind == 2 && item.ecomind == 0 &&  item.motoind == 0 &&  item.posind == 2) 
		if(item.localflagval == 'Y'  && item.interflagval == 'N' && item.ecomflagval == 'N')
            { 
			$('#showDateContent'+index).show();
              if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){
                console.log($('#localCheckLabel[data-index="'+index+'"]'));
                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
          });
    });

</script>
