<%
	var els = new EncryptedLocalStorage('secret');
	var pageId = els.get("pageid"); 
%>

<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
  			<% if(pageId == "wealth"){ %>
	    		<a href="#/wealth" class="bacArr">
	      			<i class="fa fa-angle-left" aria-hidden="true"></i>
	    		</a>
	    	<% } else if(pageId == "creditcard") { %>
	    		<a href="#/creditcardsummary" class="bacArr">
	      			<i class="fa fa-angle-left" aria-hidden="true"></i>
	    		</a>
	    	<% } else if(pageId == "termdeposit") { %>
	    		<a href="#/termdepositsummary" class="bacArr">
	      			<i class="fa fa-angle-left" aria-hidden="true"></i>
	    		</a>
	    	<% } else if(pageId == "loans") { %>
	    		<a href="#/loansummary" class="bacArr">
	      			<i class="fa fa-angle-left" aria-hidden="true"></i>
	    		</a>
	    	<% } else if(pageId == "prepaidcard") { %>
	    		<a href="#/prepaidcardsummary" class="bacArr">
	      			<i class="fa fa-angle-left" aria-hidden="true"></i>
	    		</a>
	    	<% } %>
  		</div>
  		<h4><%-$.i18n.t('app.service.servicerequest')%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="service_request">                    
          		<form method="post" action="#" id="idForm">
            		<div class="radiobox">
              			<div class="radio">
                			<label>
                  				<input type="radio" name="reqType" value="modeOfOperation" checked>
                  				<div class="box">
                    				<span class="menu_icon modeofop"></span>
                    				<span class="small"><%-$.i18n.t('app.service.modeofoperation')%></span>
                  				</div>
                			</label>
          				</div>
              			<div class="radio">
            				<label>
                  				<input type="radio" name="reqType" value="reqToken" >
              					<div class="box">
                    				<span class="menu_icon reqToken"></span>
                    				<span class="small"><%-$.i18n.t('app.service.requesttoken')%></span>
                  				</div>
            				</label>
          				</div>
              			<!--<div class="radio">
                			<label>
                  				<input type="radio" name="reqType" value="tokenReplacement" >
                  				<div class="box">
                    				<span class="menu_icon tokenRep"></span>
                    				<span class="small"><%-$.i18n.t('app.service.tokenreplacement')%></span>
                  				</div>
                			</label>
              			</div>-->		
              			<div class="radio">
                			<label>
                  				<input type="radio" name="reqType" value="cardManagement" >
                  				<div class="box">
                    				<span class="menu_icon CardManage"></span>
                    				<span class="small"><%-$.i18n.t('app.service.cardmanagement')%></span>
                  				</div>
            				</label>
              			</div>	
              			
              			
              			        <!--<div class="radio">
                                  <label>
                                    <input type="radio" name="reqType" value="InternationalTravelDateSetup">
                                    <div class="box">
                                    <span class="menu_icon itd"></span>
                                    <span class="small">International Travel Date Setup</span>
                                  </div>
                                </label>
                               </div>--><!-- / radio-->	
                               
                               <!--<div class="radio">
                                   <label>
                                     <input type="radio" name="reqType" value="StatementRequest">
                                     <div class="box">
                                     <span class="menu_icon stat_req"></span>
                                     <span class="small">Statement Request</span>
                                      </div>
                                    </label>
                                 </div>--><!-- / radio-->
              						
		      		</div>
		    		<div class="clearfix"></div><br>
          			<input type="button" id="nxt_btn" class="btn btn-primary btn-block" value="Next">
    			</form>
     		</section>	
		</div>
	</div>
</div>
