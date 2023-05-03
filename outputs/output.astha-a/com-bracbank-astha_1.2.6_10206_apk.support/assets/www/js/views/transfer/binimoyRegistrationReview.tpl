<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
	
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
    		<% if(els.get("isFromNewBinimoyRegPage") == "true") { %>
    			<a href="#/binimoynewregistration" class="bacArr">
    		<% } else if(els.get("isFromNewBinimoyRegPage") == "false") { %>
    			<a href="#/binimoyexistinguserreg" class="bacArr">
    		<% } %>
    		
        		<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<h4  class="p10">BINIMOY</h4>	
  		</div>
  		<div class="headerRight">
	  	</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
		    <section class="content" id="BINIMOY">
      			<form>
                	<ul class="list-unstyled list-nobrd">
                    	<li class="list-group-item">
                        	<label>Name</label>
                    		<p><%- els.get("profileName")%></p>
                    </li>
                    <li class="list-group-item">
                        <label>BINIMOY VID</label>
                        <p><a href="javascript:void(0);"><%- els.get("binimoyVID")%></a>        
                        </p>
                    </li>
                </ul>

                <hr/>
            	<div class="panel panel-info">
                	<div class="panel-heading"> Default Debit </div>
                	<div class="panel-body">
                    	<p><%- els.get("binimoyDebitAccNum")%></p>
                    	<p class="small">Alias: <span><%- els.get("debitAlias")%></span></p>
                    </div>
                </div> 
                <div class="panel panel-info">
                    <div class="panel-heading"> DP Default Credit  </div>
                    <div class="panel-body">
                        <p><%- els.get("binimoyCreditAccNum")%></p>
                        <p class="small">Alias: <span><%- els.get("creditAlias")%></span></p>
                    </div>
                </div> 
				<% if(!isNull(els.get("binimoyDebitRTPAccNum"))) { %>
					<div class="panel panel-info">
						<div class="panel-heading"> RTP Default Debit  </div>
						<div class="panel-body">
							<p><%- els.get("binimoyDebitRTPAccNum")%></p>
							<p class="small">Alias: <span><%- els.get("rtpDebitAlias")%></span></p>
						</div>
					</div> 
				<% } %>
                <div class="clearfix"></div>
                <div class="alert alert-info small" role="alert">
    				<small><i class="fa fa-info-circle" aria-hidden="true"></i> Please click "Proceed" to setup your BINIMOY PIN in the next screen. Kindly remember your BINIMOY PIN for future reference.</small>
   				</div>
   				<br/>
            	<div class="row">
                	<div class="col-xs-6"><button type="button" class="btn btn-default btn-block" id="binimoyRegReviewCancelBtn">Cancel</button></div>
                	<div class="col-xs-6"><button type="button" class="btn btn-primary btn-block" id="binimoyRegReviewRegisterBtn">Proceed</button></div>
                </div>
        </form>	
			</section>	
			
	        
		</div>
	</div>
</div>
						 

