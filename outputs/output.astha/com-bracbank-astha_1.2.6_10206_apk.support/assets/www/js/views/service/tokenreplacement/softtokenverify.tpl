<%
	var els = new EncryptedLocalStorage('secret'); 
	var charges = els.get("tokenSoftCharges");
	var frmacnt  = els.get("frmacnt");
	var rplcReason  = els.get("rplcReason");
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="#/softtoken" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4><%-$.i18n.t('app.service.softtokenreplacementreview')%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
				<form> 
           			<div class="veriIconWrap">
              			<span class="menu_icon2 ico1x verify"></span>					
        			</div>		
					<ul class="list-unstyled list-nobrd">
				  		<li class="list-group-item">
					  		<label><%-$.i18n.t('app.service.fromaccount')%></label>
					  		<p><%- frmacnt%></p>
				  		</li>				
				  		<li class="list-group-item">
					  		<label><%-$.i18n.t('app.service.tokenprice')%> </label>
					  		<p><%- charges%> BDT</p>
				  		</li>
				  		<li class="list-group-item">
					  		<label><%-$.i18n.t('app.service.reasonforrequest')%></label>
					  		<p><%- rplcReason%></p>
				  		</li>
					</ul>	
			   		<div class="clearfix"></div>
			   		<div class="row">
				 		<div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="cancel"><%-$.i18n.t('app.service.cancel')%></button></div>
				 		<div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="confirmRST">Confirm</button></div>
			   		</div>				
				</form>
			</section>
		<!-- Modal -->
			<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
				<form method="post" action="#">
						<div class="modal-content">
								<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.service.verification')%></h4>
								</div>
								<div class="modal-body">
										<p class="small"><%-$.i18n.t('app.service.mobile')%></p>                        
										<div class="form-group">
												<div class="pasCode text-center">
														<div class="form-group">
														<input type="password" autocomplete='off'  value="2"/>
														<input type="password" autocomplete='off'  value="2"/>
														<input type="password" autocomplete='off'  value="2"/>
														<input type="password" autocomplete='off'  value="2"/>
														<input type="password"  autocomplete='off' value="2"/>
														<input type="password" autocomplete='off'  value="2"/>
														</div>
												</div>	 						
										</div><!-- / form-group--> 	
										<div class="form-group">
												<div id="OTPcontainer1"></div>
										</div>
										<p class="text-center small">
												<a href="#" class="resend_button2" id="resend_btn"><%-$.i18n.t('app.service.resend')%></a>
										</p>			  
								</div>
								<div class="modal-footer">
								<button type="button" id="conbtn" class="btn btn-default btn-block otp_done" onClick="javascript:void(0);"><%-$.i18n.t('app.service.verify')%></button>
								</div>
						</div>
					</form>	
				</div>
			</div><!-- / modal-->	
		</div>
	</div>
</div>