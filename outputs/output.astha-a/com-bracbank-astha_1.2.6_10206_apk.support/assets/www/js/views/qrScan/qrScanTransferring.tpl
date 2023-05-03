<%
	var els = new EncryptedLocalStorage('secret');
	var selectid = els.get("selectedBillerListId");
%>
<div class="pagewrapper" id="appwrapper" >
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="trans_ani">
				<div class="container">
					<div class="dTable-wrap">
						<div class="dTable-middle">
							<div class="text-center transLogo">
								<img src="images/brand/logo.svg" width="50%">
							</div>
							<div class="moneyani"></div>
							<div class="trans-ppl">
								<div class="row">
									<div class="col-xs-4 col-sm-4">
										<img src="images/common/user_default1.png" />
										<br/>
										<br/>
										<p class="text-center"><%- els.get("profileName")%></p>
									</div>
									<div class="col-xs-4 col-sm-4 text-center">
										<br>
										<h4 class="bg-primary">QR Code</h4>
									</div>
									<div class="col-xs-4 col-sm-4 text-right">
										<% if(els.get("scannedQRType") == "bKash") { %>
											<img src="images/brand/biller/bKash_bangla_logo.png" />
										<% } else { %>
											<span class="Merchantanimate"></span>
										<% } %>
										<br/>
										<p class="text-center" style="word-wrap: break-word;"><%- els.get("merName")%></p>
									</div>
								</div>
							</div>
							<br/>
							<br/>
							<br/>
							<p class="text-center">Don't Press Back Button!</p>
							<br/>
							<br/>
							<br/>
						</div>
					</div>
				</div>
			</section>	
		</div>
	</div>
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
    </div>	
</div>			
