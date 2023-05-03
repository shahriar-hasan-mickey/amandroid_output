<%
	var els = new EncryptedLocalStorage('secret');
	var applycreditcard=els.get("applynewcc");
	cardtype= applycreditcard[0];
	firstname= applycreditcard[1]  ;
	dob= applycreditcard[2]  ;
	mobno= applycreditcard[3] ;
	frmacno= applycreditcard[4] ;
	selectcity= applycreditcard[5] ;
	empname= applycreditcard[6] ;
	los= applycreditcard[7] ;
	sal= applycreditcard[8] ;
	var campaigntype=els.get("campaigntype");
%>
<!--Content Starts Here-->
 <%if(campaigntype!='NEWCC'){%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.newcc.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.newcc.newcc')%></li>
                  </ol>
                   <%}else{%>
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.newcc.newcc')%></li>
                  </ol>
                   <%}%>
                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.newcc.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.newcc.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.newcc.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <div class="alert alert-success text-center" role="alert">
                           <p><%-$.i18n.t('app.requests.newcc.success1')%><%-$.i18n.t('app.requests.newcc.success2')%> - <%-referenceNumber%> <%-$.i18n.t('app.requests.newcc.success3')%></p>
                    </div>
                    
                    
                    <%if(campaigntype!='NEWCC'){%>
                    <a href="#/servicerequest" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.newcc.makeanotherreq')%></a>
                    <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.newcc.home')%></a>
                    <%}else{%>
                    <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.newcc.done')%></a>
                    <%}%>
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
 <!--Content Ends Here-->
 <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>