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
    		<a href="#/binimoydirectpayinitiate" class="bacArr">
        		<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<h4  class="p10">Direct Pay Transaction Review</h4>	
  		</div>
  		<div class="headerRight">
	  	</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
		    <section class="content" id="recent_transactions">
				<form method="post" action="#">	
            		<div class="veriIconWrap">
               			<span class="menu_icon2 ico1x verify"></span>					
             		</div>
        			<div class="veriWrap">
            			<div class="media">
                			<div class="media-body media-middle">
                    			<%- els.get("accountTitle")%>
                    			<p class="small text-muted"> <%- els.get("registerdDevice")%> | <%- els.get("directPayFromAccNum")%></p>
                			</div>
                			<div class="media-right media-middle text-right">
                    			<span class="cur small text-muted"><%- els.get("directPayFromAccCur")%></span>
                			</div>
            			</div>
            			<div class="media">
                			<div class="media-left media-middle">
	                    		<span class="downArAni"></span>
	                		</div>
	                		<div class="media-body media-middle">
	                    		<span class="amt pos">
	                    			<%- checkAmount($.formatNumber(els.get("IDTPTransferAmount"), {format:"#,###.00", locale:"us"}))%>
	                        		<span class="cur">BDT</span>
	                    		</span>
	                    		<div class="clearfix"></div>
	                    		<p class="small"><%- els.get("amountInWords")%></p>
	                		</div>
	                		<div class="media-right media-middle text-right">
	                    		<span class="label label-default">BINIMOY</span>
	                		</div>
            			</div>
	            		<div class="media">
	                		<div class="media-body media-middle">
	                			<%- els.get("virtualIdName")%>
	                			<% if(isNull(els.get("IDTPTransferAliasName"))) { %>
	                				<p class="small text-muted"><%- els.get("IDTPTransferToVID")%></p>
	                			<% } else { %>
	                				<p class="small text-muted"><%- els.get("IDTPTransferToVID")%> | <%- els.get("IDTPTransferAliasName")%></p>
	                			<% } %> 
	                			
	                		</div>
	            		</div>
        			</div>
	        		<ul class="list-unstyled list-nobrd">
	            		<li class="list-group-item">
	                		<label>Total Debit Amount</label>
	                		<p>
	                    	<%- checkAmount($.formatNumber(els.get("IDTPTransferAmount"), {format:"#,###.00", locale:"us"}))%> BDT
	                		</p>
	            		</li>
	            		<li class="list-group-item">
	                		<label> Remarks</label>
	                		<p><%- els.get("IDTPTransferRemarks")%></p>
	            		</li>
	            		<% if(!isNull(els.get("IDTPTransferReference"))) { %>
	            			<li class="list-group-item">
		                		<label>Reference ID</label>
		                		<p><%- els.get("IDTPTransferReference")%></p>
		            		</li>
	            		<% } %>
	        		</ul>	
	        		<div class="clearfix"></div>
	        		 <div class="alert alert-info small" role="alert">
	                	<small><i class="fa fa-info-circle" aria-hidden="true"></i> Please Press "Proceed" to provide your BINIMOY PIN in the next screen.</small>
	               	</div>
	    			<div class="row">
	            		<div class="col-xs-6 pr5">
	                		<button type="button" class="btn btn-default btn-block" id="binimoyDirectPayVerifyCancelBtn">Cancel</button>
	            		</div>
	            		<div class="col-xs-6 pl5">
	                		<button type="button" class="btn btn-primary btn-block" id="binimoyDirectPayVerifyConfirmBtn">Proceed</button>
	            		</div>
	        		</div>
	        		<br>
	    		</form>
			</section>	
			
		</div>
	</div>
</div>
