<%
	var els = new EncryptedLocalStorage('secret');
	var selectid = els.get("selectedBillerListId");
	var selectedBillerListCode = els.get("selectedBillerListCode");
%>
<div class="pagewrapper" id="appwrapper" >
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="trans_ani">
   				<div class="container">
        			<div class="dTable-wrap">
            			<div class="dTable-middle">
                			<div class="text-center transLogo">
                    			<img src="images/brand/logo.svg" width="50%"/>
                			</div>
                			<div class="moneyani"></div>
                			<div class="trans-ppl">
                    			<div class="row">
									<div class="col-xs-4 col-sm-4 text-center">
									<img src="images/common/user_default1.png"/>
									<p class="text-center"><%- els.get("toBillerFromAccName")%></p>
									</div>
									<div class="col-xs-4 col-sm-4 text-center"><br/></div>
									<div class="col-xs-4 col-sm-4 text-center">
									<img src="images/brand/biller/<%-selectedBillerListCode%>.png"/>
									<p class="text-center"><%- els.get("selectedBillerListName")%></p>
									</div>
								</div>
                			</div>
                			<br/>
                			<br/>
                			<br/>			
                			<p class="text-center"><%- $.i18n.t('validation.statementfilter.pressagain') %></p>
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
