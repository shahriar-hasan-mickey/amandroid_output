
<!--Content Starts Here-->
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.readycash.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.readycash.readycash')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.readycash.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.readycash.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.readycash.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <div class="alert alert-success text-center" role="alert">
                           <p><%-$.i18n.t('app.requests.readycash.success1')%><%-$.i18n.t('app.requests.readycash.success2')%> - <%-referenceNumber%> <%-$.i18n.t('app.requests.readycash.success3')%></p>
                    </div>
                    <a href="#/servicerequest" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.readycash.makeanotherreq')%></a>
                    <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.readycash.home')%></a>
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
               </section>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>