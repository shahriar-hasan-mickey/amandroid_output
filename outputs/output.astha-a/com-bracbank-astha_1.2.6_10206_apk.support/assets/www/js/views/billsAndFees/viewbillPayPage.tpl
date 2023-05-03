<%
	var els = new EncryptedLocalStorage('secret');
	var billerInstruction = els.get("billerInstruction");
	var selectedBillerTypeName = els.get("selectedBillerListName");
	var selectedBillerListId = els.get("selectedBillerListId");
	var selectedBillerDateLabel = els.get("selectedBillerDateLabel");
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
			<a href="#/viewbillpaylists" class="bacArr">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
		</div>
		<div class="headerMiddle">
  			<h4  class="p10">Pay <%- els.get("selectedBillerListName")%></h4>	
		</div>
		<div class="headerRight">
			<span class="step-badge">1/3</span>
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
		<ul class="step-progress">
			<li class="done"></li>
			<li></li>
			<li></li>
  		</ul>	
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
			
			<div class="logWit small">
          <div class="row">
            <div class="col-xs-6 col-sm-6 pr5">
              <a href="#/selectbillpayPage" class="text-center active">
                <span class="menu_icon ico-xs toBiller"></span>
                <p class="small m0">To Biller</p>
              </a>
            </div>
            <div class="col-xs-6 col-sm-6 pl5">
              <a href="#/billpayonetimepay" class="text-center">
                <span class="menu_icon ico-xs onetimepay"></span>
                <p class="small m0">One Time PAY</p>
              </a>
            </div>
          </div>
        </div>
			
				<%if(billerInstruction.length > 0) { %>
	        		<h4>Select Biller</h4>
	    			<form>
	    			<% _.each(billerInstruction,function(data,index){ %>    
		        		<div class="radio-list">
		            		<div class="radio">
		                		<label>
		                			<input type="radio" name="choice" class="markSelect" id="<%- data.billerId%>" value="<%-data.id%>" data="<%- index%>" billNum="<%- data.mobileNumber%>"payslipNum="<%- data.paySlipNo%>" billServName="<%- data.serviceType%>" billServId="<%- data.serviceId%>" billServInfo="<%- data.serviceInfo%>">
		                			<div class="radio-wrap">
		                    			<div class="row">
		                        			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		                            			<img src="images/brand/biller/<%- data.billerId%>.png" class="radiothumb">
		                            			<div class="radiobody">
		                                			<p class="title_txt"><%-data.shortName%></p>
		                                			<p><span class="small text-muted">Bill Number: </span><span><%-data.mobileNumber%></span></p>
		                            			</div>
		                        			</div>
		                    			</div>
		                			</div>
		            			</label>
		        			</div>
		    			</div>
		    			<% }); %>
					</form> 
				<% } else { %>
					<br>
		            <br>
		            <br>
		            <span class="menu_icon2 ico1x verify"></span>
		            <br>
		            <p class="text-center">Your registered billers will get displayed here</p>
		            <p class="text-center">To register for a new biller,</p>
		            <p class="text-center">click <b>‘Add Biller’</b></p>
		            <br>
		            <br>
		            <br>
		            <br>
				<% } %>   
    			<div class="clearfix"></div>
    			<div class="row">
      				<div class="col-xs-8 col-xs-offset-2">
          				<a href="javascript:void(0);" class="btn btn-primary btn-block" id="addBillerBtn_BillPay">Add <%- selectedBillerDateLabel%></a>    
      				</div>
    			</div>
			</section>	
		</div>
	</div>
</div>
