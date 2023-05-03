<div class="pagewrapper">
	<header class="appheader">
		<div class="headerLeft">
			<a href="javascript:void(0);" class="bacArr" id="back">
		    	<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
		</div>
		<h4><%-$.i18n.t('app.login.anssecqueslabel')%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
    	        <br/>
				<div class="panel panel-default">
					<div class="panel-body">
            			<p class="small"><%-$.i18n.t('app.login.anssecqueslabel')%></p>
							<form>
								<label for="ques1"><%-$.i18n.t('app.login.ques1label')%></label>
								<div class="form-group">
									<select id="ques1" name="ques1" class="form-control">
										<option value="">Select</option>
										<option value="1">What is your name of first school?</option>
									</select>
								</div>
								<div class="form-group">
									<input type="text"  autocomplete='off'  class="form-control" id="ans1" name="ans1" placeholder="<%-$.i18n.t('app.login.answerplaceholder')%>" maxlength="20"/>
								</div>
                    			<div class="cleafix"></div>
                    			<p class="text-right small">
									<a href="javascript:void(0)" class="text-link"><%-$.i18n.t('app.login.forgotsecurequeslabel')%></a>
								</p>
                  				<br/>
								<div class="row">
                      				<div class="col-xs-6 pr5"><button type="button" id="back_btn" class="btn btn-default btn-block"><%-$.i18n.t('button.login.cancel')%></button></div>
                      				<div class="col-xs-6 pl5"><a href="javascript:void(0);" class="btn btn-primary btn-block" id="confirm"><%-$.i18n.t('button.login.confirm')%></a></div>
                    			</div>
							</form>
						</div>
					</div>				
			</section>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		
	});
</script>
