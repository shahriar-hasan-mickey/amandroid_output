<!--Content Starts Here-->
<%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("cccardacctno");
var errorDescription=els.get("errordesc");
var selectedAcct= els.get("selectedAcct");
%>
		

						<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn">
						<span class="glyphicon glyphicon-chevron-left"></span> </a>
						
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.outstandauth.creditcards')%></a></li>
							<li class="active"><%-$.i18n.t('app.creditcard.outstandauth.outstandauth')%></li>
						</ol>

						<div class="clearfix"></div><br/>

						<!--Breadcrumb Ends Here-->

<% if ( mycreditcards.length > 0 ) { %>                      
<!--Credit Card Summary Starts-->
						<div class="dropselect"  data-title="<%-$.i18n.t('app.creditcard.outstandauth.select')%>" data-setid="acid" >
								                  <% _.each(mycreditcards,function(data){ %>
										             <label class="list-group-item">
											              <%
											              if(data.accountNumber== selectedAcct) {%>
					                           					<input type="radio" checked="checked" name="fromactno" id="fromactno" value="<%-data.accountNumber%>"/>
					                           				<%}else{%>
					                           					<input type="radio" name="fromactno"  id="fromactno" value="<%-data.accountNumber%>"/>
					                           				<%}%>
					  							 			<p>
					  							 				<span class="nme"><%-data.shortName%></span>
					  							 				<small class="cur pull-right"><%-data.currencyCode%></small>
					  							 			</p>
															<p>
																<small class="text-muted"><%- data.creditCardNoMasked %></small>
																<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%>
																</span>
															</p>
					                       			</label>
										                     
								                   <% }); %>
					 </div> 
 <!--Credit Card Summary Ends-->




<!-- UnBilled Transaction Starts- -->
                        
                             <div class="accStmt" id="minstmtshow">
                                <br/>
    							<ul>
    							<%if ( rcGroupList.length > 0 ) { %>
	    							<% _.each(rcGroupList,function(data){ %>
	    							<% if ( (data.authamt).substring(0,1)=='-' ) { %>
	    							       <li class="cr">
	        									<a>
	        										<div class="d_msg">
	        											<p class="date"><%-data.effdate%></p>
	        											<p><%-data.merchantlocationname%></p>
	        										</div>
        											<div class="amt">
        											<% if ( data.finalactn=='A' ) { %>
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.approved')%></span>
        											<%}else if(data.finalactn=='D'){%>  
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.declined')%></span>
        											<%}else if(data.finalactn=='R'){%>  
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.reversal')%></span>
        											<%}else if(data.finalactn=='P'){%>  
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.purged')%></span> 
        											<%}%> 
        												<span class="cur"><%-currencycode%></span>
        												<span class="type">Cr</span>
        													<%- checkAmount($.formatNumber(data.authamt.substring(1), {format:"#,###.000", locale:"us"}))%>
        											</div>
	        									</a>
	    								   </li>
	    								    <%}else{%>  
	    								    <li class="dr">
	        									<a>
	        										<div class="d_msg">
	        											<p class="date"><%-data.effdate%></p>
	        											<p><%-data.merchantlocationname%></p>
	        										</div>
        											<div class="amt">
        												<% if ( data.finalactn=='A' ) { %>
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.approved')%></span>
        											<%}else if(data.finalactn=='D'){%>  
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.declined')%></span>
        											<%}else if(data.finalactn=='R'){%>  
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.reversal')%></span>
        											<%}else if(data.finalactn=='P'){%>  
        											<span class="cur"><%-$.i18n.t('app.creditcard.outstandauth.purged')%></span> 
        											<%}%> 
        												<span class="cur"><%-currencycode%></span>
        												<span class="type">Dr</span>
        													<%- checkAmount($.formatNumber(data.authamt, {format:"#,###.000", locale:"us"}))%>
        											</div>
	        									</a>
	    								   </li> 
	    								    <%}%> 
	    							<% }); %>
	    							<%}else if ( rcGroupList.length == 0 ){%>
											<div class="alert alert-info">
	                                			<h4 style="text-align:center"><%-$.i18n.t('exception.common.norecordsfound')%></h4>
       										</div>
									<%}else{%>
									     <div class="alert alert-info">
									     	<h4 style="text-align:center"><%-errorDescription%></h4>
										</div>
									<%}%>
                                </ul>
                              </div>

                          <!-- UnBilled Transaction Ends- -->

                           <br/>
                          <!--<div class="form-group pull-right">
	      					  <label><%-$.i18n.t('app.product.creditcard.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
						      <div class="btn-group"> 
							        <button type="button" id="pdfdownload" name="pdfdownload"  class="btn btn-default"><%-$.i18n.t('app.product.creditcard.pdf')%></button>
							        <button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.creditcard.xls')%></button>
						      </div>
     				     </div>-->
                          <br/><br/><br/>
							
						<a href="#/creditcard"  class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.unbilled.back')%></a>
						<br/>
					
					<!--Content Ends Here-->
 					<%}else if ( mycreditcards==null||mycreditcards==''||mycreditcards==undefined){%>
							<div class="alert alert-info">
								<span class="msg"><%-$.i18n.t('app.product.creditcard.nodata')%></span>
							</div>
								<a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a>
								
					  	<%}else{%>
						 	<div class="alert alert-info">
                   				<span class="msg"><%-errorDescription%></span>
                   			</div>
				   		 <%}%>				
					  <script>
            $(document).ready(function()
            {
              $(".dropselect").dropselect();
             $(".update").hide();

             $(".editNick").on("click",function()
             {
                $(".edit").hide();
                $(".update").show();
             });
             
            });
            $(".content").animate({ scrollTop: 0 }, "fast");
            </script>
            <script type="text/javascript">
    function openUrl(url) {
     // alert("open url: " + url);
      window.open(url, '_blank', 'location=yes');
    }

    function onDeviceReady() {
     // alert('device ready!');
    }
    $(function() {
        document.addEventListener("deviceready", onDeviceReady, true);
       // $.mobile.silentScroll(0);
    });
</script>