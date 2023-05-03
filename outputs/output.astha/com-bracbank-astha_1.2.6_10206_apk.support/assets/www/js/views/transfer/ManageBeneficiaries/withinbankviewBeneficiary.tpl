<%
	var els = new EncryptedLocalStorage('secret');
	var beneficiaryDTO = els.get("beneficiaryDTO");
%>

<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="#/managebene" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.transfer.managebeneficiary.bracbankbenetitle2')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						    <section class="content">
						    <% if(beneficiaryDTO.length > 0) { %>
        <h4><%-$.i18n.t('app.transfer.managebeneficiary.selectbeneficiary')%></h4>
        <form method="post" action="#">
          <% _.each(beneficiaryDTO,function(data,index){ %>
            <div class="radio-list">
                <div class="radio">
                    <label>
                        <input type="radio" name="beneId" value="<%-index%>" id="selectbene_btn" shortName="<%- data.shortName%>" accNUm="<%-data.accountNumber%>">
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
                                    <p class="text-muted"> BDT </p>
                                </div>
                            </div>
                        </div>
                        <!-- /radio wrap-->
                    </label>
                </div>
                
            </div>
            <%})%>
            <!-- / radio-list-->
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
        		<a id="add_bene" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.addbene')%></a>
    		
    </section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->