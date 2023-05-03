<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%> 
		<!--pagewrapper Starts here-->
	    <div  class="pagewrapper">
	    		<!--Container Starts here-->
      			<div class="container">
      				<!-- Row Starts here-->
        			<div class="row">
        				<!-- Coloumn Starts here-->
          				<div class="col-sm-6">
            				<h1 class="lgn-logo">
              					<span>
              					</span>
            				</h1>
            				<!-- Panel Starts here-->
        					<div class="panel panel-default"> 
        						<!-- Panel head Starts here-->
              					<div class="panel-heading">
                					<h3 class="panel-title"><%-$.i18n.t('app.forgotusername.forgotaccessname')%></h3>
              					</div>
              					<!-- Panel head ends here-->
         						
         						<div class="panel-body">
         							<!-- form Starts here-->
	              					<form method="post"> 
	              						<!-- fieldset Starts here-->
	                    				<fieldset>

											
											<!--<div class="btn-group btn-group-justified custTab" role="group">
												<div class="btn-group" role="group">
													<button type="button" class="btn btn-default active" id="atm" name="atm"> <%-$.i18n.t('app.registration.atm')%> </button>
												</div>
												<div class="btn-group" role="group">
													<button type="button" class="btn btn-default" id="card" name="card"> <%-$.i18n.t('app.registration.creditcard')%> </button>
												</div>
											</div>-->
											<input type="hidden" name="hidSetReqType" id="hidSetReqType" />
											
											
											<div id="secError">
													<strong><span id="showError" class="text-danger"></span></strong>
											</div>
											</br>

	                    					<!--	<span class="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
	                          					
	                          					<label for="atmCardNumber"><%-$.i18n.t('app.forgotpassword.cusidsecid')%></label>
												<div class="form-group required">
												<% if ( devicePlatform == "Android" ) { %>
													<input type="text" onfocus="(this.type='number')" onblur="(this.type='text')" class="form-control lenthcontrol" minlength="7"  maxlength="12" id="securityid" name="securityid" placeholder="Eg: Enter Text Either 7 or 10 or 12 digits"
													onkeydown="return ( event.ctrlKey || event.altKey 
											                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
											                    || (95<event.keyCode && event.keyCode<106)
											                    || (event.keyCode==8) || (event.keyCode==9) 
											                    || (event.keyCode>34 && event.keyCode<40) 
											                    || (event.keyCode==46) )">
											       <%}else{%>
													<input type="number"  pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol" minlength="7"  maxlength="12" id="securityid" name="securityid" placeholder="Eg: Enter Text Either 7 or 10 or 12 digits">
											
												   <%}%>
												</div> -->
												<label for="atmCardNumber"><%-$.i18n.t('app.registration.debitcard')%></label>
	                          					<div class="form-group required">
	                          					<% if ( devicePlatform == "Android" ) { %>
	                                					<input type="text"  autocomplete='off'  onfocus="(this.type='number')" onblur="(this.type='text')" class="form-control lenthcontrol" name="atmCardNumber" id="atmCardNumber" maxlength="16" placeholder="<%-$.i18n.t('app.forgotusername.enteratmccnumber')%>"
	                                					onkeydown="return ( event.ctrlKey || event.altKey 
										                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
										                    || (95<event.keyCode && event.keyCode<106)
										                    || (event.keyCode==8) || (event.keyCode==9) 
										                    || (event.keyCode>34 && event.keyCode<40) 
										                    || (event.keyCode==46) )">
										         <%}else{%>
	                                					<input type="number"  autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" name="atmCardNumber" id="atmCardNumber" maxlength="16" placeholder="<%-$.i18n.t('app.forgotusername.enteratmccnumber')%>"
	                                					onkeydown="return ( event.ctrlKey || event.altKey 
										                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
										                    || (95<event.keyCode && event.keyCode<106)
										                    || (event.keyCode==8) || (event.keyCode==9) 
										                    || (event.keyCode>34 && event.keyCode<40) 
										                    || (event.keyCode==46) )">
										         <%}%>
	                            				</div>
	                            				<label for="atmCardNumber"><%-$.i18n.t('app.registration.pinno')%></label>
	                            				<div class="form-group required">
                 								<% if ( devicePlatform == "Android" ) { %>
                 										<input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control masknumpwd lenthcontrol"  maxlength="4" id="atmPinNumber" name="atmPinNumber" placeholder="<%-$.i18n.t('app.forgotusername.enteratmccpin')%>">
                 								<%}else{%>
	                                					<input type="password" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" name="atmPinNumber" id="atmPinNumber" maxlength="4" placeholder="<%-$.i18n.t('app.forgotusername.enteratmccpin')%>"
	                                					onkeydown="return ( event.ctrlKey || event.altKey 
									                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
									                    || (95<event.keyCode && event.keyCode<106)
									                    || (event.keyCode==8) || (event.keyCode==9) 
									                    || (event.keyCode>34 && event.keyCode<40) 
									                    || (event.keyCode==46) )">
									              <%}%>
	                           					 </div>
	                            				<!-- <a href="#" id="validateCardPin" class="btn btn-success btn-block"><%-$.i18n.t('app.forgotusername.submit')%></a> -->
	                            				<input type="button" class="btn btn-success btn-block" id="validateCardPin"  value="<%-$.i18n.t('app.forgotusername.submit')%>" />
	                            				<a href="#/login" class="btn btn-primary btn-block"><%-$.i18n.t('app.forgotusername.cancel')%></a>
	                            		</fieldset>
	                            		<!-- Fieldset Ends here-->
	                        		</form>
	                        		<!-- form ends here-->
                    			</div>
               				</div>
               				<!-- Coloumn Ends here-->
            			</div>
            			<!-- Coloumn Ends here-->
         			</div>
         			<!-- row ends here-->
    			</div>
    			<!--Container Ends here-->
			</div>
			<!--pagewrapper Ends here-->
			
			
  <!-- <script src="js/pollyfills/jquery.placeholder.min.js"></script> -->
  <script>
  /*  $(document).ready(function()
      {
        $(".loginopt").on("change",function()
              {
                if($(".loginopt").attr("checked"))
                {
                  url=$(this).attr("data-url");
                  location.href=url;

                }

              });
        $('input[placeholder], textarea[placeholder]').placeholder();
      });*/

  </script>

  <script type="text/javascript">
       /* var specialKeys = new Array();
        specialKeys.push(8); //Backspace
         specialKeys.push(9); //TAB
        $(function () {
            $("input").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                return ret;
            });
            $("input").bind("cut copy paste", function (e) {
                return false;
            });
            $("input").bind("drop", function (e) {
                return false;
            });
        });
       */
    </script>

<script>
$(".masknumpwd").masknumpwd();
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
$("#hidSetReqType").val('A');
</script>

<script>
		$(document).ready(function()
		{
			 
		});
</script>
