 <%
var els = new EncryptedLocalStorage('secret'); 
			 var devicePlatform = els.get("device.platform");
			 var cccardacctno=els.get("setccdetailsaccno");
var cccardacct=els.get("cccardacctno");
%>
 <!--Content Starts Here-->
<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/servicerequestmenu" ><%-$.i18n.t('app.menu.accounts')%></a></li>
     <li class="active"><%-$.i18n.t('app.requests.chequebookreq.intrcusage')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
<div class="newWiz">
	<div class="steps done"><div>1<p><%-$.i18n.t('app.requests.blkdebitcard.input')%></p></div></div>
	<div class="steps"><span></span><div>2<P><%-$.i18n.t('app.requests.blkdebitcard.verify')%></P></div></div>
	<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.blkdebitcard.confirm')%></p></div></div>
</div><br>

<!--Step Control Ends Here-->
<form role="form">
		<!-- Credit Card Starts-->
			       
	                     <% if(mycreditcards.length > 0){%>
	                      <div class="dropselect"  data-title="<%-$.i18n.t('app.requests.chequebookreq.selectcnumber')%>" data-setid="acid" >
 			                      <% _.each(mycreditcards,function(data){ %>
                   			          <label class="list-group-item">
                            		        <input type="radio" value="<%-data.accountNumber%>~<%-data.productName%>~<%-data.availableBalance%>~<%-data.currencyCode%>~<%-data.id%>" name="toacc" id="toacc"/>
                            		        <p><span class="nme"><%-data.productName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
            				 	 			<p><small class="text-muted"><%-data.accountNumber%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
            			     		</label>
            			     	<%}); %>
		                       </div>
		                       <%}else{%>
								<div class="alert alert-info">
					                <span class="msg"><%-$.i18n.t('app.creditcard.ccpayments.nodataccard')%></span>
					            </div>
	                          <%}%>
				    
				    <!--  Credit Card  Ends-->
	
	<div id="errorAct" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.ccmessagemsg')%></font></p>
     </div><br>
    
		       <label for="reason"><%-$.i18n.t('app.requests.chequebookreq.intrusage')%></label>
					<div class="form-group required">
                    	<select name="interusage" id="interusage" class="form-control">
                        		<option value="lost"  selected><%-$.i18n.t('app.requests.chequebookreq.enable')%></option>
                            	<option value="stolen"><%-$.i18n.t('app.requests.chequebookreq.disable')%></option>
						</select>
					</div>
					            
        <input type="button" class="btn btn-success btn-block" id="intercardusgrequest" name="intercardusgrequest" value="<%-$.i18n.t('app.requests.blkdebitcard.submit')%>" />
        <a href="#/servicerequestmenu"  class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.blkdebitcard.cancel')%></a>
	</form>
	<br/>
	
<!--Content Ends Here-->


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
$(function(){
            $(".dropselect").dropselect();
        });
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>
