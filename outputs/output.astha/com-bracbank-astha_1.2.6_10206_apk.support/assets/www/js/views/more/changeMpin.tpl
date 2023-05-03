 <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a id="cancel" name="cancel"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.changempin')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
                  </div>
                  <!--Step Control Ends Here-->
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
                     <div id="commonErrorPass" style="display:none">
					       <div class="form-group">
								<label><strong><font color="red"><span id="commonErrorMsgPass"><%-$.i18n.t('app.more.preference.mpinnotsame')%></span></font></strong></label>
					       </div>
					   </div>
					   <div id="newErrorPass" style="display:none">
					       <div class="form-group">
								<label><strong><font color="red"><span id="commonErrorMsgPass"><%-$.i18n.t('app.more.preference.mpinsame')%></span></font></strong></label>
					       </div>
					   </div>
					   <div id="errlength" style="display:none">
					       <div class="form-group">
								<label><strong><font color="red"><span id="errlengthmsg"><%-$.i18n.t('validation.creatempin.newpin')%></span></font></strong></label>
					       </div>
					   </div>
					   <div id="errorPass" style="display:none">
					       <div class="form-group">
								<label><strong><font color="red"><span id="commonErrorMsgPass"><%-$.i18n.t('app.more.preference.oldmpinsame')%></span></font></strong></label>
					       </div>
					   </div>
					    <div id="commonMpinError" style="display:none">
							<div class="form-group">
								<label><strong><font color="red"><span id="commonErrorMsg"><%-$.i18n.t('validation.creatempin.mpinvalidno')%></span></font></strong></label>
							</div>
						</div>
                     <div id="commonError" style="display:none">
						<div class="form-group">
								<label><strong><font color="red"><span id="commonErrorMsg"><%-$.i18n.t('validation.creatempin.notsame')%></span></font></strong></label>
						</div>
					</div>
					<div id="commonMpinError" style="display:none">
						<div class="form-group">
								<label><strong><font color="red"><span id="commonErrorMsg"><%-$.i18n.t('validation.creatempin.mpinvalidno')%></span></font></strong></label>
						</div>
					</div>
					<div id="errorconseq" style="display:none">
							<p class="help-block error-message">
								<font color="#A94442"><%-$.i18n.t('app.login.errconseq')%></font>
							</p>
					</div>
					<div id="errorcon" style="display:none">
							<p class="help-block error-message">
									<font color="#A94442"><%-$.i18n.t('app.login.errcon')%></font>
							</p>
					</div>
                           <div class="form-group required">
                              <input type="password" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval"  maxlength="6"  id="oldmpin" name="oldmpin" placeholder="<%-$.i18n.t('app.more.preference.enteroldmpin')%>">
                           </div>
                           <div class="form-group required">
                              <input type="password" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval"  maxlength="6"  id="newmpin" name="newmpin" placeholder="<%-$.i18n.t('app.more.preference.enternewmpin')%>">
                           </div>
                           <div class="form-group required">
                              <input type="password" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval"  maxlength="6" id="confirmmpin" name="confirmmpin" placeholder="<%-$.i18n.t('app.more.preference.enterconfirmmpin')%>">
                           </div>
                           
                         <a id="reviewmpin" name="reviewmpin" class="btn btn-success btn-block"><%-$.i18n.t('app.more.preference.submit')%></a>
                         <a id="cancel" name="cancel" class="btn btn-primary btn-block" ><%-$.i18n.t('app.more.preference.cancel')%></a>                        
                     </form>
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
                     <script>
$(".masknumpwd").masknumpwd();
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
</script>

<script>  
	(function ($){
		$.fn.inputlengthotpnumval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedNumber ="1234567890";
				var allowedaraTest =/[\u0600-\u06FF]/;
					var orignalValue=$(this).val();
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedNumber.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
							var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
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
	$('.lenthcontrolotpnumval').inputlengthotpnumval();
</script> 
