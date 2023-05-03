<%
var els = new EncryptedLocalStorage('secret');
var mycreditcard = els.get("tocreditcard");
var ccDetailShortName = els.get("ccDetailShortName");
var availableCreditLimit = els.get("availableCreditLimit");
var currencyCode = els.get("currencyCode");
var mycreditcard = els.get("tocreditcard");
var creditCardNoMasked = els.get("creditCardNoMasked");
var indx = '0';//els.get("indx");
var cclastnum = mycreditcard[indx].creditCardNoMasked.substr(-4);
console.log("cclastnum",cclastnum);
var ccDetailShortName = els.get("ccDetailShortName");
var expiryDate = mycreditcard[indx].expiryDate
 				var yrval = expiryDate.substring(0,2);
        		var monval = expiryDate.substring(5,7);
        		var dateval = expiryDate.substring(8,10);
        		var exdateval=monval+"/"+yrval;
%>
						<!--Content Starts Here-->
						<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn">
						<span class="glyphicon glyphicon-chevron-left"></span> </a>
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccdetails.creditcards')%></a></li>
							<li class="active"><%-$.i18n.t('app.creditcard.ccdetails.details')%></li>
						</ol>
						
						<div class="clearfix"></div>
                          <!--Breadcrumb Ends Here-->
                          <div id="card-fluid" class="card">
                              <div class="front" style="background:url(images/brand/card_bg.png) center 0/100% no-repeat">
                                <span class="cardflip_num"><%-mycreditcard[indx].creditCardNoMasked%></span>
                                <span class="validflip-upto"><small><%-$.i18n.t('app.creditcard.virtualcc.valid')%><br><%-$.i18n.t('app.creditcard.virtualcc.thiru')%></small> XX/XX</span>
                                <p class="cardflip_last_num"><%-cclastnum%></p>
                                <span class="cardflipholder"><%-mycreditcard[indx].shortName%></span>
                              </div>
                              <div class="back" style="background:url(images/brand/card_bg_back.png) center 0/100% no-repeat">
                                <p class="cvvflip-block"><span class="cvvflip-label">CVV</span><span class="cvv-num">XXX</span></p>
                              </div>
                           </div>
                               <div class="row avail-balance"><div class=" col-xs-6"><%-$.i18n.t('app.creditcard.virtualcc.avbllimit')%></div> <div class="col-xs-6"><div class="amt" ><span class="cur"><%-currencyCode%></span> <span class="num"><%-availableCreditLimit%></span></div></div> </div>
                               <br/>
                            <div class="flip-hand"><%-$.i18n.t('app.creditcard.virtualcc.tapcvv')%></div>
                        <!--<a id="addfund" name="addfund"  class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.virtualcc.addfundcard')%></a>-->
						<a href="#/virtualCreditCardDetails"  class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.virtualcc.viewcarddet')%></a>
                        <a href="#/virtualcarddetails"  class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.virtualcc.viewanothercard')%></a>
						<br/><br/>

				
			

		
         <script>
            
            /* Swiper */
             $(document).ready(function()
            {
            $(".card").flip();
            /* var myswiper = new Swiper('.swiper-container',{
               slideToClickedSlide: true,
                effect:'flip',
                loop:true,
                grabCursor: true
              });
             myswiper.on('click',function(swiper,event){ myswiper.slideNext(); });*/
             }); 

            </script>