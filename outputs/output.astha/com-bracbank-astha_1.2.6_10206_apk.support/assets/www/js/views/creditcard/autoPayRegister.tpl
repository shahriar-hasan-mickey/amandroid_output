<%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("setccdetailsaccno");
var cccardacct=els.get("cccardacctno");
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");

%>
 
 <!--Content Starts Here-->
 <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <ol class="breadcrumb cust_breadcrumb pull-left">
   <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cashondemandcc.creditcards')%></a></li>
   <li class="active"><%-$.i18n.t('app.creditcard.general.autopayregister')%></li>
 </ol>
  <div class="clearfix"></div>
  
              <div class="newWiz">
                      <div class="steps done"><div>1<p><%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
                      <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.creditcard.ccpayments.verify')%></p></div></div>
                      <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p></div></div>
 			  </div>
 			  
 <form name="autopayreg" id="autopayreg">
 
 <% if ( ownaccounts.length > 0 ) {  %>
 	<div class="dropselect" data-title=" <%-$.i18n.t('app.creditcard.ccpayments.fromaccount')%>" data-setid="fromAccountId">
      			<%
				   _.each(ownaccounts,function(data,index){
					if(data.currencyCode != "KWD"){
						ownaccounts.splice(index, 1);
					}	
					});	
				%>
					<% _.each(ownaccounts,function(data){ 
					if(data.currencyCode == "KWD" ){
					%>
				                 <label class="list-group-item">
				                 <% if(ownaccounts.length == 1) { %>
				                 	<input type="radio" value="<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.currencyCode%>~<%-data.availableBalance%>~<%-data.accountShortName%>" name="frmacc" id="frmacc" checked />
				                 <% } else {%>
				                     <input type="radio" value="<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.currencyCode%>~<%-data.availableBalance%>~<%-data.accountShortName%>" name="frmacc" id="frmacc"  />
				                 <% } %>
										 <p>
											<%if(typeof(data.accountShortName)!="undefined"){%>
												<span class="nme"><%-data.accountShortName%></span>
												<input type="hidden" id="hidshrtname" name="hidshrtname" value="<%-data.accountShortName%>"/>
											<%}else{%>
												<span class="nme"></span>
												<input type="hidden" id="hidshrtname" name="hidshrtname" value="<%-data.accountShortName%>"/>
											<%}%>
											<%if(typeof(data.currencyCode)!="undefined"){%>
												<small class="cur pull-right"><%-data.currencyCode%></small>
											<%}else{%>
												<span class="nme"></span>
											<%}%>
										</p>
										<p>
											<%if(typeof(data.accountNumber)!="undefined"){%>
												<small class="text-muted"><%-data.accountNumberMasked%></small>
											<%}else{%>
												<span class="nme"></span>
											<%}%>
											<%if(typeof(data.availableBalance)!="undefined"){%>
												<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
											<%}%>
										</p>
								</label>
					<%
						}
						});
					%>
					</div>  <% } %>
     <div id="errorFromAct" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
     </div>
     
     
     <!--To Credit Card Starts-->
			   <% if ( mycreditcards.length > 0 ) { %>
						<div class="dropselect"  data-title="<%-$.i18n.t('app.creditcard.ccpayments.tocc')%>" data-setid="acid" >
								                  <% _.each(mycreditcards,function(data){ %>
										             <label class="list-group-item">
											              <%if(data.accountNumber== cccardacctno) {%>
					                           					<input type="radio" name="toacc" id="toacc" value="<%-data.accountNumber%>~<%-data.creditCardNoMasked%>~<%-data.shortName%> "/>
					                           				<%}else{%>
					                           					<input type="radio" name="toacc"  id="toacc" value="<%-data.accountNumber%>~<%-data.creditCardNoMasked%>~<%-data.shortName%> "/>
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
						  </div>   <% } %>
				    <!-- to Credit Card  Ends-->
	
	<div id="errorToAct" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.toaccmsg')%></font></p>
     </div>


     <div class="form-group  has-feedback" >
	       <% if ( devicePlatform == "Android" ) { %>
                 <input type="text" autocomplete='off' class="form-control nativedatepicker" id="payDate" name="payDate" placeholder="<%-$.i18n.t('app.transfer.charitytransfer.paymentdate')%>" readonly>
                 <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                 <%}else{%>
                <input type="text" autocomplete='off' class="form-control nativedatepicker" id="payDate" name="payDate" placeholder="<%-$.i18n.t('app.transfer.charitytransfer.paymentdate')%>" readonly>
		        <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
          <%}%>
	</div>
		
        
	 <input type="button" id="autopayregis" name="autopayregis" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>"></input>
     <a href="#/creditcard" class="btn btn-primary btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
 </form>
 
               
<script>

 $(function(){
            $(".dropselect").dropselect();
        });
        
var fromAccdefaultselection = "";
	
				   var els = new EncryptedLocalStorage('secret'); 
					      var defaultSelectionListDetailsDTO = els.get("defaultSelectionListDetails");
				      if(defaultSelectionListDetailsDTO=="" || defaultSelectionListDetailsDTO==null || defaultSelectionListDetailsDTO==undefined ){
				      $(".dropselect").dropselect();
				      }
	$('input[placeholder], textarea[placeholder]').placeholder();
</script>
<script>
var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+1;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
$("#payDate").val(myDate);					
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
</script>
<script>
var r={'special':/[\W]/g}
function valid(o,w)
{
o.value = o.value.replace(r[w],'');
}
</script>
<script>
function amountFormat(){
	var amtval = $('#transAmt').val();
	var vall=0;
	if(amtval > vall){
	$('#transAmt').val(Number(amtval).toFixed(2));
	}
}
</script>


<script>
function validateFloatKeyPress(el, evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    var number = el.value.split('.');
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    //get the carat position
    var caratPos = getSelectionStart(el);
    var dotPos = el.value.indexOf(".");
    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 1)){
        return false;
    }    
    return true;
}


function getSelectionStart(o) {
	if (o.createTextRange) {
		var r = document.selection.createRange().duplicate()
		r.moveEnd('character', o.value.length)
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
	} else return o.selectionStart
}
</script>

<script>
function validate(s) {
    var rgx = /^[0-9]*\.?[0-9]*$/;
    return s.matches(rgx);
}
</script>
<script type="text/javascript">
function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9.])/g,"");
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
  }
}
</script>
<script>
function calldial(){
			//document.location.href = 'tel:+1-8001243000';
			document.location.href = 'tel:920013323';
		}
