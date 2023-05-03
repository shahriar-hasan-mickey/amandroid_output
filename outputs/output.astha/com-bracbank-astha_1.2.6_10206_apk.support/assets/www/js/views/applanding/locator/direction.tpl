<div class="pagewrapper">
	<header	class="appheader">
		<div class="headerLeft">
			<a href="#/locator" class="bacArr">
			  <i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
		</div>
		<div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.locator.direction')%></h4>
		</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content"> 
				<br>                                            
				<form>
				  <div class="panel panel-default">
					  <div class="mapcontainer" id="map_canvas"></div>
				  </div>
				  <div class="clearfix"></div>
				  <br>
				  <div class="panel panel-default" id="directionDiv" style="display:none">
					<div class="panel-body">
						<div id="directions"></div>
					</div>
					<br>
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							<a href="#/locator" type="button" class="btn btn-primary btn-block"><%-$.i18n.t('app.wealth.back')%></a>
						</div>
					</div> 
					<br>					
				</div>
			</div>
		</form>                            
	</section>
	</div>
	</div>
</div>
