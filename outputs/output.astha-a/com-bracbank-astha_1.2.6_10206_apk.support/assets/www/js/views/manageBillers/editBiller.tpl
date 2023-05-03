<%
	var els = new EncryptedLocalStorage('secret');
	var billerInstruction = els.get("billerInstruction");
	var selectedBillerInd = els.get("selectedBillerInd");
	var selectedBillerInfoDTO = billerInstruction[selectedBillerInd];
	console.log("selectedBillerInfoDTO",selectedBillerInfoDTO);
	var billBreakdown = els.get("billBreakDown");
	var maxlen;
	if(els.get("selectedBillerListName") == "Jalalabad Gas" || els.get("selectedBillerListName") == "WZPDCL") {
		maxlen = "16";
	} else {
		maxlen = "30";
	}	
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
			<%if(els.get("istransferPageFlag") == "true") {%>
				<a href="#/selectbillpayPage" class="bacArr">
			<% } else if(els.get("istransferPageFlag") == "false") {%>
				<a href="#/selectbiller" class="bacArr">
			<% } %>
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
	      </div>
	      <div class="headerMiddle">
  			<h4 class="p10"><%-$.i18n.t('app.sadad.managebills.editbills')%></h4>
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
            		<ul class="list-unstyled list-nobrd row">
                		<li class="list-group-item">
                    		<span class="menu_icon2 ico1x verify"></span>
                    		<p class="text-center"><%- els.get("selectedBillerListName")%></p>
                		</li>
                		<li class="list-group-item">
							<% if(els.get("selectedBillerTypeName") == "Tuition Fees") { %>
									<label>Payslip Number</label>
							<% } else if(els.get("selectedBillerTypeName") == "Electricity") { %>
								<% if(els.get("selectedBillerListName") == "DPDC") { %>
									<label>Customer Number</label>
								<%  } else if(els.get("selectedBillerListName") == "DESCO" || els.get("selectedBillerListName") == "WZPDCL"){ %>
									<label>Account Number</label>
								<% } else { %>
									<label>Biller ID / Number</label>								
								<% } %>
							<% } else if(els.get("selectedBillerTypeName") == "Water") { %>
								<label>Biller ID / Number</label>	
							<% } else if(els.get("selectedBillerTypeName") == "Internet") { %>
									<label>Subscriber Number</label>
							<% } else { %>
									<label><%- els.get("selectedBillerDateLabel")%></label>
							<% } %>
								<p><%- selectedBillerInfoDTO.mobileNumber%></p>
                		</li>
                		
                		<%if(selectedBillerInfoDTO.custName !== null){%>
                		 <%if(els.get("selectedBillerTypeName") == "Internet" || els.get("selectedBillerTypeName") == "Insurance"){%>
	                		<li class="list-group-item">
	                    		<label><%-$.i18n.t('app.sadad.managebills.customername')%></label>
	                    		<p><%- selectedBillerInfoDTO.custName%></p>
	                		</li>
                		   <%}%>
                		<%}%>
                		
                		<li class="list-group-item">
                    		<label><%-$.i18n.t('app.sadad.managebills.billersubcategory')%></label>
                    		<p><%- els.get("selectedBillerTypeName")%></p>
                		</li>
						
                		<li class="list-group-item">
							<% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
								<label for="bnum">Operator Name</label>
							<% } else { %>
								<label><%-$.i18n.t('app.sadad.managebills.billerservice')%></label>
							<% } %>
                    		<p><%-selectedBillerInfoDTO.serviceType%></p>
                		</li>
                		<% if(els.get("selectedBillerTypeName") == "Tuition Fees") { %>
							<li class="list-group-item">
	                    		<label>Student ID</label>
	                    		<p><%- selectedBillerInfoDTO.studentId%></p>
	                		</li>
							<li class="list-group-item">
	                    		<label>Student Name</label>
	                    		<p><%- selectedBillerInfoDTO.studentName%></p>
	                		</li>
						<% } %>
						<% if(els.get("selectedBillerListName") == "DPDC") { %>
							<li class="list-group-item">
	                    		<label>Connection Type</label>
	                    		<p><%- selectedBillerInfoDTO.serviceInfo%></p>
	                		</li>
						<% } %>
            		</ul>
            		<label for="sname">Short Name</label>    
            		<div class="form-group">
            			<input type="text" id="editBillerShortName" class="form-control alphanumericlengthcontrol" maxlength="<%- maxlen%>" value="<%- selectedBillerInfoDTO.shortName%>">
        			</div>
        			<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='editedShortNameError'></p>
					</div>
            		<div class="form-group" id="biller_edit_authmodeDiv"></div>
            		<div class="clearfix"></div>
            		<div class="row">
                		<div class="col-xs-12 pl5">
                    		<button type="button" class="btn btn-primary btn-block" id="editBillerSaveBtn">Save</button>
                		</div>
            		</div>
            		<br>
        		</form>
    		</section>	
		</div>
	</div>
</div>
<script>
(function ($){
     $.fn.inputalphanumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";					
		  var orignalValue=$(this).val();
		  for(var i=0;i<orignalValue.length;i++) {
		  	var atchar = orignalValue[i];
			if(allowedTest.indexOf(atchar) != -1) {
			} else {
				var changeTest =orignalValue.substr(0,i);
				orignalValue=changeTest;
			}
		   }
			$(this).val(orignalValue);
			if(makelength!=""){
	             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	                e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));
$('.alphanumericlengthcontrol').inputalphanumericlength();
</script>
<script>
	$(document).ready(function(){
		
	});
</script>
