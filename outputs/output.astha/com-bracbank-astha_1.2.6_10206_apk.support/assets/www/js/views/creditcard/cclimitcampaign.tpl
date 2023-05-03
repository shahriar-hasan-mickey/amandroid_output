  <%
			var els = new EncryptedLocalStorage('secret'); 		
			 var campaigntype=els.get("campaigntype");
			%>       


  <!-- Breadcrumb Starts Here -->
     <%if(campaigntype=='CCLTINC'){%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.personalfin.creditcardlimit')%></li>
                  </ol>
                   <%}else{%>
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                      <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.personalfin.personalfin')%></li>
                  </ol>
                   <%}%>                   
              

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->

<div class="alert alert-success text-center" role="alert">
                    <p><%-$.i18n.t('app.requests.personalfin.success1')%><%-$.i18n.t('app.requests.personalfin.success2')%> - <%-referenceNumber%> <%-$.i18n.t('app.requests.personalfin.success3')%></p>
 </div>

					<button type="button" id="ok" name="ok" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.creditcard.general.done')%></button>

