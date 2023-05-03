   <%
			var els = new EncryptedLocalStorage('secret'); 
			var fintype = els.get("srfintype");
			 var applyfor = els.get("srapplyfor");
			 var name = els.get("srname");
			 var mobno = els.get("srmobno");
			 var city = els.get("srcity");
			 var employername = els.get("sremployername");
			 var length = els.get("srlength");
			 var sal = els.get("srsal");
			 var amt = els.get("sramt");
			 var campaigntype=els.get("campaigntype");
			 var blockCardMaskNo = els.get("blockCardMaskNo");
			 var displayamt = els.get("displayamt");
			 var newposlimit = els.get("newposlimit");
			 var segmentlimit = els.get("segmentlimit");
			 var posresponsestatus = els.get("posresponsestatus");
			 var accnumval = els.get("maskActno");
			%>       
 

<!--Content Starts Here-->
                   <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.landing.debitcardlimitcontrol')%></li>
                  </ol>
                   


                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.homefinance.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.homefinance.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.homefinance.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
					 <div class="alert alert-success text-center">
                                       <strong><%-$.i18n.t('app.requests.debitcardpos.limitchange')%></strong> <%-$.i18n.t('app.requests.debitcardpos.limituse')%>  
                                </div>
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <table class="table table-bordered table-striped">
                      <tbody>
					  <!--
                              <tr>
                          <td>Transaction Reference Number</td>
                          <td>154789655</td>
                      </tr> 
					  -->
			                      <tr>
                          <td><%-$.i18n.t('app.requests.debitcardpos.debitcardno')%></td>
                          <td><%-accnumval%></td>
                      </tr>
		      <!--
                      <tr>
                          <td>Status</td>
                          <td><span class="text-success"><%-posresponsestatus%></span></td>
                      </tr>
		      -->
                      <tr>
                          <td><%-$.i18n.t('app.requests.debitcardpos.newposlimit')%></td>
                          <td class="amt"><span class="cur">KWD</span>&nbsp;<%-newposlimit%></td>
                      </tr>
                     
                    </tbody></table>


                    <a href="#/servicerequestmenu" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.actdebitcard.home')%></a>
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