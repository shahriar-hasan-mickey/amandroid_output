<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = getAccountDTO();
	var tokenSoftCharges = els.get("tokenSoftCharges");	
%>
<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="#/servicerequest" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.service.requestsofttoken')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						       <section class="content">
        <form method="post" action="#">
        <div class="logWit small">
          <div class="row">
            <div class="col-xs-6 col-sm-6 pr5">
              <a href="#/requesthardtoken" class="text-center" >
                <span class="menu_icon ico-xs hardToken"></span>
                <p class="small m0"><%-$.i18n.t('app.service.hardtoken')%></p>
              </a>
            </div>
            <div class="col-xs-6 col-sm-6 pl5">
              <a href="#/requestsofttoken" class="text-center active">
                <span class="menu_icon ico-xs softToken"></span>
                <p class="small m0"><%-$.i18n.t('app.service.softtoken')%></p>
              </a>
            </div>				
          </div>
        </div><!-- /logWit -->
           <div class="form-group">
             <label for="acc"><%-$.i18n.t('app.service.fromaccount')%></label>
             <select id="fromAccntreqsof" class="form-control">
                        	<option value=""  selected="selected"><%-$.i18n.t('app.service.selectfromacc')%></option>
                			<%_.each(myaccounts,function(data){ %>
           						<option value="<%- data.id%>"><%- data.accountNumber%></option>
           					<%});%>
             			</select>           
           </div><!-- / form-group-->
           <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="fromAcntError"></p>
	 				</div>
           <div class="form-group">
             <label for="token"><%-$.i18n.t('app.service.tokenprice')%></label>
             <div class="row">
 				<div class="col-xs-7 pr5">
   					<span class="amt small"><%- tokenSoftCharges%> BDT</span> 
 				</div>
           	</div>
           </div><!-- / form-group-->
           <div class="form-group">
             <label><%-$.i18n.t('app.service.selectauthorisationmode')%></label>
             <div class="custRadio_pass">
               <div class="box">
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios1" value="option2" checked>
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs sms"></span>
                         <span class="small"><%-$.i18n.t('app.service.sms')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>
               </div>
               <div class="box">
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs mail"></span>
                         <span class="small"><%-$.i18n.t('app.service.mail')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>                      
               </div>
               <div class="box">
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios3" value="option2">
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs fScan"></span>
                         <span class="small"><%-$.i18n.t('app.service.token')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>
               </div>
               <div class="box">                      
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios4" value="option2">
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs esign"></span>
                         <span class="small"><%-$.i18n.t('app.service.esign')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>
               </div>
            </div>
           </div><!-- / form-group-->
           <div class="clearfix"></div>
           <div class="alert alert-info small" role="alert">
            <small><i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.service.note')%></small>
           </div>	
           <div class="clearfix"></div>
           <div class="row">
             <div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" onClick="location.href='#/servicerequest'"><%-$.i18n.t('app.service.cancel')%></button></div>
             <div class="col-xs-6 pl5"><button type="button" id="confirmbtn" class="btn btn-primary btn-block" onClick="javascript:void(0);"><%-$.i18n.t('app.service.sumbit')%></button></div>
           </div>
       </form>                            
       </section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
