<%
	var els = new EncryptedLocalStorage('secret');
	var mpincheck = els.get("mpintype"); 
	var devicePlatform = els.get("device.platform");
	var activate_user = els.get("activate_user");
	
	var uid;
	if(activate_user=="force"){
	uid = els.get("loginuser_id");
	}else{
		 uid = els.get("uid");
	}
	
	
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
				              <% if(mpincheck=="NEWMPIN"){ %>
				              	<h3 class="panel-title"><%-$.i18n.t('app.mpin.creatempin')%></h3>
				              <%}else if(mpincheck=="forceMPIN"){%>
				              	<h3 class="panel-title"><%-$.i18n.t('app.mpin.changempin')%></h3>
				              <%}else{%>
				              	<h3 class="panel-title"><%-$.i18n.t('app.mpin.forgotmpin')%></h3>
				              <%}%>
				          </div>
              			<!-- Panel head ends here-->
			              <div class="panel-body">
			              <!-- form Starts here-->
			                    <form method="post"> 
			                     <!-- fieldset Starts here-->
			                        <fieldset>
					                           <div class="form-group required">
					                           <% if ( devicePlatform == "Android" ) { %>
					                                <input type="text" autocomplete='off' value="<%-uid%>" autocorrect="off" maxlength="30" class="form-control restrictCpyPst" id="username" name="username" placeholder="<%-$.i18n.t('app.mpin.enteruserid')%>" >
					                           <%}else{%>
					                           	<input type="text"  autocomplete='off' value="<%-uid%>" autocorrect="off" maxlength="30" class="form-control restrictCpyPst" id="username" name="username" placeholder="<%-$.i18n.t('app.mpin.enteruserid')%>">
					                           <%}%>
					                             </div>
					                             <div id="errorlengthusr" style="display:none">
														 <p class="help-block error-message">
														 <font color="#A94442"><%-$.i18n.t('app.login.errlengthusr')%></font>
														 </p>
												 </div>
					                             <div class="form-group required">
					                             <% if ( devicePlatform == "Android" ) { %>
					                                <input type="password" autocomplete='off' maxlength="14" class="form-control restrictCpyPst" id="password" name="password" value="" placeholder="<%-$.i18n.t('app.mpin.enterpassword')%>">
					                              <%}else{%>
					                                <input type="password" autocomplete='off' maxlength="14" class="form-control restrictCpyPst lenthcontrol" id="password" name="password" value="" placeholder="<%-$.i18n.t('app.mpin.enterpassword')%>">
					                           <%}%>
					                             </div>
			                             <!--<a href="forgotMpinOTP.html" class="btn btn-success btn-block"><%-$.i18n.t('app.mpin.submit')%></a>-->
			                             <input type="button" class="btn btn-primary btn-block" id="validateCardPin"  value="<%-$.i18n.t('app.mpin.submit')%>" />
			                             <a href="#/login" class="btn btn-default btn-block"><%-$.i18n.t('app.mpin.cancel')%></a>
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

<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        specialKeys.push(9); //TAB
        $(function () {
            
            $("input").bind("paste", function (e) {
                return false;
            });
            $("input").bind("drop", function (e) {
                return false;
            });
        });
       
</script>
<script>

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
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
</script>    

<script>
(function ($){
     $.fn.inputlengthuserid=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
            $(this).val($(this).val().replace(/\s/g, "").toUpperCase());  //script to doesn't allow spaces in user name
           //$(this).val($(this).val().toUpperCase());
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontroluserid').inputlengthuserid();
</script> 
 <script>
$(document).ready(function()
		{
			DisableCopyPaste();
			
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
