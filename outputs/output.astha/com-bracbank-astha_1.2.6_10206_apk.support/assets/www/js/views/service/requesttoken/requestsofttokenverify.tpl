<%
	var els = new EncryptedLocalStorage('secret'); 
	var tokenSoftCharges = els.get("tokenSoftCharges");
	var frmacnt  = els.get("frmacnt");
%>
	<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="#/requestsofttoken" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.service.softreview')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						            <section class="content">
                <form method="post" action="#">
           <div class="veriIconWrap">
              <span class="menu_icon2 ico1x verify"></span>					
            </div>
                    <ul class="list-unstyled list-nobrd">
                        <li class="list-group-item">
                            <label><%-$.i18n.t('app.service.fromaccount')%></label>
                            <p><%- frmacnt %></p>
                        </li>
                        <li class="list-group-item">
                            <label><%-$.i18n.t('app.service.tokenprice')%></label>
                            <p>
                                <span class="amt small"><%- tokenSoftCharges %> BDT 
                                    
                                </span>
                            </p>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-xs-6 pr5">
<button type="button" class="btn btn-default btn-block" onClick="location.href='#/requestsofttoken'"><%-$.i18n.t('app.service.cancel')%></button>
                        </div>
                        <div class="col-xs-6 pl5">
                            <button type="button" class="btn btn-primary btn-block" id="confirmBtn"><%-$.i18n.t('app.service.confirm')%></button>
                        </div>
                    </div>
                </form>
            </section>
            <!-- Modal -->
            <div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <form method="post" action="#">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.service.verification')%></h4>
                            </div>
                            <div class="modal-body">
                                <p class="small"><%-$.i18n.t('app.service.mobile')%></p>
                                <div class="form-group">
                                    <div class="pasCode text-center">
                                        <div class="form-group">
                                            <input type="password" autocomplete='off'  value="2" />
                                            <input type="password"  autocomplete='off' value="2" />
                                            <input type="password" autocomplete='off'  value="2" />
                                            <input type="password"  autocomplete='off' value="2" />
                                            <input type="password" autocomplete='off'  value="2" />
                                            <input type="password"  autocomplete='off' value="2" />
                                        </div>
                                    </div>
                                </div>
                                <!-- / form-group-->
                                <div class="form-group">
                                    <div id="OTPcontainer1"></div>
                                </div>
                                <p class="text-center small">
                                    <a href="#" class="resend_button2" id="resend_btn"><%-$.i18n.t('app.service.resend')%></a>
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="confrombuttonreq"  class="btn btn-default btn-block otp_done" onClick="javascript:void(0);"><%-$.i18n.t('app.service.verify')%></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- / modal-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
