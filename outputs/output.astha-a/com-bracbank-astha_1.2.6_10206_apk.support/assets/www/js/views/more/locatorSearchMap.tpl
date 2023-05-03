
                  <!--Content Starts Here-->
                  <a href="#/locatorview" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/locatorview"><%-$.i18n.t('app.locator.locator')%></a></li>
                     <li class="active"><%-$.i18n.t('app.locator.searchresult')%></li>
                  </ol>

                    <div class="clearfix"></div>
                  <!-- Merchant Deatails Starts here Here -->


                          <div class="btn-group  navbar-btn" role="group" aria-label="mode of view">
                                      <!--<a href="#" id="locatorsearchresult" class="btn btn-default "><span class="glyphicon glyphicon-list"></span> <%-$.i18n.t('app.locator.list')%></a>-->
                                      <button type="button" id="locatorsearchresult" name="locatorsearchresult" class="btn btn-default "><span class="glyphicon glyphicon-list"></span> <%-$.i18n.t('app.locator.list')%></button>
                                      <a  class="btn btn-default active"><span class="glyphicon glyphicon-map-marker"></span> <%-$.i18n.t('app.locator.map')%></a>
                            </div>

                  <div id="map_canvas" style="width:100%;height:300px"></div>
 
         

      