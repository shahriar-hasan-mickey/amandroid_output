<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="#/servicerequest" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.service.modeofoperation')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						       <section class="content"> 
        <span class="menu_icon2 ico1x verify"></span>
        <br>
        <p class="text-center small"><%-$.i18n.t('app.service.tranri')%></p>
        <p class="text-center"><%-$.i18n.t('app.service.defaultauth')%></p>
        <form method="post" action="#">	
          <div class="panel panel-default">
            <div class="panel-body">
              <p><%-$.i18n.t('app.service.otherauth')%></p>
              <div class="custRadio">
                <div class="radio">
                  <label>
                      <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                      <div class="row bg">
                          <div class="col-xs-3 col-sm-3 pl5 pr5">
                            <img src="images/common/softToken.jpg" class="img-thumbnail">
                          </div>
                          <div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.service.software')%>
                            <p class="small"><%-$.i18n.t('app.service.softwaregenerate')%></p>
                          </div>
                      </div>					  
                  </label>
                </div>
                <div class="radio">
                  <label>
                      <input type="radio" name="optionsRadios" id="optionsRadios3" value="option2">
                      <div class="row bg">
                          <div class="col-xs-3 col-sm-3 pl5 pr5">
                            <img src="images/common/hardToken.jpg" class="img-thumbnail">
                          </div>
                          <div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.service.hardware')%>
                            <p class="small"><%-$.i18n.t('app.service.softwaregenerate')%></p>
                          </div>
                      </div>					  
                  </label>
                </div>
              </div><!-- / custRadio-->          
            </div>
          </div>   
			  <div class="row">
				  <!--<div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block"><%-$.i18n.t('app.service.cancel')%></button></div>
          <div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#verify"><%-$.i18n.t('app.service.next')%></button></div>-->
          <div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block"><%-$.i18n.t('app.service.later')%></button></div>
				  <div class="col-xs-6 pl5"><button type="button" id="conbtn" class="btn btn-primary btn-block" onClick="javascript:void(0);"><%-$.i18n.t('app.service.applytoken')%></button></div>
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
                                                <input type="password"  autocomplete='off' value="2"/>
                                                <input type="password" autocomplete='off'  value="2"/>
                                                <input type="password" autocomplete='off'  value="2"/>
                                                <input type="password" autocomplete='off'  value="2"/>
                                                <input type="password"  autocomplete='off' value="2"/>
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
                        <button type="button" id="verfibtn" class="btn btn-default btn-block otp_done" onClick="javascript:void(0);"><%-$.i18n.t('app.service.verify')%></button>
                        </div>
                </div>
            </form>	
        </div>
    </div><!-- / modal-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->