</script>
<script>
//$(document).ready(function(){
function swipeactiveReady(){
	$(".activeswipelable").swipe( {
		allowPageScroll: 'vertical',
		swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
			
				if ($('.activeswipe').css('display') == 'none' || $('.activeswipe').css('display') == 'undefind') {
					if(direction=="left" || direction=="right"){
						$(this).append($(".activeswipe").css("position", "absolute"));
						//$(".activeswipe").show();
						$(this).find(".activeswipe").show();
                       /********* align the buttons vertically middle programatically ************/
                        var overlayheight=$(this).find(".overlay").height();
                        var btnheight=	$(this).find(".overlay p").height();
                       $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", top: overlayheight/2 - btnheight/2});
                       /*****************************************************************/
						
						
					}else{
						event.stopPropagation();
					}
					
				}else{
					
					$(".activeswipe").hide();
					//$(this).find('.swipeoverlay').remove();
				}
		},
		//Default is 75px, set to 0 for demo so any distance triggers swipe
	   threshold:0
	});
//});
}
swipeactiveReady();
</script>

<script type="text/javascript">
function f(o){
  o.value=o.value.replace(/([^0-9A-Za-z])/g,"");
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.replace(/([^0-9A-Za-z\s])/g,"");
  }
}

function checkCardAmount(o){
	 o.value=o.value.replace(/([^0-9\.])/g,"");
}
$(".content").animate({ scrollTop: 0 }, "fast");
</script>
<script>  
	(function ($){
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";
				var allowedaraTest =/[\u0600-\u06FF]/;					
					var orignalValue=$(this).val();
				
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedTest.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
						}else{
							var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}
					/*for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedaraTest.test(atchar)){
						}else{
						var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}*/
					 $(this).val(orignalValue);
	            	 if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	            		var values=$(this).val();
						if(e.keyCode != '32') {
			            	values=values.substring(0, values.length - 1);
				      	}
	           			$(this).val(values).focus();
	              		e.preventDefault();
	            	}
	     		});
	   		});
		};
	}(jQuery));
	$('.lenthcontrolnameval').inputlengthnameval();
</script>