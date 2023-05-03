<%
	var els = new EncryptedLocalStorage('secret');
	var selectedBillerListName = els.get("selectedBillerListName");
	var billerService = els.get("menuList");
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
			<%if(els.get("isTransfer") == "true") { %>
  				<a href="#/selectbillpayPage" class="bacArr">
  			<%} else {%>
  				<a href="#/selectbiller" class="bacArr">
  			<% } %>
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
			<% if(selectedBillerListName !== "DPDC" || els.get("selectedBillerListName") != "DESCO" || els.get("selectedBillerListName") != "NESCO") { %>
				<h4  class="p4">Add <%- els.get("selectedBillerDateLabel")%><p class="small">(<%- selectedBillerListName%>)</p></h4>	
			<% }  else { %>
				<h4  class="p4">ADD BENEFICIARY<p class="small">(<%- selectedBillerListName%>)</p></h4>
			<% } %>	
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
        			<% if( els.get("selectedBillerListName") != "DPDC" && els.get("selectedBillerListName") != "DESCO" && els.get("selectedBillerListName") != "NESCO") { %>
	        			<% if(els.get("selectedBillerTypeName") != "Tuition Fees" ) {%>
						<% if(els.get("selectedBillerListName") != "WASA" ) {%>
		        			<label for="bnum">Biller Sub Category</label>
		        			<div class="form-group">
				                <select id="manageBillerSubCat" class="form-control">
				                    <option id="<%- els.get('selectedBillerTypeId')%>" selected><%- els.get("selectedBillerTypeName")%></option>
				                </select>
				            </div>
				        <% } %>
							<% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
								 <label for="bnum">Operator Name</label>
							<% } else { %>
								<label for="bnum">Biller Name</label>
							<% } %>
		        			<div class="form-group">
				                <select id="manageBiller_BillerName" class="form-control">
				                    <option id="<%- els.get('selectedBillerListId')%>" selected><%- els.get("selectedBillerListName")%></option>
				                </select>
				            </div>
			            <% } %>
			            <% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
							<label for="bnum">Select connection type</label>
						<% } else if(els.get("selectedBillerTypeName") == "Tuition Fees") { %>
							<label for="bnum">Biller Name</label>
						<% } else { %>
							<label for="bnum">Biller Service</label>
						<% } %>
	        			<div class="form-group">
			                <select id="manageBiller_BillerService" class="form-control">
			                	<% if(els.get("selectedBillerTypeName") == "Tuition Fees") { %>
			                    	<option id="" value="">Select a Biller Name</option>
		                    	<% } else { %>
		                    		<option id="" value="">Select a Biller Service</option>
		                    	<% } %>
			                    <% _.each(billerService,function(data,index){ %>
			                    	<option id="<%- data.id%>" value="<%- data.code%>"><%- data.description%></option>
			                    <% }); %>
			                </select>
			            </div>
			            <div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='billerServiceError'></p>
						</div>
					<% }  else { %>
						<div class="form-group">
							<label for="bnum">Biller Service</label>
							<select id="manageBiller_BillerService" class="form-control" disabled>
								<% _.each(billerService,function(data,index){ %>
									<% if(data.code == "Electricity") { %>
				                    	<option id="<%- data.id%>" value="<%- data.code%>"><%- data.description%></option>
			                    	<% } %>
			                    <% }); %>
		                    </select>
	                    </div>
	                    <div class="form-group" id="DPDC_BillerName">
							<label for="bnum">Biller Name</label>
							<% if(els.get("selectedBillerListName") == "DPDC") { %>
								<p>DPDC</p>								
							<% } else if(els.get("selectedBillerListName") == "DESCO") { %>
								<p>DESCO</p>	
							<% } else if(els.get("selectedBillerListName") == "NESCO") { %>
								<p>NESCO</p>	
							<% } %>
						</div>			
					<% } %>
		            <div id="inputDiv"></div>
        			<div class="form-group" id="biller_add_authmodeDiv"></div>
        			<div class="clearfix"></div>
    				<div class="row">
        				<div class="col-xs-6 pr5">
            				<button type="button" id="addBiller_CancelBtn" class="btn btn-default btn-block">Cancel</button>
        				</div>
        				<div class="col-xs-6 pl5">
            				<button type="button" class="btn btn-primary btn-block" id="addBiller_NextBtn">Next</button>
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
     $.fn.inputnumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          	var allowedTest ="1234567890";					
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
$('.numericlengthcontrol').inputnumericlength();

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
