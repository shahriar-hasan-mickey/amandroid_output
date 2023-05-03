  <%
 var els=new EncryptedLocalStorage('secret');
 var campaigntype=els.get("campaigntype");
 %>
<!--Content Starts Here-->
                   <%if(campaigntype!='NEWPL'){%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.personalfin.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.personalfin.personalfin')%></li>
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
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.personalfin.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.personalfin.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.personalfin.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <div class="alert alert-success text-center" role="alert">
                                                <p><%-$.i18n.t('app.requests.personalfin.success1')%><%-$.i18n.t('app.requests.personalfin.success2')%> - <%-referenceNumber%> <%-$.i18n.t('app.requests.personalfin.success3')%></p>
                    </div>
                     <% if( campaigntype!="NEWPL"){%>
                    <a href="#/servicerequest"class="btn btn-success btn-block"><%-$.i18n.t('app.requests.personalfin.makeanotherreq')%></a>
                    <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.personalfin.home')%></a>
                    <%}%>
                    <% if( campaigntype=="NEWPL"){%>
                     <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.personalfin.done')%></a>
                    <%}%>
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