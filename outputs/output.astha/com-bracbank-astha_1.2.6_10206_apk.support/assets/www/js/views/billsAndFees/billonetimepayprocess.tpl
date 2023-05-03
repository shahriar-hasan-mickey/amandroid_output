<%
	var els = new EncryptedLocalStorage('secret');
	var selectid=els.get("selectedBillerListId");
	var selectedBillerListCode = els.get("selectedBillerListCode");
%>
<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
					<section class="content" id="trans_ani">
	<div class="container">
		<div class="dTable-wrap">
			<div class="dTable-middle">
		<div class="text-center transLogo"><img src="images/brand/logo.svg" width="50%"></div>
				<div class="moneyani"></div>
				<div class="trans-ppl">
				<div class="row">
					<div class="col-xs-4 col-sm-4">
						<img src="images/common/user_default1.png"/>
						<br/>
						<p class="text-center"><%- els.get("oneTimePay_FromAccName")%></p>
					</div>
					<div class="col-xs-4 col-sm-4 text-center"><br/></div>
					<div class="col-xs-4 col-sm-4 text-right">
						<img src="images/brand/biller/<%-selectedBillerListCode%>.png"/>
						<br/>
						<p class="text-center"><%- els.get("selectedBillerListName")%></div></p>
					</div>
				</div><!-- / trans-ppl-->
				<br/>
                <br/>
                <br/>
                <p class="text-center">Don't Press Back Button!</p>
                <br/>
                <br/>
                <br/>
		</div>
		</div><!-- / trans-arrow-middle-->
	</div><!-- / container-->					
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
        </div><!-- / pagewrapper-->	
		<!--Appwrapper Ends Here-->
