<%
 var els=new EncryptedLocalStorage('secret');

 
 			var fintype = els.get("hffintype");
    		var applyfor = els.get("hfapplyfor");
    		var ename = els.get("hfename");
    		var mobno =	els.get("hfmobno");
    		var dob = els.get("hfdob");
    		var city = els.get("hfcity");
    		var employername = els.get("hfemployername");
    		var length	= els.get("hflength");
    		var sal	= els.get("hfsal");
    		var amt	= els.get("hfamt");
    		var currcode=els.get("base_currency");
    		 var campaigntype=els.get("campaigntype");
			 var currentposlimit = els.get("currentposlimit");
			 var newposlimit = els.get("newposlimit");
			 var segmentlimit = els.get("segmentlimit");
    		var blockCardMaskNo = els.get("blockCardMaskNo");
			var accnumval = els.get("maskActno");
			var displayamtval = els.get("currentlimit");
 %>


<!--Content Starts Here-->
                   <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.landing.debitcardlimitcontrol')%></li>
                  </ol>
                   

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done">
                  		<div>1
                  		<p>
                  			<%-$.i18n.t('app.requests.homefinance.input')%>
                  		</p>
                  		</div>
                  	</div>
                  <div class="steps done">
                  <span></span>
                  <div>2
                 	 <p>
                 	 	<%-$.i18n.t('app.requests.homefinance.verify')%>
                 	 </p>
                 	 </div>
                 	</div>
                  <div class="steps"><span></span>
                  	<div>3
                  		<p>
                  			<%-$.i18n.t('app.requests.homefinance.confirm')%>
                  		</p>
                  		</div>
                  	</div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                 	 <form role="form">
                    <table class="table table-bordered table-striped">
                      <tbody>
                      <tr>
                          <td><%-$.i18n.t('app.requests.debitcardpos.debitcardno')%></td>
                          <td><%-accnumval%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.debitcardpos.currentposlimit')%></td>
                          <td class="amt"><span class="cur">KWD</span> <%-displayamtval%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.debitcardpos.newposlimit')%></td>
                           <td class="amt"><span class="cur">KWD</span> <%-newposlimit%></td>
                      </tr>
                     
                    </tbody></table>


                    <a href="#/debitcardlimitcontrolOTP" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.chequebookreq.confirm')%></a>
                    <a href="#/debitcardlimitcontrolrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>