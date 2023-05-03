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
     <li><a href="#/servicerequestmenu" ><%-$.i18n.t('app.menu.servicereq')%></a></li>
     <li class="active"><%-$.i18n.t('app.requests.landing.stopcreditcard')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
 <% if(cardNumberList.length > 0){%>
<div class="newWiz">
	<div class="steps done"><div>1<p><%-$.i18n.t('app.requests.blkdebitcard.input')%></p></div></div>
	<div class="steps"><span></span><div>2<P><%-$.i18n.t('app.requests.blkdebitcard.verify')%></P></div></div>
	<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.blkdebitcard.confirm')%></p></div></div>
</div><br>

<!--Step Control Ends Here-->
<form >
		<!-- Credit Card Starts-->
			       <div class="form-group required">
	                      <div class="dropselect"  data-title="<%-$.i18n.t('app.tedallalrewards.selectcredit')%>" data-setid="acid" >
			 			           <% _.each(cardNumberList,function(data){ %>
			 			            <label class="list-group-item">
							    	<p>
							        	<%if(typeof(data.atmCardNumber)!="undefined"){%> 
							        	        <input type="radio" value="<%-data.atmCardNumber%>~<%-data.primaryAccount%>~<%-data.cardTypeDescription%>"  name="accno" id="accno"/>
												<span id="toacc" value="<%-data.atmCardNumber%>"><%-data.atmCardNumber%></span><br>
												 <!--<span value="<%-data.englishName	%>"><%-data.englishName	%></span>-->
										<%}else{%>
												<span class="nme"></span>
										<%}%>
									</P></label>			 	  
								<% }); %>
		                       </div>
				    </div>
				    <!--  Credit Card  Ends-->
	
	<div id="errorAct" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.ccmessagemsg')%></font></p>
     </div><br>
    
		<label for="reason"><%-$.i18n.t('app.requests.chequebookreq.repreason')%></label>
					<div class="form-group required">
						<select name="repreason" id="repreason" class="form-control">
				        	<option value="" selected="selected" ><%-$.i18n.t('app.requests.blkdebitcard.plzselectreson')%></option>
								<% _.each(stopccreasonList,function(data){ %>
												<option id="stopccreasonList" value="<%-data.categoryValue%>"><%-data.categoryValue%></option>
										
								<% }); %>
						</select>
						
					</div>
         
         
         <div id="errorReason" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.blkdebitcard.plzselectreson')%></font></p>
     </div><br>
        <label for="replace"><%-$.i18n.t('app.requests.blkdebitcard.reissueatm')%></label>
					<div class="form-group required">
					
                    	
						<select name="rplacecard" id="rplacecard" class="form-control">
				        	<option value="" selected="selected" ><%-$.i18n.t('app.requests.blkdebitcard.plzselectrplc')%></option>
								<% _.each(reissuecardList,function(data){ %>
												<option id="reissuecardList" value="<%-data.categoryValue%>"><%-data.categoryValue%></option>
										
								<% }); %>
						</select>
						
					</div>
			<div id="errorReplc" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.blkdebitcard.plzselectrplc')%></font></p>
           </div><br>
					            
        <input type="button" class="btn btn-success btn-block" id="stopcreditcardrequest" name="stopcreditcardrequest" value="<%-$.i18n.t('app.requests.blkdebitcard.submit')%>" />
        <a href="#/servicerequestmenu"  class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.blkdebitcard.cancel')%></a>
	</form>
	<br/>
	<br/>
	<%}else{%>
			<div class="alert alert-info">
								 <span class="msg"><%-$.i18n.t('app.creditcard.blockcc.nocard')%></span>
			</div>
	<%}%>
	
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

 <script>
$(document).ready(function(){
			$('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
		     
});
</script>
 
