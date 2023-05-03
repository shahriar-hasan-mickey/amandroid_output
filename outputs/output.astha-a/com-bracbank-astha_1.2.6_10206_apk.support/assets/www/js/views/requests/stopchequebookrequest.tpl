<%
	var els = new EncryptedLocalStorage('secret');
%>
  
  <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
    <li class="active"><%-$.i18n.t('app.requests.landing.stopchequebook')%></li> 
	</ol>
<div class="clearfix"></div>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
	<div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.tedallalrewards.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.tedallalrewards.verify')%></P></div></div>
                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>
	</div>
<!--Step Control Ends Here-->

<form>
		<!-- Start from account -->
                    <div class="dropselect" data-title="<%-$.i18n.t('app.requests.chequebookreq.account')%>" >
	                   	<% if ( casaAccountList.length > 0 ) { %>
				        	<% _.each(casaAccountList,function(tagData){ %>
					        		<% if ( tagData.currencyCode == "KWD" ) { %>
				                       		<label class="list-group-item">
				                            		<input type="radio" value="<%-tagData.accountNumber%>~<%-tagData.accountShortName%>~<%-tagData.accountNumberMasked%>" name="frmacno" id="frmacno"/>
													<p>
															<%if(typeof(tagData.accountShortName)!="undefined"){%>
																<span class="nme" id="accno" name="accname"><%-tagData.accountShortName%></span>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
															<%if(typeof(tagData.currencyCode)!="undefined"){%>
																<small class="cur pull-right"><%-tagData.currencyCode%></small>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
													</p>
													<p>
															<%if(typeof(tagData.accountNumberMasked)!="undefined"){%>
																<small class="text-muted" id="accno" name="accno"><%-tagData.accountNumberMasked%></small>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
															<%if(typeof(tagData.availableBalance)!="undefined"){%>
																<span class="amt pull-right"><%-tagData.availableBalance%></span>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
													</p>
											</label>
									<%}%>
							<% }); %> 
						
						<%}%>
					</div>
					<div id="errorFromAct" style="display:none">
                    	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.newcc.fromaccmsg')%></font></p>
					</div>
                    <!-- End from account -->
					  		 
					<label for="cheqserialno"><%-$.i18n.t('app.requests.chequebookreq.cheqbookserialno')%></label>
					<div class="form-group required">
                    	<select name="cheqserialno" id="cheqserialno" class="form-control">
                        		<option value=""  selected>XXXXXX</option>
                            	<option value="256885">256885</option>
                            	<option value="565760">565760</option>
						</select>
					</div>
					
					<div id="errorcheqserialno" style="display:none">
                    	<p class="help-block error-message"><font color="#A94442">Please Select Cheque Serial No</font></p>
					</div>
					
					<label for="reason"><%-$.i18n.t('app.requests.chequebookreq.repreason')%></label>
					<div class="form-group required">
                    	<select name="repreason" id="repreason" class="form-control">
                        		<option value="lost"  selected><%-$.i18n.t('app.requests.chequebookreq.lost')%></option>
                            	<option value="stolen"><%-$.i18n.t('app.requests.chequebookreq.stolen')%></option>
						</select>
					</div>
					
                      <br/>
	
	<button id="butsubmit" name="butsubmit" type="button" class="btn btn-success btn-block"><%-$.i18n.t('app.tedallalrewards.submit')%></button> 
	<a href="#/servicerequestmenu" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.homefinance.cancel')%></a>
	
</form>
<br/>
<!--Content Ends Here-->

<script>
        $(function(){
            $(".dropselect").dropselect();
        });
        
</script>
 
 
 <script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             $(this).val($(this).val().replace(/([^0-9])/g,""));
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

<script>
(function ($){
     $.fn.inputlengthname=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
           $(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
         // $(this).val($(this).val().toUpperCase());
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontrolname').inputlengthname();
</script>
<script>  
	(function ($){
		$.fn.inputlengthbeneemp=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
					//$(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
					
					var notallowed ="!@#$%^&*()_+=-{};:\"?><|\/,'[].";
					var notallowednumber ="0123456789";
					var orignalValue=$(this).val();
					for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
					 		if(notallowed.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
					 for (var i=0;i<= 1;i++){
						var atchar = orignalValue[i];
					 		if(notallowednumber.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
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
	$('.lenthcontrolbeneemp').inputlengthbeneemp();
	
</script>
<script>
function amountFormat(){
	var amtval = $('#newposlimit').val();
	var vall=0;
	if(amtval > vall){
	$('#newposlimit').val(Number(amtval).toFixed(2));
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