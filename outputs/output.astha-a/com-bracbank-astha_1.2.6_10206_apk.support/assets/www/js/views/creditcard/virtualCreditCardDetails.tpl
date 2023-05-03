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
						<div class="dropselect"  data-title="<%-$.i18n.t('app.creditcard.ccdetails.select')%>" data-setid="acid" >
								                  <% _.each(mycreditcards,function(data){ %>
										             <label class="list-group-item">
											              <%if(data.accountNumber== cccardacctno) {%>
					                           					<input type="radio" checked="checked" name="fromactno" id="fromactno" value="<%-data.accountNumber%>~<%-data.creditCardNoMasked%>~<%-data.shortName%> "/>
					                           				<%}else{%>
					                           					<input type="radio" name="fromactno"  id="fromactno" value="<%-data.accountNumber%>~<%-data.creditCardNoMasked%>~<%-data.shortName%> "/>
					                           				<%}%>
					  							 			<p>
					  							 				<span class="nme"><%-data.shortName%></span>
					  							 				<!--<small class="cur pull-right"><%-data.currencyCode%></small>-->
					  							 			</p>
															<p>
																<small class="text-muted"><%- data.creditCardNoMasked %></small>
																<!--<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>-->
															</p>
					                       			</label>
										                     
								                   <% }); %>
						  </div> 
				    <!--Credit Card Summary Ends-->

                 

                   <!--Credit card Details Starts-->
	 				<div class="panel panel-default cust_panel hilit_panel">
							<div class="panel-heading" data-toggle="collapse" data-target="#beneficiary">
								<p class="panel-title small"><span class="glyphicon glyphicon-chevron-down">
								</span>&nbsp;<%-$.i18n.t('app.product.creditcard.ccdetails')%></p>
							</div>
							<div id="beneficiary" class="collapsePanel panel-collapse collapse in">
							<% if( !(typeof(ccmask)== "undefined" || ccmask=="")){ %>
								<div class="panel-body detailsStmt">
									<ul class="list-group">
									
									 <li class="list-group-item">
					         		
                                        <div class="edit">
                                        	<div class="row">
                                        	<div class="col-xs-6">
                                            <small><%-$.i18n.t('app.creditcard.general.nickname')%></small>
											<input id="checknicknametype" name="checknicknametype" type="hidden" value="<%- shortnamesummary%>" />
											</div>
											
                                            <%if(typeof(shortnamesummary)!="undefined" && shortnamesummary!="" && shortnamesummary!="null" ){%>
                                            
	                                            <div class="col-xs-6 text-right">
	                                            		<span class="userName"><span id="updname"><%-shortnamesum%></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>
	                                            
											 <%}else{%>
											 	<div class="col-xs-6 text-right">
											 			<span class="userName"><span id="updname"><%-shortnamesum%></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>	
											 <%}%>
											 </div>
											 </form>
                                        </div>
                                        
                                        <div class="update row">
                                            <div class="col-xs-7">
                                            <% if ( devicePlatform == "Android" ) { %>
                                            	<span class="nickName"><input type="text" autocomplete='off' maxlength="15" id="nicknameid" name="nicknameid" onkeydown="call(event)" class="form-control lenthcontrol input-sm" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            <%}else{%>
                                            <span class="nickName"><input type="text" autocomplete='off' maxlength="15" id="nicknameid" name="nicknameid" onkeydown="call(event)" class="form-control input-sm lenthcontrol" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
											<%}%>
                                            </div>
                                            <div class="col-xs-5">
	                                            <div class="btn-group btn-group-sm">
		                                           	<a  class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a>
	                                            	<a  class="btn btn-primary cancelNick" id="clearname"><span class="glyphicon glyphicon-remove"></span></a>
	                                            </div>
                                            </div>
                                        </div>
                                        
                                        <div id="nickerror" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.activatecc.nicknamenotnull')%></font></span></div>
                                        
                                     </li>
                                       
                                        <li class="list-group-item"><small><%-$.i18n.t('app.creditcard.general.creditcardnumber')%></small>
											<% if (typeof(creditCardNoMasked) != "undefined") { %>
												<span class="pull-right"><%-ccmask%></span>
												<input type="hidden" id="accountno" name="accountno" value="<%-acctno%>"> 
											<%}%>	
										</li>
										<li class="list-group-item"><small><%-$.i18n.t('app.creditcard.general.creditcardtype')%></small>
											<span class="pull-right"><%-cardType%></span>
										</li>
										<li class="list-group-item"><small><%-$.i18n.t('app.creditcard.cardusagecontrol.usagecontrol')%></small>
											<spanclass="pull-right">&nbsp;&nbsp;&nbsp;<input class="btn btn-success btn-sm" type="button" name="updatebtn" id="updatebtn" value="<%-$.i18n.t('app.requests.debitcardpos.updatebtn')%>">
										<!--<a href="#/debitcardlimitcontrolrequest" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.debitcardpos.updatebtn')%></a>-->
										
										</span>
										</li>
										<li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.creditlimiit')%></small>
											<input class="btn btn-success btn-sm" type="button" name="increaselimit" id="increaselimit" value="<%-$.i18n.t('app.creditcard.cclimit.increaselimit1')%>">
											<span class="pull-right amt"><%-currencyCode%>&nbsp;<%- checkAmount($.formatNumber(totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
										</li>
										<li class="list-group-item"><small><%-$.i18n.t('app.creditcard.general.avaliblecreditlimit')%></small>
											<span class="pull-right amt"><%-currencyCode%>&nbsp;<%- checkAmount($.formatNumber(availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
										</li>
										<li class="list-group-item hilit"><small><%-$.i18n.t('app.creditcard.general.outstandingauthorization1')%></small>
											<span class="pull-right"><%-currencyCode%>&nbsp;<%- checkAmount($.formatNumber(outStandingAuthorization, {format:"#,###.000", locale:"us"}))%></span>
										</li>
										<li class="list-group-item hilit"><small><%-$.i18n.t('app.product.creditcard.unbilledamt')%></small>
											<span class="pull-right"><%-currencyCode%>&nbsp;<%- checkAmount($.formatNumber(unbilledAmount, {format:"#,###.000", locale:"us"}))%></span>
										</li>
										 <li class="list-group-item hilit"><small><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></small>
										 <%if(accountHolder=='Y'){%>
											<input class="btn btn-success btn-sm" type="button" name="paynow" id="paynow" value="<%-$.i18n.t('app.creditcard.virtualcc.addfund')%>">
											<%}%>
											<span class="pull-right amt"><%-currencyCode%>&nbsp;
											<%- checkAmount($.formatNumber(totalAmountDue, {format:"#,###.000", locale:"us"}))%>
											</span> 
											<div class=" clearfix"></div>
                						</li>
                                        <li class="list-group-item hilit"><small><%-$.i18n.t('app.creditcard.general.currentoutstand')%></small>
											<span class="pull-right amt"><%-currencyCode%>&nbsp;
											<%- checkAmount($.formatNumber(outStandingAmount, {format:"#,###.000", locale:"us"}))%>
											</span> 
											<div class=" clearfix"></div>
                						</li>
                                        <li class="list-group-item hilit"><small><%-$.i18n.t('app.creditcard.general.minpaydue')%></small>
											<span class="pull-right amt"><%-currencyCode%>&nbsp;<%- checkAmount($.formatNumber(minimumAmountDue, {format:"#,###.000", locale:"us"}))%></span>
										</li> 
                                        <li class="list-group-item hilit"><small><%-$.i18n.t('app.creditcard.general.payduedate')%></small>
											<span class="pull-right"><span class="date"><%-paymentDueDate%></span></span>
										</li> 
										<li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.cashlmt')%></small>
											<span class="pull-right"><%-currencyCode%>&nbsp;<%- checkAmount($.formatNumber(totalCashLimit, {format:"#,###.000", locale:"us"}))%></span>
										</li>
										<li class="list-group-item hilit"><small><%-$.i18n.t('app.product.creditcard.availablecashlimit')%></small>
											<span class="pull-right amt"><%-currencyCode%>&nbsp;<%- checkAmount($.formatNumber(availableCashLimit, {format:"#,###.000", locale:"us"}))%></span> 
										</li>
										<!--<li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.currency')%></small>
											<span class="pull-right"><%-currencyCode%></span>
										</li>-->
									</ul>
								</div>
							 <%}else{%>
									<div>
                       					<span class="msg"><%-$.i18n.t('app.product.investment.nodata')%></span>
                       				</div>
				             <%}%>
							</div>
						</div>
	 <!--Credit card Details ends-->
						<a href="#/creditcard"  class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccdetails.back')%></a>
						
						<a href="#/virtualcarddetails" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.virtualcc.viewvirtualcard')%></a>
						<br/>
						<!--Content Ends Here-->

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
    	$(".dropselect").dropselect();
        $(".update").hide();
    	$(".editNick").on("click",function()
		{
        	$(".edit").hide();
        	$(".update").show();
        	var nickname =$(".userName span").text();
        	if(nickname!=''){
	    		$('#nicknameid').val(nickname);
		    }
    	});
		$(".updateNick").on("click",function()
     	{
        	var username =$(".nickName input").val();
        	if(username!=""){
		        $('.userName').text(username);
		        $(".update").hide();
		        $('.edit').show();
		        $('#nickerror').hide();
	    	}
     	});
     	$('.cancelNick').on("click",function()
     	{
	        $(".edit").show();
	        $(".update").hide();
	        var nickname =$(".userName span").text();
	        $('#nickerror').hide();
	        if(nickname!=''){
		    	$('#nicknameid').val(nickname);
		    }else{
		    	$('#nicknameid').val('');
		    }
     	});
	});
</script>
           
<script>
function call(e) {
        if (document.getElementById('nicknameid').value.length == 0) {
            if (e.keyCode == 32) {
                e.preventDefault();
            }
        }
}
</script> 
<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
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