                  <!--Content Starts Here-->
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a id="cancel" name="cancel"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.changepassword')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                   <div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">

                    <div class="alert alert-success text-center" role="alert">
                              <h4><%-$.i18n.t('app.more.preference.passwordsuccess')%></h4>
                            <p><%-$.i18n.t('app.more.preference.enabledisableotpchange')%></p>
                    </div>

                    <a id="home" name="home" class="btn btn-success btn-block"><%-$.i18n.t('app.more.preference.home')%></a>
                 </form>
                  </div>
                 