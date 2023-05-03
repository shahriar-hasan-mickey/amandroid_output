<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->

                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.enableotp')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
<div role="alert" class="alert alert-success text-center">
<%if(flag=='Y'){%>
                            <h4><%-$.i18n.t('app.more.preference.enabledisableotpmsg')%></h4>
				  <%}else{%>  
				  	  <h4><%-$.i18n.t('app.more.preference.enabledisableotpmsg1')%></h4>  				 
				  <%}%>
                    </div>
        
                  <a class="btn btn-success btn-block" href="#/wealth"><%-$.i18n.t('app.more.preference.home')%></a>
            
