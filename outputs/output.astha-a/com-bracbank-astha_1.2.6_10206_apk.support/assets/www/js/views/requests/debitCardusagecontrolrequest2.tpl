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
							<span class="msg"><%-$.i18n.t('app.requests.debitcardusagectrl.transseldcusage')%></span>
						  </div>
                     <!--Billpay Starts Here-->
                     <form role="form" class="form-inline">
					 <% if ( ccusagecontrolfetchDTO.length > 0) { %>
                       <ul>
                          <% _.each(ccusagecontrolfetchDTO,function(data,index){ %>
              
            <%if(data.ctrlfetcherrorcode!='MSI-VP-1005'){%>
               <li class="list-group">
                  <div class="d_msg">
                    <p><%-$.i18n.t('app.requests.debitcardusagectrl.debitcardno')%></p>
                     <p class="type cust_type"><%-data.ccmaskednumber%></p>
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
                      <div class="switchDiv" >
                       <span class="txt">   <%-$.i18n.t('app.creditcard.cardusagecontrol.ecommerce')%></span>
                       <label  class="switch"  id="ecommCheckLabel" data-index="<%-index%>">
                          <input type="checkbox">
                          <span  class="slider round"></span>
                        </label>
                      </div>
                       <div class="cc_control panel" id="showDateInputs"  data-index="<%-index%>">
              <div class="col-xs-6" id="showDateInputStart" data-index="<%-index%>"  style="display:none">
                <span class="txt"><%-$.i18n.t('app.transfer.standinginstruction.from')%></span>
               <div class="cust_panel cust_group has-feedback required" >
      <% if ( devicePlatform == "Android" ) { %>
                          <input type="text" autocomplete='off'  data-index="<%-index%>" class="form-control reset_padding nativedatepicker" id="startDate" name="startDate"  placeholder="<%-$.i18n.t('app.transfer.standinginstruction.start')%>" readonly>
        <%}else{%>
                          <input type="text" autocomplete='off'  data-index="<%-index%>" class="form-control reset_padding nativedatepicker" id="startDate" name="startDate" placeholder="<%-$.i18n.t('app.transfer.standinginstruction.start')%>" readonly>
        <%}%>
                          <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                        </div>
                      
                        <div id="errorFromDate<%-index%>" style="display:none">
                <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cardusagecontrol.errorFromDate')%></font></p>
              </div>
              <div id="errorFromDatePast<%-index%>" style="display:none">
                <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cardusagecontrol.errorFromDatePast')%></font></p>
              </div>
            </div>
             <div class="col-xs-6" id="showDateInputEnd" data-index="<%-index%>"  style="display:none">
               <span class="txt"><%-$.i18n.t('app.transfer.standinginstruction.to')%></span>
                        <div  class="cust_panel cust_group has-feedback required" >
      <% if ( devicePlatform == "Android" || devicePlatform == "Win32NT") { %>
                          <input type="text" autocomplete='off'  data-index="<%-index%>" class="form-control reset_padding nativedatepicker" id="endDate" name="endDate" placeholder="<%-$.i18n.t('app.transfer.standinginstruction.end')%>" readonly>
        <%}else{%>
                          <input type="text" autocomplete='off'  data-index="<%-index%>" class="form-control reset_padding nativedatepicker" id="endDate" name="endDate" placeholder="<%-$.i18n.t('app.transfer.standinginstruction.end')%>" readonly>
        <%}%>
                          <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                           <div id="errorToDate<%-index%>" style="display:none">
                <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cardusagecontrol.errorToDate')%></font></p>
              </div>
               <div id="errorToDatePast<%-index%>" style="display:none">
                <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cardusagecontrol.errorToDatePast')%></font></p>
              </div>
              <div id="errorToDateGreater<%-index%>" style="display:none">
                <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cardusagecontrol.errorToDateGreater')%></font></p>
              </div>
                        </div>
              </div>
                        </div>
                 </div>
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
					 <%}else if ( ccusagecontrolfetchDTO==null||ccusagecontrolfetchDTO==''||ccusagecontrolfetchDTO==undefined){%>
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
    var ccusagecontrolfetchDTO = els.get("ccusagecontrolfetchDTO");

        ccusagecontrolfetchDTO.forEach(function(item,index) {
            $('#showDateInputStart[data-index="'+index+'"]').hide();
            $('#showDateInputEnd[data-index="'+index+'"]').hide();
              $('#showDateInputs[data-index="'+index+'"]').hide();
         console.log(item.ecommflag, item.posflag ,item.atmflag  ,item.motoflag);
            if(item.usagestartdate && /^\d+$/.test(item.usagestartdate)){
                  
              
                var startdte = item.usagestartdate;
                var startdte_yyyy = startdte.substr(0, 4);
                var startdte_mm = (startdte.substr(4, 2))
                // < 10 ? '0'+(startdte.substr(4, 2)): (startdte.substr(4, 2));
                var startdte_dd = (startdte.substr(6, 2))
                // < 10 ? '0'+(startdte.substr(6, 2)): (startdte.substr(6, 2));

                var formattedStartdte = startdte_dd + '/'+ startdte_mm + '/'+startdte_yyyy;
                $('#startDate[data-index="'+index+'"]').val(formattedStartdte);
            }
            if(item.usageendate && /^\d+$/.test(item.usageendate)){

              var enddte = item.usageendate;
                var enddte_yyyy = enddte.substr(0, 4);
                 var enddte_mm = (enddte.substr(4, 2))
                 // < 10 ? '0'+(enddte.substr(4, 2)): (enddte.substr(4, 2));
                var enddte_dd = (enddte.substr(6, 2))
                 // < 10 ? '0'+(enddte.substr(6, 2)): (enddte.substr(6, 2));

                var formattedEnddte =  enddte_dd + '/' + enddte_mm + '/'+ enddte_yyyy;
                $('#endDate[data-index="'+index+'"]').val(formattedEnddte);
            }
            if(item.atmflag == 1  && item.ecommflag == 1 && item.motoflag == 1  && item.posflag == 1)
            { 
            $('#showDateInputStart[data-index="'+index+'"]').show();
            $('#showDateInputEnd[data-index="'+index+'"]').show();
             $('#showDateInputs[data-index="'+index+'"]').show();
              if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
          
              if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {

                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
           }
            if(item.atmflag == 1  && item.ecommflag == 0 && item.motoflag == 0 && item.posflag == 1) 
            {
                $('#showDateInputStart[data-index="'+index+'"]').show();
                 $('#showDateInputEnd[data-index="'+index+'"]').show();
                 $('#showDateInputs[data-index="'+index+'"]').show();
             if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            } 
	    
	           if(item.atmflag == 2  && item.ecommflag == 1 && item.motoflag == 1 && item.posflag == 2) 
            {
                $('#showDateInputStart[data-index="'+index+'"]').show();
                $('#showDateInputEnd[data-index="'+index+'"]').show();
                $('#showDateInputs[data-index="'+index+'"]').show();
              if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
          if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {
               

                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            } 

	       if(item.atmflag == 3  && item.ecommflag == 1 && item.motoflag == 1 && item.posflag == 3) 
            {
                $('#showDateInputStart[data-index="'+index+'"]').show();
                  $('#showDateInputEnd[data-index="'+index+'"]').show();
                  $('#showDateInputs[data-index="'+index+'"]').show();
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
               if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {

                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            } 

             if(item.atmflag == 0  &&item.ecommflag == 1  && item.motoflag == 1  && item.posflag == 0)
            { 
                $('#showDateInputStart[data-index="'+index+'"]').show();
            $('#showDateInputEnd[data-index="'+index+'"]').show();
            $('#showDateInputs[data-index="'+index+'"]').show();
                if(!$('#ecommCheckLabel[data-index="'+index+'"]').hasClass('active'))
              {

                 $('#ecommCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#ecommCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            } 
             if(item.atmflag == 3 && item.ecommflag == 0 && item.motoflag == 0  && item.posflag == 3) 
            { 
                $('#showDateInputStart[data-index="'+index+'"]').show();
            $('#showDateInputEnd[data-index="'+index+'"]').show();
            $('#showDateInputs[data-index="'+index+'"]').show();
              if(!$('#intCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#intCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                 $('#intCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
            if(item.atmflag == 2 && item.ecommflag == 0 &&  item.motoflag == 0 &&  item.posflag == 2) 
            { 
                $('#showDateInputStart[data-index="'+index+'"]').show();
            $('#showDateInputEnd[data-index="'+index+'"]').show();
            $('#showDateInputs[data-index="'+index+'"]').show();
             if(!$('#localCheckLabel[data-index="'+index+'"]').hasClass('active')){

                $('#localCheckLabel[data-index="'+index+'"]').find('input:checkbox:first').attr("checked", "checked");
                $('#localCheckLabel[data-index="'+index+'"]').addClass('active');
              }
            }
          });
    });

</script>
  
