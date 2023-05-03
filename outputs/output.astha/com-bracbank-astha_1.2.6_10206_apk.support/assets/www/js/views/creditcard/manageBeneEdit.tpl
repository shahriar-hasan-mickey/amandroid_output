   
<%
  var els = new EncryptedLocalStorage('secret'); 
  var benename=els.get("benename");
  var firstName = els.get("firstNamefirstName");
  var devicePlatform = els.get("device.platform");
%>


   <!--Content Starts Here-->
                  <a href="#creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
                     <li><a href="#creditcard"><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
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
                 <form>

                            <div class="dtl_view">
                            <table class="table">
                            <tr>
                            <td><%-$.i18n.t('app.creditcard.managebene.benecardno')%></td>
                            <td><%-card%></td>
                            <input type="hidden" value="<%-card%>" id="card"/>
                            </tr>
                             <tr>
                            <td><%-$.i18n.t('app.creditcard.managebene.beneficiaryname')%></td>
                            <td><%-firstName%></td>
                            <input type="hidden" value="<%-firstName%>" id="firstName"/>
                            </tr>
                            </table>
                            </div>

							<input type="hidden" name="ccnobenecodeupdate" id="ccnobenecodeupdate" value="<%-benecode%>" />
							<input type="hidden" name="ccnoactno" id="ccnoactno" value="<%-benactno%>" />

                             <div class="form-group">
                                <label for="nickname"><%-$.i18n.t('app.creditcard.managebene.beneficiaryname')%></label>
			     <% if ( devicePlatform == "Android" ) { %>
                                <input type="text" autocomplete='off'  maxlength="15" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)"  class="form-control lenthcontrolnick" id="nickname" name="nickname" value="<%-nickname%>" placeholder="<%-$.i18n.t('app.creditcard.managebene.benenickname')%>" />
			     <%}else{%>
                                <input type="text" autocomplete='off'  maxlength="15"   class="form-control lenthcontrolnick" id="nickname" name="nickname" value="<%-nickname%>"  placeholder="<%-$.i18n.t('app.creditcard.managebene.benenickname')%>" />
			     <%}%>                             
                             </div>
                                    <input type="button" class="btn btn-success btn-block" id="validateCardPin"  value="<%-$.i18n.t('app.creditcard.managebene.submit')%>" />
                                    <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.cancel')%></a>
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
	    $.fn.inputlengthnick=function(){
	      // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
	       return this.each(function(){
	         var makelength=$(this).attr("maxlength");
	         $(this).on('keyup',function(e){
	            if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	              var values=$(this).val();
	              values=values.substring(0, values.length - 1);
	               $(this).val(values).focus();
	              e.preventDefault();
	            }
	         })
	
	       });
	    };
	}(jQuery));
	$('.lenthcontrolnick').inputlengthnick();
	$(".content").animate({ scrollTop: 0 }, "fast");
</script>

