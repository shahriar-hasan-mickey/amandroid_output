<%
	var els = new EncryptedLocalStorage('secret'); 
	var otherbene = els.get("localBeneficiaryBeneficiaryInstructionDTOList");
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
			<%if(els.get("isTransfer") == "true") {%>
		    	<a href="#/transfer" class="bacArr">
			<% } else {%> 
				<a href="#/otherselectbene" class="bacArr">
			 <% } %>
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4><%-$.i18n.t('app.transferss.payotherbanks')%><p class="small"><%-$.i18n.t('app.transferss.paumenttrans')%></p></h4>
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
        		<div class="logWit small transfer_option">
            		<div class="row">
                		<div class="col-xs-6 col-sm-6 pr5">
                    		<a href="#/otherbankselectbeneficiary" class="text-center active">
                        		<span class="menu_icon ico-xs toBene"></span>
                        		<p class="small m0"><%-$.i18n.t('app.transferss.tobene')%></p>
                    		</a>
                		</div>
                		<div class="col-xs-6 col-sm-6 pl5">
                    		<a href="#/otherbankonetimepay" class="text-center">
                        		<span class="menu_icon ico-xs onetimepay"></span>
                        		<p class="small m0"><%-$.i18n.t('app.transferss.onetimepay')%></p>
                    		</a>
                		</div>
            		</div>
        		</div>
        		<% if(otherbene.length > 0) { %>
	        		<h4><%-$.i18n.t('app.transferss.selectbeneficiary')%></h4>
		        		<form>
	            		<% _.each(otherbene,function(data,index){ %>
	        				<div class="radio-list">
	            				<div class="radio">
	                				<label>
		                        		<input type="radio" name="choice" class="markSelected" checkId="other_to_bene_<%- index%>" id="<%- index%>" value="<%- data.accountNumber%>" data="<%- data.beneInstId%>">
	                					<div class="radio-wrap">
	                    					<div class="row">
	                        					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
	                            					<img src="images/common/user_default.png" class="radiothumb">
	                            					<div class="radiobody">
	                                					<p><%- data.shortName %></p>
	                                					<p class="small text-muted acno"><%- data.accountNumber %></p>
	                                					<p class="small text-muted"><%- data.firstName %></p>
	                                					<p class="small text-muted"><%- data.bankName %></p>
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
        		<div class="col-xs-8 col-xs-offset-2" style="display:none">
        			<a href="javascript:void(0);" class="btn btn-primary btn-block" id="addBene"><%-$.i18n.t('app.transfer.managebeneficiary.addbene')%></a>
        		</div>
				<div class="col-xs-8 col-xs-offset-2">
        			<a href="javascript:void(0);" class="btn btn-primary btn-block" id="addBene"><%-$.i18n.t('app.transfer.managebeneficiary.addbene')%></a>
        		</div>
    		</section>	
		</div>
	</div>
</div>
