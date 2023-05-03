<%
	var els = new EncryptedLocalStorage('secret');
%>
<div class="pagewrapper" id="appwrapper" >
	<aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
              <img src="images/common/user_default1.png" class="profPic img-circle"> 
            </div>
            <div>
              <p class="profilename"></p>
              <p class="small info" >Last login: <span id="lastlogin"></span></p>
			<p class="small info fail" >Last failure login: <span id="lastfaillogin"></span></p>
            </div>            
        </div>
		<nav>
			<ul>
      			<li class="active"><a href="#/wealth" id="dashboard"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%></a></li>
      			<li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="javascript:void(0);"><span class="ico account"></span><%-$.i18n.t('app.menu.products')%></a></li>        
      			<ul class="collapse" id="accounts">
        			<li><a href="javascript:void(0);" id="slide_out_savings"><%-$.i18n.t('app.wealth.accounts')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_deposits"><%-$.i18n.t('app.wealth.termdeposit')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_creditcard"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
				<li><a href="javascript:void(0);" id="slide_out_prepaidcard"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_loan"><%-$.i18n.t('app.wealth.loans')%></a></li>
      			</ul>
      			<li><a href="javascript:void(0);" id="slide_out_statementCertificate"><span class="ico statement_cert"></span>Statement &amp; Certificates</a></li>
      			<li><a href="javascript:void(0);" id="slide_out_transfers"><span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a></li>
      			<li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode"><a href="javascript:void(0);"><span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_positivePay"><span class="ico positive_pay"></span>Positive Pay</a></li>
			<li><a href="javascript:void(0);" id="slide_out_billpay"><span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_managebene"><span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transactions"><span class="ico transactions"></span><%-$.i18n.t('app.wealth.transactions')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transferlimit"><span class="ico transferLimit"></span><%-$.i18n.t('app.more.general.transferlimit')%></a></li>
      			<!--<li><a href="javascript:void(0);" id="manage_biller"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slide_out_services"><span class="ico service"></span><%-$.i18n.t('app.wealth.servicereq')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_user_settings"><span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%></a></li>
      			<!--<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.payreminder')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slideout_more"><span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%></a></li>
			<li><a href="javascript:void(0);" id="slideout_contact" onclick="postLogRedir()"><span class="ico contacts"></span>Contact Us</a></li>   
      			<li><a href="javascript:void(0);" id="logout" class="btn-logout"><span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%></a></li>
			</ul>
    	</nav>
	</aside>
	<div id="ovrlay"></div>
	<header class="appheader">
		<div class="headerLeft">
			<button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="#/wealth" class="bacArr">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10">BBL Apps & Links</h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
		        <form>
		            <div class="radiobox">
		            	
		            	<% if(!isNull(els.get("taxUrl")) && els.get("taxUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="taxReturn" class="navigateClass" label="Submit Proof of Return" url="<%- els.get("taxUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Tax Return Submission.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Submit Proof of Return</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	 <% if(!isNull(els.get("socUrl")) && els.get("socUrl") != "N") { %>
			            	<div class="radio">
			                    <a href="javascript:void(0);" id="formsAndSOC" class="navigateClass" label="SOC & Forms" url="<%- els.get("socUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/09-forms.png">
			                          <div class="clearfix"></div>
			                          <span class="small">SOC & Forms</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            
		            
		            	<% if(!isNull(els.get("asthaPlayUrl")) && els.get("asthaPlayUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="asthaPlay" class="navigateClass" label="OTT Entertainment" url="<%- els.get("asthaPlayUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Astha Play.png">
			                          <div class="clearfix"></div>
			                          <span class="small">OTT Entertainment</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	<% if(!isNull(els.get("asthaMusicUrl")) && els.get("asthaMusicUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="asthaMusic" class="navigateClass" label="Astha Music" url="<%- els.get("asthaMusicUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Astha Music.png">
			                          <div class="clearfix"></div>
			                        
									  <span class="small"><%-$.i18n.t('app.wealth.songs')%></span>

			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	<% if(!isNull(els.get("asthaTravelUrl")) && els.get("asthaTravelUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="asthaTravel" class="navigateClass" label="Astha Travel" url="<%- els.get("asthaTravelUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Astha Travel.png">
			                          <div class="clearfix"></div>
			                          
									 <span class="small"><%-$.i18n.t('app.wealth.tickets')%></span>
									  
			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	<% if(!isNull(els.get("asthaLearningUrl")) && els.get("asthaLearningUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="asthaLearning" class="navigateClass" label="Astha Learning" url="<%- els.get("asthaLearningUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Astha Learning.png">
			                          <div class="clearfix"></div>
			                          
									  <span class="small"><%-$.i18n.t('app.wealth.carrer')%></span>

			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	<% if(!isNull(els.get("asthaIslamicUrl")) && els.get("asthaIslamicUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="asthaIslamic" class="navigateClass" label="Astha Islamic" url="<%- els.get("asthaIslamicUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Astha Islamic.png">
			                          <div class="clearfix"></div>
									  <span class="small"><%-$.i18n.t('app.wealth.quran')%></span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	<% if(!isNull(els.get("bblUrl")) && els.get("bblUrl") != "N") { %>
			            	<div class="radio">
			                    <a href="javascript:void(0);" id="bblWebsite" class="navigateClass" label="BRAC Bank Website" url="<%- els.get("bblUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/08-website.png">
			                          <div class="clearfix"></div>
			                          <span class="small">BRAC Bank Website</span>
			                        </div>
			                    </a>
			                </div>
			            <% } %>
		            	
		            	<% if(!isNull(els.get("womenBanking")) && els.get("womenBanking") != "N") { %>
		          			<div class="radio">
			                    <a href="javascript:void(0);" id="womenBanking" class="navigateClass" label="Women Banking" url="<%- els.get("womenBanking")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/04BBL-TARA.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Women Banking</span>
			                        </div>
			                    </a>
			                </div>
		          		<% } %>	
		            	
		            	<% if(!isNull(els.get("pbUrl")) && els.get("pbUrl") != "N") { %>
							<div class="radio">
			                    <a href="javascript:void(0);" id="premiumBanking" class="navigateClass" label="Premium Banking" url="<%- els.get("pbUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/03BBL-PB.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Premium Banking</span>
			                        </div>
			                    </a>
			                </div>
		              	<% } %>
		            	
		            	<% if(!isNull(els.get("agamiUrl")) && els.get("agamiUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="agami" class="navigateClass" label="Student Banking" url="<%- els.get("agamiUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Agami.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Student Banking</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	 <% if(!isNull(els.get("iDeskUrl")) && els.get("iDeskUrl") != "N") { %>
			            	<div class="radio">
			                    <a href="javascript:void(0);" id="bracEPLiDesk" class="navigateClass" label="BO Account Opening" url="<%- els.get("iDeskUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/02BRAC-EPL-iDesk.png">
			                          <div class="clearfix"></div>
			                          <span class="small">BO Account Opening</span>
			                        </div>
			                    </a>
			                </div>
		             	<% } %>
		            	
		            	<% if(!isNull(els.get("subidhaUrl")) && els.get("subidhaUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="subidha" class="navigateClass" label="Digital Loan" url="<%- els.get("subidhaUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/07Subidha.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Digital Loan</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>
		            	
		            	<% if(!isNull(els.get("ekycUrl")) && els.get("ekycUrl") != "N") { %>
			             	 <div class="radio">
			                    <a href="javascript:void(0);" id="sohoj" class="navigateClass" label="Digital Account" url="<%- els.get("ekycUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/06Sohoj.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Digital Account</span>
			                        </div>
			                    </a>
			                </div>
			             <% } %>
		            	
		            	<% if(!isNull(els.get("sebaUrl")) && els.get("sebaUrl") != "N") { %>
		         	 		<div class="radio">
			                    <a href="javascript:void(0);" id="seba" class="navigateClass" label="Customer Service" url="<%- els.get("sebaUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/05Seba.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Customer Service</span>
			                        </div>
			                    </a>
			                </div>
		         	 	<% } %>
		         	 	
		            	<% if(!isNull(els.get("bankSmartUrl")) && els.get("bankSmartUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="bankSmart" class="navigateClass" label="Bank Smart" url="<%- els.get("bankSmartUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/01Bank-smart.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Bank Smart</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>

						<% if(!isNull(els.get("asthaNewsUrl")) && els.get("asthaNewsUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="asthNews" class="navigateClass" label="Astha News" url="<%- els.get("asthaNewsUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Astha News.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Astha News</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>

						<% if(!isNull(els.get("asthaBookUrl")) && els.get("asthaBookUrl") != "N") { %>
		            		<div class="radio">
			                    <a href="javascript:void(0);" id="asthaBook" class="navigateClass" label="Astha Book" url="<%- els.get("asthaBookUrl")%>">
			                        <div class="box">
			                          <img src="images/brand/apps/Astha Book.png">
			                          <div class="clearfix"></div>
			                          <span class="small">Astha Book</span>
			                        </div>
			                    </a>
			                </div>
		            	<% } %>

		            </div>
		        </form>
		        <br/><br/>
			</section>	
		</div>
	</div>
</div>
