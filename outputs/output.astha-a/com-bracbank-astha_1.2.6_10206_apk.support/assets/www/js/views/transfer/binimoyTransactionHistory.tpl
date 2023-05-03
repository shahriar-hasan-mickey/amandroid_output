<%
	var els = new EncryptedLocalStorage('secret'); 
	var getTransactionsbyUserDTOList = els.get("getTransactionsbyUserDTOList");
	console.log("getTransactionsbyUserDTOList",getTransactionsbyUserDTOList);
	var RTPSentList = els.get("RTPSentList");
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
			<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10">BINIMOY-Transaction History</h4>	
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
        			<div class="contact_sticky_search">
            			<div class="form-group">
                			<div class="custRadio_pass no_ico tab3 ">
                    			<div class="row">
                        			<div class="col-xs-4 cust_padding">
                            			<div class="box">
                                			<div class="radio">
                                    			<label>
                                        			<input type="radio" name="binimoyTransHistory" id="directPayTransHistory" value="DirectPay">
                                        			<div class="row bg">
                                            			<div class="col-xs-12 p0">
                                                			<span class="small">Direct   Pay</span>
                                            			</div>
                                    				</div>
                                    			</label>
                                			</div>
                            			</div>
                        			</div>
                        			<div class="col-xs-4 cust_padding">
                            			<div class="box">
                                			<div class="radio">
                                    			<label>	
                                        			<input type="radio" name="binimoyTransHistory" id="sentRTPTransHistory" value="SentRTP">
                                    				<div class="row bg">
                                            			<div class="col-xs-12 p0">
                                                			<span class="small">Sent RTP </span>
                                            			</div>
                                        			</div>
                                    			</label>
                                			</div>
                            			</div>
                        			</div>
                        			<div class="col-xs-4 cust_padding">
                            			<div class="box">
                                			<div class="radio">
                                    			<label>
                                        			<input type="radio" name="binimoyTransHistory" id="receiveRTPTransHistory" value="ReceiveRTP">
                                        			<div class="row bg">
                                            			<div class="col-xs-12 p0">
                                                			<span class="small">Received RTP </span>
                                            			</div>
                                        			</div>
                                    			</label>
                                			</div>
                            			</div>
                        			</div>
                    			</div>
                			</div>
            			</div>
            			<div class="form-group m0">
                			<div class="input-group">
                    			<span class="input-group-addon glyphicon glyphicon-search"></span>		
                    			<input type="text" id="binimoyTransHistory_SearchBox" placeholder="Serach Transactions " class="form-control" />
                    			<span class="search_clear"></span>
                			</div>
            			</div>
          			</div>
				</form>
				<div id="transHistoryTemplateDiv"></div>
        		<div id="binimoyTransHistoryFilterDiv">
	        		<a href="javascript:void(0);" alt="Filter" class="add_btn_float">
	            		<i class="fa fa-filter" aria-hidden="true"></i> 
	            		<span class="scrollviewbtn" id="binimoyTransHistory_Filter">Filter</span>
	        		</a>	
    			</div>
			</section>
			<div class="modal fade trans_popup" id="filterPopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    			<div class="modal-dialog" role="document">
      				<div class="modal-content">
        				<div class="modal-header">
          					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        				</div>
        				<div class="modal-body">
            				<div class="trans_search">
            					<h4>Filter</h4>
          						<form>
                  					<div class="row">
                    					<div class="col-xs-6">
                      						<div class="form-group">
                        						<label>From Date</label>
                        						<input type="date" id="binimoytranshistory_fromDate" name="fromDate" class="form-control">
                      						</div>
                    					</div>
                    					<div class="form-group has-error">
											<p class="help-block error-message has-error" style="color:#a94442" id="fromDateErr"></p>
						 				</div>
                    					<div class="col-xs-6">
                      						<div class="form-group">
                        						<label>To Date</label>
                        						<input type="date" binimoytranshistory_toDate name="toDate" class="form-control">
                      						</div>
                    					</div>
                    					<div class="form-group has-error">
											<p class="help-block error-message has-error" style="color:#a94442" id="toDateErr"></p>
						 				</div>
                  					</div>
              					</form>
              					<div class="clearfix"></div>  
              					<div class="spacer20"></div>
              					<div class="row">
                  					<div class="col-xs-6 pr5">
                      					<button type="button" class="btn btn-default btn-block" data-dismiss="modal">Cancel</button>
                  					</div>
                  					<div class="col-xs-6 pl5">
                      					<button type="button" class="btn btn-primary btn-block" id="binimoyTransHistory_FilterBtn">Filter</button>
                  					</div>
              					</div>
          					</div>
        				</div>
      				</div>
    			</div>
  			</div>
		</div>
	</div>
</div>
