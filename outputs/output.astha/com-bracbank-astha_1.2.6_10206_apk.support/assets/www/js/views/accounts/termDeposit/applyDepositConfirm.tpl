<%
	var els = new EncryptedLocalStorage('secret');
	
	var depotype = els.get("selectProductType");
%>	
<div class="pagewrapper">
 
    <div class="bodywrapper">
    <div class="contentwrap">
    
     <% if(depotype == "FIXED_DEPOSIT") { %>
    <section class="content">
		
    <div class="dTable-wrap">
      <div class="dTable-middle">
        <div class="container">
            <div class="text-center ani-success animation-in">
        <span class="ico-badge center-block">
          <span class="menu_icon ico-3x thumb-up"></span>
        </span>
            </div>
      <div class="ani-slideup animation-in">
          
				<p class="text-center" ><span id="depositStatusMsg"></span><br><strong><%-$.i18n.t('app.product.termdeposits.refnumber')%> : <span id="refno"></span></strong>  
				<br><%-$.i18n.t('app.product.termdeposits.deptype')%>  : <span id="producttype"><strong></strong></span>
				</p>			
				<table class="table confirm_table">
					<tr>
					  <td><label><%-$.i18n.t('app.product.termdeposits.fdrdpdtype')%></label></td>
					  <td class="text-right" id="depositType">/td>
					</tr>
					<tr>
					  <td><label><%-$.i18n.t('app.product.termdeposits.deposaccno')%></label></td>
					  <td class="text-right" id="depositAcc"></td>
					</tr>
					<tr>
					  <td><label><%-$.i18n.t('app.product.termdeposits.originaccno')%></label></td>
					  <td class="text-right" id="sourceAcc"></td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.intrestratepa')%></label></td>
						<td class="text-right" id="intRate"></td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.tenure')%></label></td>
						<td class="text-right" id="depositTenor"></td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.openingdate')%></label></td>
						<td class="text-right" id="openingDate"></td>
					</tr>
					
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.installamt')%></label></td>
						<td class="text-right">                                        
							<span class="amt" style="display:inline"><span id="instAmt" style="display:inline"></span><span class="cur"> </span> <span class="des"></span></span>
						</td>
					</tr>
					
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.intamt')%></label></td>
						<td class="text-right">                                        
							<span class="amt" style="display:inline"><span id="intAmt" style="display:inline"></span><span class="cur"></span><span class="des"></span></span>
						</td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.matureamt')%></label></td>
						<td class="text-right">                                        
							<span class="amt" style="display:inline"><span id="maturityAmt" style="display:inline"></span><span class="cur"></span><span class="des"></span></span>
						</td>
					</tr>
				</table>
				<div class="clearfix"></div>
					<div class="row">
						<div class="col-xs-6 pr5">
							  <a href="javascript:void(0);" class="btn btn-primary cancel-btn btn-block" target="_blank" id="DepositDownload"><span class="fa fa-download"></span> <%-$.i18n.t('app.product.termdeposits.download')%> </a>  
						</div>
						<div class="col-xs-6 pl5">
								<a href="javascript:void(0);" onclick="screenshot()" class="btn btn-primary cancel-btn btn-block"><span class="fa fa-share-alt"></span> <%-$.i18n.t('app.product.termdeposits.share')%> </a>
						</div>
					</div>
					<div class="clearfix"></div>
				<br />
          </div>
          </div>
        </div>
      </div>
    </section>
    
    <% } else { %>
    <section class="content">
    <div class="dTable-wrap">
      <div class="dTable-middle">
        <div class="container">
            <div class="text-center ani-success animation-in">
        <span class="ico-badge center-block">
          <span class="menu_icon ico-3x thumb-up"></span>
        </span>
            </div>
      <div class="ani-slideup animation-in">
          		
          		<p class="text-center" ><span id="depositStatusMsg"></span><br><strong><%-$.i18n.t('app.product.termdeposits.refnumber')%> : <span id="refno"></span></strong>  
				<br><%-$.i18n.t('app.product.termdeposits.deptype')%>  : <span id="producttype"><strong></strong></span>
				</p>			
				<table class="table confirm_table">
					<tr>
					  <td><label><%-$.i18n.t('app.product.termdeposits.fdrdpdtype')%></label></td>
					  <td class="text-right" id="depositType">/td>
					</tr>
					<tr>
					  <td><label><%-$.i18n.t('app.product.termdeposits.deposaccno')%></label></td>
					  <td class="text-right" id="depositAcc"></td>
					</tr>
					<tr>
					  <td><label><%-$.i18n.t('app.product.termdeposits.originaccno')%></label></td>
					  <td class="text-right" id="sourceAcc"></td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.intrestratepa')%></label></td>
						<td class="text-right" id="intRate"></td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.tenure')%></label></td>
						<td class="text-right" id="depositTenor"></td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.openingdate')%></label></td>
						<td class="text-right" id="openingDate"></td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.totprinamt')%></label></td>
						<td class="text-right">                                        
							<span class="amt" style="display:inline"><span id="princAmt" style="display:inline"></span> <span class="des"></span></span>
						</td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.installamt')%></label></td>
						<td class="text-right">                                        
							<span class="amt" style="display:inline"><span id="instAmt" style="display:inline"></span><span class="cur"> </span> <span class="des"></span></span>
						</td>
					</tr>
					
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.intamt')%></label></td>
						<td class="text-right">                                        
							<span class="amt" style="display:inline"><span id="intAmt" style="display:inline"></span><span class="cur"></span><span class="des"></span></span>
						</td>
					</tr>
					<tr>
						<td><label><%-$.i18n.t('app.product.termdeposits.matureamt')%></label></td>
						<td class="text-right">                                        
							<span class="amt" style="display:inline"><span id="maturityAmt" style="display:inline"></span><span class="cur"></span><span class="des"></span></span>
						</td>
					</tr>
				</table>
				<div class="clearfix"></div>
					<div class="row">
						<div class="col-xs-6 pr5">
							  <a href="javascript:void(0);" class="btn btn-primary cancel-btn btn-block" target="_blank" id="DepositDownload"><span class="fa fa-download"></span> <%-$.i18n.t('app.product.termdeposits.download')%> </a>  
						</div>
						<div class="col-xs-6 pl5">
								<a href="javascript:void(0);" onclick="screenshot()" class="btn btn-primary cancel-btn btn-block"><span class="fa fa-share-alt"></span> <%-$.i18n.t('app.product.termdeposits.share')%> </a>
						</div>
					</div>
					<div class="clearfix"></div>
				<br />
          </div>
          </div>
        </div>
      </div>
    </section>
     <% } %>
    
    </div><!-- / contentwrap-->
  </div><!-- / bodywrapper-->	
    <div class="area">
      <ul class="circles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div><!-- / area-->
    
    <div class="footMenu footer_confirm">
		<!--<a href="javascript:void(0);"  class="mnutoggle" id="mnutoggle"><span class="menu_icon ico-xs menu"></span><%-$.i18n.t('app.wealth.menulabel')%></a> --> 
		<a href="#/transfer" id="transfers"><span class="menu_icon ico-xs transfer"></span><%-$.i18n.t('app.wealth.fntransfer')%></a>
		<a href="#/billpay" id="billpay"><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
		<a href="#/wealth" id="home"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.wealth.dashboard')%></a>
		<a href="#/servicerequest" id="services" class="active"><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.wealth.services')%></a>
		<a href="#/transhistory"id="transHistory" ><span class="menu_icon ico-xs transactions"></span><%-$.i18n.t('app.wealth.transactions')%></a>
	</div>	
  </div><!-- / pagewrapper-->