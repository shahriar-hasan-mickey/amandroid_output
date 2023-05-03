<div class="pagewrapper">
	<header	class="appheader">
		<div class="headerLeft">
			<a href="#/locatorcity" class="bacArr">
		    	<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
		</div>
		<div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.locator.searchbycitylabel')%></h4>
		</div>
	</header>		
	<div class="bodywrapper">
    	<div class="contentwrap">
          	<section class="content"> 
              	<br/>                                            
            	<form>
              		<div class="logWit small">
                		<div class="row">
                  			<div class="col-xs-6 col-sm-6 pr5">
                    			<a href="javascript:void(0);" class="username text-center" id="listView">
                      				<span class="menu_icon ico-xs userI"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.list')%></p>
                    			</a>
                  			</div>
                  			<div class="col-xs-6 col-sm-6 pl5">
                    			<a href="javascript:void(0);" class="mPIN text-center active" id="mapView">
                      				<span class="menu_icon ico-xs mPIN"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.map')%></p>
                    			</a>
                  			</div>				
                		</div>
              		</div>
              		<div class="panel panel-default">
                  		<div id="map_canvas" style="width:100%;height:300px"></div> 
              		</div>
            	</form>                            
          	</section>
        </div>
	</div>
</div>
  