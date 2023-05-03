<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = getAccountDTO(); 
	//var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
	var ccListDTO = els.get("ccListDTO");
	var pcListDTO = els.get("pcListDTO");
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
  			<h4  class="p10"><%-$.i18n.t('app.more.transhistory.title')%></h4>	
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="trans_history">
            	<form>
            	<label for="trantype"><%-$.i18n.t('app.more.transhistory.selecttranstype')%></label>
                	<div class="form-group">
                        	<select name="trantype" class="form-control" id="transType">
								<!--<option value="" selected="selected" ><%-$.i18n.t('app.more.transhistory.selecttranstype')%></option>-->
                            	<option value="A">All</option>
                                <option value="F"><%-$.i18n.t('app.more.transhistory.fundtransfer')%></option>
                                <option value="B"><%-$.i18n.t('app.more.transhistory.billpayments')%></option>
                                <!--<option value="I"><%-$.i18n.t('app.more.transhistory.ibtransfer')%></option>-->
                         	</select>
                    </div>
                    <label for="Fromdate"><%-$.i18n.t('app.more.transhistory.fromdate')%></label>
                    <div class="form-group">
                       	<input type="text" id="from_date" name="Fromdate" class="form-control nativedatepicker" readonly onchange="clearError()"  placeholder="dd/mm/yyyy"/>
                    </div>
                    <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="Fromdateerror"></p>
					</div>
					<label for="todate"><%-$.i18n.t('app.more.transhistory.todate')%></label>
                    <div class="form-group">
                    	
                        <input type="text" id="to_date" name="todate" class="form-control nativedatepicker" readonly onchange="clearError()"  placeholder="dd/mm/yyyy"/>
                    </div>
                    <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="todateError"></p>
					</div>
                    <label for="fromaccnum"><%-$.i18n.t('app.more.transhistory.fromacnt')%></label>
                    <div class="form-group">
                        <select name="fromaccnum" id="From_historyAccount" class="form-control">
                        	<option value="" selected="selected" ><%-$.i18n.t('app.more.transhistory.selectacnt')%></option>
							<option value="ALL" Accide="ALL">All</option>
							<%_.each(myaccounts,function(data,index){%>
								<option acctype="CASA" frName="<%-data.productName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>"> <%-data.accountNumber%></option>
							<%});%>
							<% if(pcListDTO != "" || pcListDTO != null) { %>
		                        <%_.each(pcListDTO,function(data,index) { %>  
		                		    <option acctype="PC" shName="<%-data.cardHolderName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>"> <%- data.accountNumber%></option>
		                        <% }); %>
		                    <% } %>
		                    <% if(ccListDTO != "" || ccListDTO != null) { %>
		                        <%_.each(ccListDTO,function(data,index) { %>  
		                		    <option acctype="CC" shName="<%-data.cardHolderName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>"> <%- data.accountNumber%></option>
		                        <% }); %>
		                    <% } %>
                        </select>
                    </div>
                    <label for="beneficiaryType"><%-$.i18n.t('app.more.transhistory.selectbenetype')%></label>
                    <div class="form-group">
                        <select name="beneficiaryType"  id="beneficiaryType_Id" class="form-control">
                       	</select>
                   	</div>
					<label for="beneficiary" class="beneficiary_Iddisp"><%-$.i18n.t('app.more.transhistory.selectbene')%></label>
                    <div class="form-group">
                        <select name="beneficiary"  id="beneficiary_Id" class="form-control beneficiary_Iddisp">
							<option value="" selected="selected" >Select Beneficiary</option>
                       	</select>
                   	</div>
                   	<label for="channel"><%-$.i18n.t('app.more.transhistory.selectchannel')%></label>
                    <div class="form-group">
                        <select name="channel" id="chennal_Id" class="form-control">
                        <option value="" selected="selected" >Select Channel</option>
							<option value="ALL">All</option>
                        	<option value="WEB">WEB</option>
                        	<option value="MOB">MOB</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
	                    <div class="col-xs-6"><button type="button" id="cancel_trans_btn" class="btn btn-default btn-block"><%-$.i18n.t('button.login.cancel')%></button></div>
	                    <div class="col-xs-6"><button type="button" id="view_trans_btn" class="btn btn-primary btn-block"><%-$.i18n.t('button.more.view')%></button></div>
	                </div>
	            </form>
			</section>
		</div>
	</div>
</div>
<script >
function clearError(){
		$("#Fromdateerror").html("");
            $("#todateError").html("");
}

</script>
