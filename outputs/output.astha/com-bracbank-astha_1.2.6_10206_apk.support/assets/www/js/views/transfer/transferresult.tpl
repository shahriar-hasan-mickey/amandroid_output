<%
	var els = new EncryptedLocalStorage('secret'); 
	var casaDTO = getAccountDTO();
	var creditCardAccountListDTO = els.get("creditCardAccountList");
	var froAcntInd = els.get("fromAccountIndex");
	var fromAccountDTO = casaDTO[froAcntInd];
	console.log("fromAccountDTO",fromAccountDTO);
	var toAcntInd = els.get("toAcntInd");
	var selectedAccountDTO = creditCardAccountListDTO[toAcntInd];
	
%>
<div class="pagewrapper" id="appwrapper" >
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
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
                        <div class="col-xs-4 col-sm-4 text-center">
                            <img src="images/common/user_default1.png" />
                          <br/>
                            <% if(els.get("ccPayFromAcc") == "bKash") { %>
                            	 <p class="text-center"><%- els.get("profileName")%></p>
                            <% } else {%>
                        		 <p class="text-center"><%- els.get("fromAccName")%></p>
                            <% } %>
                        </div>
                        <div class="col-xs-4 col-sm-4 text-center">
                            <img src="images/brand/logo.png" class="trans_logo"/>
                        </div>
                        <div class="col-xs-4 col-sm-4 text-center">
                            <img src="images/common/user_default1.png" />
				<br/>
                             <p class="text-center"><%- selectedAccountDTO.productName%></p>
                        </div>
                    </div>
                </div>
                <!-- / trans-ppl-->

                <br/>
                <br/>
                <br/>
             	<p class="text-center"><%-$.i18n.t('app.accdetailstatement.pressagain')%></p>
                <br/>
                <br/>
                <br/>
            </div>
        </div>
        <!-- / trans-arrow-middle-->
    </div>
    <!-- / container-->
</section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
            <!--bodywrap Ends here -->
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
        </div>
