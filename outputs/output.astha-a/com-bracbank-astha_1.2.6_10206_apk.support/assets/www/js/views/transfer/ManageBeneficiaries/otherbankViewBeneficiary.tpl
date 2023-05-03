<%
var els = new EncryptedLocalStorage('secret'); 
var otherbene = els.get("localBeneficiaryBeneficiaryInstructionDTOList");
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
		</div>
  		<h4><%-$.i18n.t('app.transfer.managebeneficiary.otherbankbene')%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
				<% if(otherbene.length > 0) { %>
        			<h4><%-$.i18n.t('app.transfer.managebeneficiary.selectbeneficiary')%></h4>
    				<form>    
    					<% _.each(otherbene,function(data){ %>
	        				<div class="radio-list">
	            				<div class="radio">
	                				<label>
		                        		<input type="radio" name="choice" class="markSelected" value="withinbank" data="<%- data.id%>" shortName="<%- data.shortName %>" accNum="<%- data.accountNumber %>">
                    					<div class="radio-wrap">
                        					<div class="row">
                            					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                					<img src="images/common/user_default1.png" class="radiothumb">
                                					<div class="radiobody">
                                    					<p><%- data.shortName %></p>
                                    					<p class="small text-muted acno"><%- data.accountNumber %></p>
                                    					<p class="small text-muted"><%- data.firstName %></p>
                                    					<p class="small text-muted"><%- data.bankName %></p>
                                    					<p class="small text-muted"><%-$.i18n.t('app.transfer.managebeneficiary.bdt')%></p>
                                					</div>
                            					</div>
                            					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-right small">
                                					<p class="text-success text-uppercase">
                                    					<strong><%- data.statusID%></strong>
                                					</p>
                                					<span class="text-muted"><%- data.imAccountType%></span>
                         						</div>
	                        				</div>
	                    				</div>
	                				</label>
								</div>
        					</div>
        				<% }); %>
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
        		<a href="javascript:void(0);" class="btn btn-primary btn-block" id="addBene"><%-$.i18n.t('app.transfer.managebeneficiary.addbene')%></a>
    		</section>	
		</div>
	</div>
</div>