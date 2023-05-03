<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = getAccountDTO();
	var charges = els.get("tokenSoftCharges");
	var branchlist = els.get("branchList"); 
	var reasons = els.get("tokenReasonRequest");
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="#/servicerequest" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4><%-$.i18n.t('app.service.softtokenreplacement')%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
        		<form>
        			<div class="logWit small">
          				<div class="row">
            				<div class="col-xs-6 col-sm-6 pr5">
              					<a href="#/hardtoken" class="text-center">
            						<span class="menu_icon ico-xs hardToken"></span>
                					<p class="small m0"><%-$.i18n.t('app.service.hardtoken')%></p>
              					</a>
            				</div>
            				<div class="col-xs-6 col-sm-6 pl5">
              					<a href="javascript:void(0);" class="text-center active">
                					<span class="menu_icon ico-xs softToken"></span>
                					<p class="small m0"><%-$.i18n.t('app.service.softtoken')%></p>
              					</a>
            				</div>				
          				</div>
        			</div>
           			<label for="acc"><%-$.i18n.t('app.service.fromaccount')%></label>
           			<div class="form-group">
             			<select id="fromAccntST" class="form-control">
             				<option value="">Select a From Account</option>
                			<%_.each(myaccounts,function(data){ %>
           						<option value="<%- data.id%>"><%- data.accountNumber%></option>
           					<%});%>
             			</select>             
           			</div>
           			<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="fromAcntError"></p>
	 				</div>
           			<div class="form-group">
            			<label><%-$.i18n.t('app.service.tokenprice')%></label>             
        				<div class="row">
             				<div class="col-xs-7 pr5">
               					<span class="amt small"><%- charges%> BDT</span> 
             				</div>
           				</div>
      				</div>
          			<label><%-$.i18n.t('app.service.reasonforrequest')%></label>   
           			<div class="form-group">
        				<select id="reason" class="form-control">
        					<option value="">Select a reason for replacement</option>
        					<%_.each(reasons,function(data){ %>
           						<option value="<%- data.code%>"><%- data.description%></option>
           					<%});%>
        				</select>             
      				</div>
          			<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="reasonNullError"></p>
	 				</div>
           			<!--<div class="form-group">
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
           			</div>-->
           			<div class="clearfix"></div>
           			<div class="alert alert-info small" role="alert">
            			<small><i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.service.note')%></small>
           			</div>	
           			<div class="clearfix"></div>
           			<div class="row">
             			<div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="cancel"><%-$.i18n.t('app.service.cancel')%></button></div>
             			<div class="col-xs-6 pl5"><button type="button" id="confirmbtn" class="btn btn-primary btn-block"><%-$.i18n.t('app.service.sumbit')%></button></div>
           			</div>
       			</form>                            
       		</section>	
		</div>
	</div>
</div>