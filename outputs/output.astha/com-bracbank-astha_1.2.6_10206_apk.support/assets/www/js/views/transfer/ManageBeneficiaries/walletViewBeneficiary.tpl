<%
	var els = new EncryptedLocalStorage('secret');
	var selectedWalletBeneDTO = els.get("selectedWalletBeneDTO");
	console.log("selectedWalletBeneDTO",selectedWalletBeneDTO);
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="#/wallets" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4> Pay <%- els.get("walletType")%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
				<%if(selectedWalletBeneDTO.length > 0 ){ %>
	        		<h4>Select Beneficiary</h4>
	    			<form> 
	    				<div class="radio-list">   
	        				<% _.each(selectedWalletBeneDTO,function(data,index){ %>
            					<div class="radio">
                					<label>
                    					<input type="radio" name="beneId" id="<%- index%>" class="selectWalletBene" value="<%- data.id%>" shortName="<%-data.shortName%>" accNum="<%-data.accountNumber%>">
                    					<div class="radio-wrap">
                        					<div class="row">
                            					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                					<img src="images/common/user_default1.png" class="radiothumb">
                                					<div class="radiobody">
                                    					<p><%-data.shortName%></p>
                                    					<p class="small text-muted acno"><%-data.accountNumber%></p>
                                						<p class="small text-muted"><%-data.firstName%></p>
                                					</div>
                            					</div>
                            					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-right small">
                                					<p class="text-success text-uppercase">
                                    					<strong><%-data.statusID%></strong>
                                					</p>
                                					<span class="text-muted"><%- data.imAccountType%></span>
                                					<p class="text-muted">  </p>
                            					</div>
                        					</div>
                    					</div>
                					</label>
        						<%});%>
            				</div>
        				</div>
        				<div class="clearfix"></div>
    				</form> 
				<% } else { %> 
    				<br>
		            <br>
		            <br>
		            <span class="menu_icon2 ico1x verify"></span>
		            <br>
		            <p class="text-center"><%-$.i18n.t('app.transfer.managebeneficiary.regbene')%></p>
		            <p class="text-center"><%-$.i18n.t('app.transfer.managebeneficiary.addbenepay')%></p>
		            <br>
		            <br>
		            <br>
		            <br>
        		<% } %> 
    			<a href="javascript:void(0);" id="walletAddBeneBtn" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.addbene')%></a> 
			</section>	
		</div>
	</div>
</div>