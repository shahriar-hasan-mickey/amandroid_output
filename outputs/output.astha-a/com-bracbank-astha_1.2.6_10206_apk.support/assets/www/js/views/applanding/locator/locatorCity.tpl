<%
var els = new EncryptedLocalStorage('secret');
var cityListDTO = els.get("cityListDTO");
%>
<div class="pagewrapper">
	<header	class="appheader">
		<div class="headerLeft">
			<a href="#/login" class="bacArr">
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
                    			<a href="javascript:void(0);" class="username text-center" id="nearme">
                      				<span class="menu_icon ico-xs userI"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.nearmelabel')%></p>
                    			</a>
                  			</div>
                  			<div class="col-xs-6 col-sm-6 pl5">
                    			<a href="javascript:void(0);" class="mPIN text-center active" id="searchByCity">
                      				<span class="menu_icon ico-xs mPIN"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.searchbycitylabel')%></p>
                    			</a>
                  			</div>				
                		</div>
              		</div>
              		<div class="panel panel-default">
                		<div class="panel-body">
                  			<div class="form-group">
                    			<label for="city"><%-$.i18n.t('app.locator.selectcity')%></label>
                				<select name="city" id="city" class="form-control">
                        		<option value=""  selected="selected"><%-$.i18n.t('app.locator.selectcity')%></option>
                            	<% if ( cityListDTO.length > 0 ) { %>
			        				<% _.each(cityListDTO,function(data){ %>
			        					<p>
											<%if(typeof(data.desc)=="undefined"){%>
												<option value="<%-data.description%>" id="<%- data.id%>"><%-data.description%></option>											
											<%}%>
										</p>
									<% }); %>
					        	<%}%>
						</select>
					</div> 
					<div id="errorCity" style="display:none">
						<p class="help-block error-message">
						<font color="#A94442"><%-$.i18n.t('app.locator.selectcityvalidation')%></font>
						</p>
					</div>
					<div class="form-group">
						<label for="search"><%-$.i18n.t('app.locator.searchby')%></label>
						<select name="search" id="search" class="form-control">
						<option value=""  selected><%-$.i18n.t('app.locator.selectbranch')%></option>
							<option value="ALL"><%-$.i18n.t('app.locator.all')%></option>
							<option value="ATM"><%-$.i18n.t('app.locator.atm')%></option>
							<option value="BRANCH"><%-$.i18n.t('app.locator.branch')%></option>
							<option value="SUB_BRANCH"><%-$.i18n.t('app.locator.subbranch')%></option>
							<option value="AGENT_BANKING"><%-$.i18n.t('app.locator.agentbanking')%></option>
							<option value="SME_OUTLET"><%-$.i18n.t('app.locator.smeoutlet')%></option>
						</select>
					</div>
					<div id="errorBranch" style="display:none">
						<p class="help-block error-message">
							<font color="#A94442"><%-$.i18n.t('app.locator.selectbranchvalidation')%></font>
						</p>
                		</div>
              		</div>
					</div>
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							<a href="javascript:void(0);" class="btn btn-primary btn-block" id="searchBtn"><%-$.i18n.t('button.locator.search')%></a>
						</div>
					</div>
            	</form>                            
          	</section>
        </div>
	</div>
</div>
