<%
	var els = new EncryptedLocalStorage('secret');
	var arrVidList = els.get("arrVidList");
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
    		<a href="#/binimoyselectpage" class="bacArr">
        		<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<h4  class="p10">BINIMOY-Direct Pay</h4>	
  		</div>
  		<div class="headerRight">
	  	</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
		    <section class="content" id="recent_transactions">
				 <div class="contact_sticky_search">
		        	<div class="form-group m0">
		            	<div class="input-group">
		                	<span class="input-group-addon glyphicon glyphicon-search"></span>
	                		<input type="text" id="recentVIDs_searchBox" placeholder="Search" class="form-control">
	                		<span class="search_clear"></span>
	            		</div>
	        		</div>
	    		</div>
	    		<% if(arrVidList.length > 0 && !isNull(arrVidList)) { %>
	    			<div class="list-group cust_list_BINIMOY">
	    				<% _.each(arrVidList,function(data,index){ %>
	    					<% var dataArr = data.split("-"); console.log("dataArr",dataArr); var vidName = dataArr[1]; var vid = dataArr[0];%>
	    					<li class="list-group-item recentVIDsList" id="recentVID_<%- index%>" vid="<%- vid%>">
		            			<a href="javascript:void(0);" id="directPayBtn_<%- index%>" class="selectListClass" style="display:none;">
		            				<span class="btn btn-success pull-right">
		                				<i class="fa fa-paper-plane-o" aria-hidden="true"></i>
		            				</span>
		    					</a>
		            			<p><%- vidName%></p>
		            			<p class="small text-muted">
		                			<%- vid %>
		            			</p>
		        			</li>
		        			<div class="clearfix"></div>
	    				<% }); %>
	    			</div>
	    			<div style="text-align:center; font-weight:bold; padding-top:20px;display:none;" class="nodata">No Data Found</div>
	    		<% } else { %>
	    			<div class="transferBene_outer">
						<span class="menu_icon2 ico1x verify"></span>
						<br>
						<p class="text-center">Your recent VIDs will be displayed here</p>
						<p class="text-center">Please click New Transaction to make a payment</p>
	    			</div>
	    		<% } %>
	    		<div id="gotoNewTransactionDiv">
	    			<a href="javascript:void(0);" id="gotoNewTransaction" alt="New Transaction" class="add_btn_float">
				        <i class="fa fa-plus" aria-hidden="true"></i>
				        <span class="scrollviewbtn" id="recentVIDs_NewTransactionBtn">New Transaction</span>
				    </a>
	    		</div>
			</section>	
		</div>
	</div>
</div>
						 

