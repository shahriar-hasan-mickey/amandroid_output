<%
	var els = new EncryptedLocalStorage('secret'); 
	var creditCardDetailDTOList=els.get("creditCardDetailDTOList");
	var myaccountslist;
	try{
		myaccountslist = els.get("myaccountscreditlist"); 
	}catch(e){
		myaccountslist = "";
	}
	console.log("*myaccountscreditlist***",myaccountslist);
	
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="javascript:void(0);" id="goto_ccsummaryview" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
		</div>
  		<h4><%-$.i18n.t('app.ccstatement.laststatement')%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="cc_card">    
        		<div class="dashTab">
            		<div class="vc-card">
                		<ul class="list-unstyled">
                		
                    		<li>
                        		<a href="javascript:void(0);" id="goto_ccstmt">
                            		<div class="card card-default acc card-CC card-CC-gold visa-CC">
                                		<p class="m0"><%- myaccountslist.productName%>
                                    		<span class="logo-xs pull-right"></span>
                                		</p>
                                		<span class="menu_icon chip pull-left"></span>
                            			<div class="clearfix"></div>
                            			<h4 class="ac-num text-muted text-center">
                                			<%- myaccountslist.accountNumber%>
                            			</h4>
                            			<div class="amt">
                                			<p class="small m0 text-muted"><%-$.i18n.t('app.ccstatement.outstandingbalance')%></p>
                            				<span class="num"><%- myaccountslist.availableCreditLimit %>
                            				</span>
                                			<span class="small cur dCur text-muted"><%- myaccountslist.currencyCode %></span>
                            			</div>
                            			<div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                            		</div>
                        		</a>		
                    		</li>
                    	
                		</ul>
            		</div>
        		</div>
        		<div class="links">
            		<a href="javascript:void(0);" id="supplementarycard"><%-$.i18n.t('app.ccstatement.supplementarycards')%></a>
            		<a href="javascript:void(0);" id="financialsummary"><%-$.i18n.t('app.ccstatement.financialsummary')%></a>
        			<a href="javascript:void(0);" id="rewardpoints"><%-$.i18n.t('app.ccstatement.rewardpoints')%></a>
        		</div>
        		<div class="state-wrap">
            		<h3 class="dropdown tab-head">
            			<button class="billedStm" id="unbill" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    		<%-$.i18n.t('app.ccstatement.laststatement')%>
                    		<span class="caret"></span>
                		</button>
                		<ul class="dropdown-menu" id="name" id="search" aria-labelledby="unbill">
                    		<li>
                        		<a href="javascript:void(0);" name="unbilled" id="unbilled"><%-$.i18n.t('app.ccstatement.unbilledstatement')%></a>
                			</li>
                    		<li>
                        		<a href="javascript:void(0);" name="billed" id="billed"><%-$.i18n.t('app.ccstatement.billedstatement')%></a></a>
                    		</li>
                    		<li>
		                        <a href="javascript:void(0);" name="paysincelaststmt"  id="paysincelaststmt"><%-$.i18n.t('app.ccstatement.paymentsincelaststatement')%></a>
                    		</li>
                    		<li>
                        		<a href="javascript:void(0);" name="lastsixmonth" id="lastsixmonth"><%-$.i18n.t('app.ccstatement.laststatement')%></a>
                    		</li>
                		</ul>
            		</h3>
            		<% _.each(creditCardDetailDTOList,function(data){%>
            		<ul class="list-group state-list">
              			<li class="list-group-item pl5 pr5">
                			<span>Statement for <%-data.statementMonth%></span>
                			<a href=""><span class="fa fa-download pull-right"></span></a>
              			</li>
              			
              			<%})%>
              			
        		</div>
    		</section>
    		
    		<div class="modal fade modernPOP" id="expenseSum" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        		<div class="modal-dialog" role="document">
            		<form>
                		<div class="modal-content">
                    		<div class="modal-header">
                        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            		<span aria-hidden="true">&times;</span>
                        		</button>
                        		<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.ccstatement.financialsummary')%></h4>
                    		</div>
                    		<div class="modal-body clearfix">
                        		<div id="canvas-holder" style="position: relative; height:200px;width:200px; margin:0 auto;margin-top:35px;">
                            		<canvas id="chart-area"></canvas>
                        		</div>
                        		<div id="oneLegend" class="chart-legend-container"></div>
                    		</div>
                		</div>
            		</form>
        		</div>
    		</div>
		</div>
	</div>
</div>
