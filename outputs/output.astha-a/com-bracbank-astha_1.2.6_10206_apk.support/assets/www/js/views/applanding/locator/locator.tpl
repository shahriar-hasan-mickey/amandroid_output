<div class="pagewrapper">
	<header	class="appheader">
		<div class="headerLeft">
			<a href="javascript:void(0)" class="bacArr" id="backToLogin">
		      <i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
		</div>
		<div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.locator.locatorlabel')%></h4>
		</div>
	</header>		
	<div class="bodywrapper">
    	<div class="contentwrap">
        	<section class="content">
            	<br>                        
            	<form>
              		<div class="logWit small">
                		<div class="row">
                  			<div class="col-xs-6 col-sm-6 pr5">
                    			<a href="javascript:void(0);" class="username text-center active" id="nearme">
                      				<span class="menu_icon ico-xs userI"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.nearmelabel')%></p>
                    			</a>
                  			</div>
                  			<div class="col-xs-6 col-sm-6 pl5">
                    			<a href="javascript:void(0);" class="mPIN text-center" id="searchByCity">
                      				<span class="menu_icon ico-xs mPIN"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.searchbycitylabel')%></p>
                    			</a>
                  			</div>				
                		</div>
              		</div>
              		<div class="panel panel-default">
                		<div class="panel-body">
                  			<label for="slider"><%-$.i18n.t('app.locator.selectradius')%></label>
                  			<div>
		                    	<input type="text" autocomplete='off' id="sliderNear" value="" data-slider-min="5" data-slider-max="20" data-slider-step="5" data-slider-value="5"  data-slider-tooltip="hide"/>
		                    	<h4 class="pull-right showslideval">5 <%-$.i18n.t('app.locator.kmlabel')%></h4>
                  			</div> 
                		</div>
              		</div> 
              		<div class="panel panel-default trans_search">
                		<div class="panel-body">
                  			<label><%-$.i18n.t('app.locator.searchby')%></label>
                  			<div class="clearfix"></div> 
                  			<!--<div class="btn-group" data-toggle="buttons">
                    			<label class="btn btn-primary active">
                      				<input type="radio" name="choice" value="ATM" autocomplete="off" checked> <%-$.i18n.t('app.locator.atm')%>
                    			</label>
                    			<label class="btn btn-primary">
                      				<input type="radio" name="choice" value="Branch" autocomplete="off"> <%-$.i18n.t('app.locator.branch')%>
                    			</label>
                  			</div>-->

							<div class="custRadio_pass card_management_over">
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="ALL" value="all" checked>
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">All</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="ATM" value="atm">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">ATM</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="Branch" value="branch">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">Branch</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="SubBranch" value="sub_branch">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">Sub-Branch</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="AgentBanking" value="agent_banking">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">Agent Banking</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="SMEOutlet" value="sme_outlet">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">SME Outlets</span>
												</div>
											</div>
										</label>
									</div>
								</div>
							</div>

                  			<div class="clearfix"></div> 
                		</div>
              		</div>
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							<a href="javascript:void(0);" id="searchBtn" class="btn btn-primary btn-block"><%-$.i18n.t('button.locator.search')%></a>
						</div>
					</div>
            	</form>                            
          	</section>
        </div>
	</div>
</div>
<script>
$(document).ready(function() {
	$("#sliderNear").slider();
    $("#sliderNear").on("slide", function(slideEvt) {
    	$(".showslideval").text(slideEvt.value +" km");
    });
});
</script>
