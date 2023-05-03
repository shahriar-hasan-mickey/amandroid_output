<%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("setccdetailsaccno");
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var acctno=els.get("acctno");
var ccmask=els.get("ccMask");
var shortName=els.get("ccDetailShortName");
var shortnamesum = els.get("shortnamesum");
var shortnamesummary=els.get("shortNamesummary");
var accountHolder=els.get("isAccountHolder");
var availableCreditLimit = els.get("availableCreditLimit");
var currencyCode = els.get("currencyCode");
%>
						<!--Content Starts Here-->
						<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn">
						<span class="glyphicon glyphicon-chevron-left"></span> </a>
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccdetails.creditcards')%></a></li>
							<li class="active"><%-$.i18n.t('app.creditcard.ccdetails.details')%></li>
						</ol>

						<div class="clearfix"></div><br/>
                       <!--Breadcrumb Ends Here-->


			 <!--Credit Card Summary Starts-->
			  <% if ( mycreditcards.length > 0 ) { %>
                           <div class="swiper-outer">
                            <div class="swiper-container vcc-card">
                              <div class="swiper-wrapper">
                              <% 
                              _.each(mycreditcards,function(data,index){
                               var expiryDate = mycreditcards[index].expiryDate
				 				var yrval = expiryDate.substring(0,2);
				        		var monval = expiryDate.substring(5,7);
				        		var dateval = expiryDate.substring(8,10);
				        		var exdateval=monval+"/"+yrval;
                              %>
                                 <div class="swiper-slide" >
                                    <a href="#/virtualCardOtp/<%-index%>">
                                      <img src="images/brand/card_bg.png" />

                                      <span class="card_num" id="ccnum"><%- data.creditCardNoMasked %></span>
                                      <span class="valid-upto"><small><%-$.i18n.t('app.creditcard.virtualcc.valid')%><br><%-$.i18n.t('app.creditcard.virtualcc.thiru')%></small> XX/XX</span>
                                      <p class="card_last_num"><%- (data.creditCardNoMasked).substr(-4) %></p>
                                      <span class="cardholder" id="ccname"><%-data.shortName%></span>
                                    </a>  
                                  </div>
                                  <input type="hidden" id="accnum1" name="accnum1" value="<%- index %>">
                               <%
                                }); 
                                %>                                  
                               </div>
                              <!-- Add Pagination -->
                              <div class="swiper-pagination"></div>
                            </div>
                            </div>
                            <div class="row avail-balance"><div class=" col-xs-6"><%-$.i18n.t('app.creditcard.virtualcc.avbllimit')%></div> <div class="col-xs-6"><div class="amt" ><span class="cur"><%- currencyCode %></span> <span class="num"><%- availableCreditLimit %></span></div></div> </div>
                            <div class="swipe-hand">
                                <%-$.i18n.t('app.creditcard.virtualcc.swipevcc')%>
                            </div>
                        <a id="addfund" name="addfund"  class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.virtualcc.addfundcard')%></a>
						<a href="#/virtualCreditCardDetails"  class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.virtualcc.viewcarddet')%></a>
                        <a id="virtualunamsked" name="virtualunamsked"  class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.virtualcc.viewvirtualcard')%></a>
						<br/>
						<%}else if ( mycreditcards==null||mycreditcards==''||mycreditcards==undefined){%>
							<div class="alert alert-info">
								<span class="msg"><%-$.i18n.t('app.product.creditcard.nodata')%></span>
							</div>
									<a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a>
						<%}else{%>
							<div class="alert alert-info">
								<span class="msg"><%-errorDescription%></div>
							</div>
											
						<%}%>
	<script>
            $(document).ready(function()
            {
				/*var swiper = new Swiper('.swiper-container', {
                pagination: {
                  el: '.swiper-pagination',
                 clickable: true,
                },
                spaceBetween:0,
                speed : 1000,
                slidesPerView: 'auto',
                centeredSlides: true
              });*/
            
            });
            </script>
            <script>
              

              /*pagination: '.pagination',
            grabCursor: true,
            paginationClickable: true,
            centeredSlides: true,
            slidesPerView: 3,
            moveStartThreshold: true,
            roundLengths: true,
            loop:false,
            loopAdditionalSlides: 0,
            speed : 1000,
            simulateTouch : false,
            autoResize : true,
                */
            </script>
           
