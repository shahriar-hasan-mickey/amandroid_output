<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%> 
   <!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
 <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
       <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
       <li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%></li>
 </ol>
 <div class="clearfix"></div>
                   <!--Step Control Starts Here-->
						 <div class="newWiz">
						        <div class="steps done">
						              <div>
						                   1
						                    <p><%-$.i18n.t('app.creditcard.managebene.input')%></p>
						               </div>
						        </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.managebene.verify')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.managebene.confirm')%></p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->
<form role="form">
       <div class="form-group required">
       	<label for="Beneficiary"><%-$.i18n.t('app.creditcard.managebene.cardno')%></label>
       <% if ( devicePlatform == "Android" ) { %>
              <input type="number" autocomplete='off' id="shbcardno"  name="shbcardno" maxlength="16"  placeholder="<%-$.i18n.t('app.creditcard.managebene.entercardno')%>" class="form-control lenthcontrol">
       <%}else{%>
              <input type="number" autocomplete='off' id="shbcardno"  pattern="[0-9]*" inputmode="numeric"  name="shbcardno" maxlength="16"  placeholder="<%-$.i18n.t('app.creditcard.managebene.entercardno')%>" class="form-control lenthcontrol">
       <%}%>
       </div>
       <div id="secError" style="display:none">
					<label><strong><font color="red"><span id="showError"></span></font></strong></label>
		</div>

         <div class="form-group required">
         <label for="nickname"><%-$.i18n.t('app.creditcard.managebene.nickname')%></label>
               <input type="text" autocomplete='off' placeholder="<%-$.i18n.t('app.creditcard.managebene.enternickname')%>" id="nickname" name="nickname" maxlength="15" class="form-control lenthcontrolbenenickname">
          </div>

          <input type="button" class="btn btn-success btn-block" id="validateCardPin" name="validateCardPin" value="<%-$.i18n.t('app.creditcard.managebene.benesubmit')%>" />
           <a class="btn btn-primary btn-block" href="#/manageBeneficiaryCreditCard"><%-$.i18n.t('app.creditcard.managebene.cancel')%></a>
 </form>
  <br/>
         
               <!--Content Ends Here-->
  <script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
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
              var iOS = /iPad|iPhone|iPod/.test( navigator.userAgent );
            var inputType=$(this).attr("inputmode");
			if(iOS && inputType == "numeric" ){ 
				var old=$(this).val();
            	$(this).val(old+String.fromCharCode(convertNumbers2EnglishLocal(e.keyCode)));
 				e.preventDefault();
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
		$.fn.inputlengthbenenickname=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
					//$(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
					var notallowed ="!@#$%^&*()_+=-{}:\"?><|\'";

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
	$('.lenthcontrolbenenickname').inputlengthbenenickname();
</script>