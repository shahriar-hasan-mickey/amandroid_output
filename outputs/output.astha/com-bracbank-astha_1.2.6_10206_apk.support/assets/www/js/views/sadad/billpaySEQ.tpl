<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var devicePlatform = els.get("device.platform");
%>
 
 <a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
  <ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
                   <!--  <li class="active"><%-$.i18n.t('app.transfer.internationaltransfer.internationaltransfer')%></li>-->
                  </ol>

                  <div class="clearfix"></div>

 </ol>

 <div class="clearfix"></div><br/>
 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.billinquiry.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.billinquiry.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.billinquiry.confirm')%></p></div></div>
  </div>
 <div class="dtl_view">
<form role="form" id="formotp">
							        <div id="otpId">	
									        	<div class="ownaccountransferOTP">
									        	<% if ( questionList.length > 0 ) {   %>
																<div class="form-group">
																	<!--<label for=""><%-$.i18n.t('app.forgotpassword.secu12')%></label>
																		<input type="text"  autocomplete='off' id="questionList" name="questionList" value="<%-seq_question%>"  class="form-control lenthcontrolbenelocal" placeholder="" readonly />-->
																												<input type="hidden" id="questionList" name="questionList" value="<%-seq_question%>" />
															  	  <div class="form-group required">
																		<div class="dropselect" data-title="<%-$.i18n.t('app.forgotpassword.secu12')%>" data-setid="OwnCreditCardDiv">
													                   			          <label class="list-group-item btn-primary active">
													                            		        <input type="radio" value="<%-seq_question%>" name="questionListval" id="questionListval"/>
													                            		        <p><span class="nme"><%-seq_question%></span></p>
													            			     		</label>
																		</div>
											
																	</div>
																</div>
																<div class="form-group">
																	<label><%-$.i18n.t('app.forgotpassword.secu1')%></label>
																	<input type="password" autocomplete='off'  id="secques" name="secques" class="form-control lenthcontrolbenelocal" maxlength="30"  placeholder="" />
																	<input type="hidden" id="secquesid" name="secquesid" value="<%-seq_id%>" />
																	<div id="secError">
																		<strong><span id="showError" class="text-danger"></span></strong>
																 </div>	
																 <div id="secErrorfirst">
																			<strong><span id="showErrorfirst" class="text-danger"></span></strong>
																		</div>
																		<div id="secErrorlast">
																			<strong><span id="showErrorlast" class="text-danger"></span></strong>
																		</div>
																</div>
														</div>
														
												</div>
						                        <a id="validatesubmit" class="btn btn-success btn-block "><%-$.i18n.t('app.transfer.localtransfer.submit')%></a>
					 <% } else { %>  
					 		<h5 style="color:white; text-align:center;"><%-$.i18n.t('app.product.loan.nodata')%></h5>
					 <% } %>
				
					<a href="#/transfer" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
							        </div>
							        
							        
 </form></div><br/>

<script src="js/pollyfills/jquery.placeholder.min.js"></script>
	<script>
		$(document).ready(function()
		{
			$(".check-hidden:checked").parents(".checkinput").addClass("active");
			$(".loginopt").on("change",function()
			{
				if($(".loginopt").attr("checked"))
				{
					url=$(this).attr("data-url");
					location.href=url;
				}
			});
			$('input[placeholder], textarea[placeholder]').placeholder();
			$("#questionList").prop("selectedIndex", 0);
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
		$.fn.inputlengthbene=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
	     		var data = $(this).val();
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890~`!@#$%^&*()_+{}[]\|;:<>,./? ";
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
			
			
			
			
			
			
			
			/*return this.each(function(){
			var that=$(this);
			var makelength=$(this).attr("maxlength");
			$(this).on("paste",function(){				
				 setTimeout(function()
					       { 
					          var data= that.val() ;
					          var dataFull = data.replace(/[^0-9a-zA-Z)(*&^/~#@!-:;,?`_|<>{}\[\]\"\' \\]/g ,"");
					          that.val(dataFull);
					       });
				
			});
			$(this).on("input change",function(e){
			    var target = e.target,
  				position = target.selectionStart; // Capture initial position
  				var old = target.value;
			
				var data= that.val() ;
				var dataFull = data.replace(/[^0-9a-zA-Z)(*&^/~#@!-:;,?`_|<>\n{}\[\]\"\' \\]/g ,"");
				that.val(dataFull);
				if(that.val().length>makelength){
					that.val(that.val().slice(0,makelength))
					}
				if(old != target.value)
    				position++;
    				var iOS = /iPad|iPhone|iPod/.test( navigator.userAgent );
					if(iOS){ 
						target.setSelectionRange(position, position);
					}	
					
			});
   		});
	};
}(jQuery));*/
	$('.lenthcontrolbenelocal').inputlengthbene();
</script>
