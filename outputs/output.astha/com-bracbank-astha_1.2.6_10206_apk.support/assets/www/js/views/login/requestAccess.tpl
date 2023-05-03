<div class="pagewrapper">
	<nav class="clearfix">
		<ol class="cd-breadcrumb triangle custom-icons">
			<li class="done">
				<a href="javascript:void(0);">
					<span class="clr">1</span>
				</a>
			</li>
			<li class="current">
				<a href="javascript:void(0);">
					<span class="clr">2</span> <%-$.i18n.t('app.login.reqaccesslabel')%></a>
			</li>
			<li>
				<span class="clr">3</span>
			</li>
		</ol>
	</nav>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
			<br />
				<div class="panel panel-default">
					<div class="panel-body">
						<p class="small"><%-$.i18n.t('app.login.reqaccessheader')%></p>
						<form>
							<div class="form-group">
								<div class="custRadio_pass box-block p0">
									<div class="box">
										<div class="radio">
											<label>
												<input type="radio" name="accesstype" id="fullaccess" value="fullaccess" checked>
												<div class="row bg">
													<div class="col-xs-3 col-sm-3 pl5 pr5">
														<span class="menu_icon ico-xs unlock"></span>
													</div>
													<div class="col-xs-9 col-sm-9 pl5 text-left"><%-$.i18n.t('app.login.fullaccesslabel')%>
														<p class="small">(<%-$.i18n.t('app.login.fullaccesstext')%>)</p>
													</div>
												</div>
											</label>
										</div>
									</div>
									<!--<div class="box">
										<div class="radio">
											<label>
												<input type="radio" name="accesstype" id="limitedaccess" value="limitedaccess">
												<div class="row bg">
													<div class="col-xs-3 col-sm-3 pl5 pr5">
														<span class="menu_icon ico-xs eye"></span>
													</div>
													<div class="col-xs-9 col-sm-9 pl5 text-left"><%-$.i18n.t('app.login.limitedaccesslabel')%>
														<p class="small">(<%-$.i18n.t('app.login.limitedaccesstext')%>)</p>
													</div>
												</div>
											</label>
										</div>
									</div>-->
									<div class="alert alert-info small">
										<ul class="list-unstyled checkstyle">
											<li class="list-group-item list-group-item-heading"><%-$.i18n.t('app.login.reqaccessnoteslabel')%>:</li>
											<li class="list-group-item">Description details will be provided by the bank</li>
										</ul>
									</div>		
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6 pr5">
									<button type="button" class="btn btn-default btn-block" id="cancel_btn"><%-$.i18n.t('button.login.cancel')%></button>
								</div>
								<div class="col-xs-6 pl5">
									<button type="button" class="btn btn-primary btn-block" id="next_btn"><%-$.i18n.t('button.registration.next')%></button>
								</div>
							</div>	
						</form>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
  
