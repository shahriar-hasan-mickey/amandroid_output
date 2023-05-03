
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
                                      <button type="button" name="locatorsearchlist" id="locatorsearchlist" class="btn btn-default active"><span class="glyphicon glyphicon-list"></span> <%-$.i18n.t('app.locator.list')%></button>
                                      <button type="button" name="locatorsearchmap" id="locatorsearchmap" class="btn btn-default"><span class="glyphicon glyphicon-map-marker"></span> <%-$.i18n.t('app.locator.map')%></button>
                            </div>
                 

                         <div id="atmresult">

                         </div>
                         
                         <div id="errorResult" style="display:none" class="alert alert-info text-center">
								<b><%-$.i18n.t('app.locator.nodataForSearch')%></b> 
							</div>
									

                   <br/>

      