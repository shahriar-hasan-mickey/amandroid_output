   <%
			var els = new EncryptedLocalStorage('secret'); 
			var accno = els.get("sraccno");
			 var accname = els.get("sraccname");
			 var branch = els.get("srbranch");
			 var chequeleaves = els.get("srchequeleaves");
			%>       
 
 <!--Content Starts Here-->
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.landing.stopchequebook')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.chequebookreq.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <div class="alert alert-success text-center" role="alert">
                     <p><%-$.i18n.t('app.requests.chequebookreq.stopchequesuccess')%></p>
                        <h4><%-$.i18n.t('app.requests.chequebookreq.transrefno')%> - <%-referenceNumber%></h4>
					</div>
			     <a href="#/servicerequestmenu" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.chequebookreq.requestnewbook')%></a>
				 <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.chequebookreq.home')%></a>
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
 <!--Content Ends Here-->
 <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>