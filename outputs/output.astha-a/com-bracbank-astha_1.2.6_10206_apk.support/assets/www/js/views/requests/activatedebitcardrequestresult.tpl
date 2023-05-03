 <!--Content Starts Here-->
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.actdebitcard.actdebitcard')%></li>
                   </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.actdebitcard.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.actdebitcard.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.actdebitcard.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <div class="alert alert-success text-center" role="alert">
                    <p><%-$.i18n.t('app.requests.actdebitcard.success')%></p>
                        <h4><%-$.i18n.t('app.requests.actdebitcard.transrefno')%> - <%-referenceNumber%></h4>
					</div>
                    <a href="#/servicerequestmenu" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.actdebitcard.actanothercard')%></a>
                    <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.actdebitcard.home')%></a>
                  </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
   
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>