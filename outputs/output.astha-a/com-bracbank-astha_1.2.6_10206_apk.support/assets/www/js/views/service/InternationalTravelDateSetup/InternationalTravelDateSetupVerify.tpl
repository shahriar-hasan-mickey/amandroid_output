<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="#/intertravdatesetup" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.service.intertravsetup')%></h4>
  

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
                            <label><%-$.i18n.t('app.service.cardnumber')%></label>
                            <p>43571234569077</p>
                        </li>

                        <li class="list-group-item">
                           <strong><%-$.i18n.t('app.service.trip1')%></strong>
                        </li>

                        <li class="list-group-item">
                            <label><%-$.i18n.t('app.service.contactnumber')%></label>
                            <p>9654125485</p>
                        </li>
                         <li class="list-group-item">
                            <label><%-$.i18n.t('app.service.country')%></label>
                            <p>India</p>
                        </li>
                        <li class="list-group-item">
                           <label><%-$.i18n.t('app.service.fromdate')%></label>
                           <p>25/06/2020</p>
                       </li>
                       <li class="list-group-item">
                          <label><%-$.i18n.t('app.service.todate')%></label>
                          <p>30/06/2020</p>
                      </li>

                      <li class="list-group-item">
                           <strong><%-$.i18n.t('app.service.trip2')%></strong>
                        </li>

                        <li class="list-group-item">
                            <label><%-$.i18n.t('app.service.cardnumber')%></label>
                            <p>9654125485</p>
                        </li>
                         <li class="list-group-item">
                            <label><%-$.i18n.t('app.service.country')%></label>
                            <p>USA</p>
                        </li>
                        <li class="list-group-item">
                           <label><%-$.i18n.t('app.service.fromdate')%></label>
                           <p>06/07/2020</p>
                       </li>
                       <li class="list-group-item">
                          <label><%-$.i18n.t('app.service.todate')%></label>
                          <p>15/07/2020</p>
                      </li>



                        
                    </ul>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-xs-6 pr5">
                            <button type="button" class="btn btn-default btn-block" onClick="location.href='#/intertravdatesetup'"><%-$.i18n.t('app.service.cancel')%></button>
                        </div>
                        <div class="col-xs-6 pl5">
                            <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#verify"><%-$.i18n.t('app.service.confirm')%></button>
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
                                            <input type="password" autocomplete='off'  value="2" />
                                            <input type="password" autocomplete='off'  value="2" />
                                            <input type="password" autocomplete='off'  value="2" />
                                            <input type="password"  autocomplete='off' value="2" />
                                            <input type="password" autocomplete='off'  value="2" />
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
                              <div class="row">
                                  <div class="col-xs-6 pr5">
                                      <button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal"><%-$.i18n.t('app.service.cancel')%></button>
                                  </div>
                                  <div class="col-xs-6 pl5">
                                    <button type="button" class="btn btn-default btn-block otp_done" onClick="location.href='#/internationalcnf'"><%-$.i18n.t('app.service.confirm')%></button>
                                </div>
                              </div>
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