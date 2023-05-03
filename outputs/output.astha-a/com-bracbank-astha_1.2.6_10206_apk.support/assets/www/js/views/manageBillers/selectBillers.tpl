<%
	var els = new EncryptedLocalStorage('secret');
	var billerInstruction = els.get("billerInstruction");
	var selectedBillerTypeName = els.get("selectedBillerTypeName");
	var selectedBillerListId = els.get("selectedBillerListId");
	var selectedBillerListCode = els.get("selectedBillerListCode");
	var selectedBillerListName = els.get("selectedBillerListName");
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
			<a href="#/viewbillerlist" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10">Pay <%- els.get("selectedBillerListName")%></h4>
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
				<%if(billerInstruction.length > 0) { %>
        		<div class="contact_sticky_search">
			        <div class="form-group m0">
				        <div class="input-group">
				            <span class="input-group-addon glyphicon glyphicon-search"></span>
				            <input type="text" id="biller_search_box" placeholder="Search Biller" class="form-control"style="padding-right:30px;"/>
				            <span class="search_clear"></span>
				        </div>
			        </div>
			    </div>
			    <div class="manageBene_outer">
	    			<form>    
		        		<div class="radio-list">
		        			<% var count = 1;
							_.each(billerInstruction,function(data,index){ %>
			            		<div class="radio billerBeneItems">
			            			<div class="row">
										<div class="col-xs-12">
					                		<label>
					                			<input type="checkbox" class="selectBiller" name="selectBilller"  billerId="<%- data.id%>" id="<%-index%>" billId="<%- data.billerId%>" shortName="<%- data.shortName%>" value="<%- data.mobileNumber%>" payslipNum="<%- data.paySlipNo%>" billNum="<%- data.mobileNumber%>" billServId="<%- data.serviceId%>" billServName="<%- data.serviceType%>" billServInfo="<%- data.serviceInfo%>"/>
					                			<div class="radio-wrap">
					                    			<div class="row">
					                        			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					                            			<img src="images/brand/biller/<%- selectedBillerListCode%>.png" class="radiothumb">
					                            			<div class="radiobody">
					                                			<p class="title_txt"><%- data.shortName%></p>
					                                			<% if(els.get("selectedBillerTypeName") == "Electricity") { %>
					                                				<p><span class="small text-muted"><%- els.get("selectedBillerDataLabelName")%>: </span><span><%- data.mobileNumber%></span></p>
					                                			<% } else { %>
					                                				<p><span class="small text-muted"><%- selectedBillerDateLabel%>: </span><span><%- data.mobileNumber%></span></p>
					                                			<% } %>
					                                			
					                            			</div>
					                        			</div>
					                    			</div>
					                			</div>
					            			</label>
				            			</div>
			            			</div>
			            			
			            			<div class="row" id="bills_btn_div_<%-index%>" style="display:none;">
					                  	<div class="col-xs-6">
					                    	<div class="selected_bene">
					                        	<div class="row">
					                        		<div class="col-xs-6 p0">
						                                <a href="javascript:void(0);" id="manageBillerEditBtn" class="btn btn-primary btn-block selected_bene_btn firstBtn_bene"><i class="fa fa-pencil" aria-hidden="true"></i></a>
					                            	</div>
					                            	<div class="col-xs-6 p0">
					                                	<a href="javascript:void(0);" id="manageBillerDeleteBtn" class="btn btn-default btn-block selected_bene_btn firstBtn btn_delete"><i class="fa fa-trash" aria-hidden="true"></i></a>
					                            	</div>
					                        	</div>
					                    	</div>
					                  	</div>
					                  	<div class="col-xs-6">
				                    		<div class="selected_manebene_trans">
					                      		<a href="javascript:void(0);" class="btn btn-success btn-block selected_bene_btn lastBtn pull-right" id="manage_biller_billpay_btn">
					                        		<i class="fa fa-paper-plane-o" aria-hidden="true"></i>
					                      		</a>
				                    		</div>
					                  	</div>
					                </div>
			            			
			        			</div>
		        			<% count++; }); %>
		    			</div>
						<div style="text-align:center; font-weight:bold; padding-top:20px;display:none;" class="nodata">No Data Found</div>
					</form>
				</div> 
				<% } else { %>
					<br>
		            <br>
		            <br>
		            <span class="menu_icon2 ico1x verify"></span>
		            <br>
		            <!--<p class="text-center">Your registered billers will get displayed here</p>-->
		            <p class="text-center">To register for a new beneficiary click </p>
		            <% if(selectedBillerListName !== "DPDC") { %>
						<p class="text-center"><b>"ADD <%- selectedBillerDateLabel.toUpperCase()%>"</b></p>
					<% }  else { %>
						<p class="text-center"><b>"ADD BENEFICIARY"</b></p>
					<% } %>
		            <br>
		            <br>
		            <br>
		            <br>
				<% } %>   
    			<div class="clearfix"></div>
    			<!--<div class="row" id="bills_btn_div" style="display:none;">
	                <div class="col-xs-6 pr5">
	                    <button type="button" id="manageBillerDeleteBtn" class="btn btn-default btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.delete')%></button>
	                </div>
	                <div class="col-xs-6 pl5">
	                    <button type="button" id="manageBillerEditBtn" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.edit')%></button>
	                </div>
	            </div>-->
				<!--<div class="row" id="bills_add_btn_div">
      				<div class="col-xs-8 col-xs-offset-2">
      					<%if(selectedBillerListName !== "DPDC") { %>
          					<a href="javascript:void(0);" class="btn btn-primary btn-block" id="addBillerBtn_Manage">Add <%- selectedBillerDateLabel%></a>
          				<% }  else { %>
          					<a href="javascript:void(0);" class="btn btn-primary btn-block" id="addBillerBtn_Manage">Add Beneficiary</a>
          				<% } %>    
      				</div>
    			</div>-->
    			<br/>
    			<br/>
    			<div class="row" id="bills_add_btn_div">
    				<a href="javascript:void(0);" alt="Add Beneficiary" class="add_btn_float" id="addBillerBtn_Manage">
		              <i class="fa fa-plus" aria-hidden="true"></i>
		              <span id="biller_add_bene-btn">Add Beneficiary</span>
		            </a> 
    			</div>
			</section>	

		    <div class="modal fade drawers trans_popup" id="delete_popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  				<div class="modal-dialog" role="document">
    				<div class="modal-content">
      					<div class="modal-header">
        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      					</div>
      					<div class="modal-body">
        					<h4><%-$.i18n.t('app.transfer.managebeneficiary.confirmation')%>!</h4>  
		  					<div class="spacer20"></div>
    						<p><%-$.i18n.t('app.transfer.managebeneficiary.deletetext')%></p>
							<div class="clearfix"></div>  
							<div class="spacer20"></div>
							<div class="row">
								<div class="col-xs-6 pr5">
									<button type="button" class="btn btn-default btn-block" id="delete_biller_cancel_btn">No</button>
								</div>
								<div class="col-xs-6 pl5">
									<button type="button" class="btn btn-primary btn-block" id="delete_biller_ok_btn" data-dismiss="modal">Yes</button>
								</div>
      						</div>
							<div class="clearfix"></div>  
							<div class="spacer20"></div>
      					</div>
		    		</div>
  				</div>
			</div>
		</div>
	</div>
</div>
