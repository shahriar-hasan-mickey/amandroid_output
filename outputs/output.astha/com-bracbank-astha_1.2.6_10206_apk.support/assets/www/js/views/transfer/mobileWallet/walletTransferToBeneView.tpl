<%
	var els = new EncryptedLocalStorage('secret');
	var walletTransferBeneList = els.get("selectedWalletBeneDTO");
	console.log("walletTransferBeneList",walletTransferBeneList);
	var walletName = els.get("walletType");
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="javascript:void(0);" id="wallettransferbackbtn"  class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4>Pay <%- walletName%><p class="small">(Fund Transfer)</p></h4>
  		<span class="step-badge">1/3</span>
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
                    		<a href="javascript:void(0);" class="text-center active">
                        		<span class="menu_icon ico-xs toBene"></span>
                        		<p class="small m0"><%-$.i18n.t('app.transferss.tobenelabel')%></p>
                    		</a>
                		</div>
                		<div class="col-xs-6 col-sm-6 pl5">
                    		<a href="javascript:void(0);" id="walletOneTimePay" class="text-center">
                        		<span class="menu_icon ico-xs onetimepay"></span>
                        		<p class="small m0"><%-$.i18n.t('app.transferss.onetimepaylabel')%></p>
                    		</a>
                		</div>
            		</div>
        		</div>
	        		<%if(walletTransferBeneList.length > 0 ){ %>
		        		<h4><%-$.i18n.t('app.transferss.selectbene')%></h4>
		        		<form>    
		            		<div class="radio-list">
		            		<% _.each(walletTransferBeneList,function(data,index){ %>
		                		<div class="radio">
		                    		<label>
		                        		<input type="radio" class="selectedWalletBene" name="walletBene" value="<%- data.id%>" data="<%-data.beneInstId %>" id="<%- index%>">
		                    			<div class="radio-wrap">
		                            		<div class="row">
		                                		<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
		                                    		<img src="images/common/user_default1.png" class="radiothumb"/>
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
		                                		</div>
		                            		</div>
		                        		</div>
		                    		</label>
		                		</div>
	                		<% }); %>
	            		</div>
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
        		<a href="javascript:void(0);" id="walletTransferAddBeneBtn" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.addbene')%></a>  
    		</section>	
		</div>
	</div>
</div>