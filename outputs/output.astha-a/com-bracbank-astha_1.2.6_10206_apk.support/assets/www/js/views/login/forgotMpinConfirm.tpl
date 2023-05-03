<div class="pagewrapper">
      	  <div class="container">
        <h1 class="lgn-logo animation-in">
          <span></span>
        </h1>
		<h3 class="text-center page-title">Forgot - MPIN</h3>			
		<div class="panel panel-default">
            <div class="panel-body">
              <form method="post" action="#">				
                <div class="form-group">
                  <label for="pin">Enter New MPIN</label>
                  <div class="pasCode">
                    <div class="form-group" id="pascode1">
                      <input type="password" autocomplete='off' class="inputs otpval1" data-maxlength="1" value=""/>
                      <input type="password" autocomplete='off' class="inputs otpval2" data-maxlength="1" value=""/>
                      <input type="password" autocomplete='off' class="inputs otpval3" data-maxlength="1" value=""/>
                      <input type="password" autocomplete='off' class="inputs otpval4" data-maxlength="1" value=""/>
                      <input type="password" autocomplete='off' class="inputs otpval5" data-maxlength="1" value=""/>
                      <input type="password" autocomplete='off' class="inputs otpval6" data-maxlength="1" value=""/>
                    </div>
                </div>	 	<p class="small" id="error_mpin1" style="color:#a94442" ></p>					
              </div><!-- / form-group--> 			
              <div class="form-group">
                <label for="pin">Confirm New MPIN</label>
                <div class="pasCode">
                  <div class="form-group">
                    <input type="password" autocomplete='off' class="inputs otpval_1" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpval_2" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpval_3" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpval_4" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpval_5" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpval_6" data-maxlength="1" value=""/>
                  </div>
              </div>
              <p class="small" id="error_mpin2" style="color:#a94442" ></p>	 						
            </div><!-- / form-group--> 	
            <div class="row">
              <div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" onClick="location.href='index.html'">Home</button></div>
              <div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="submit_btn" data-toggle="modal" >Submit</button></div>
            </div>
          </form>
          </div>
      </div><!-- / panel-->

			
<!-- Modal -->
<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
    <form method="post" action="info.html">
    <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Verification</h4>
        </div>
        <div class="modal-body">
            <p class="small">Please enter the OTP that was sent to your registered mobile number +880-XXX-XXX-8015</p>                        
            <div class="form-group">
                <div class="pasCode text-center">
                    <div class="form-group">
                    <input type="password" autocomplete='off' class="inputs otpva_l1" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpva_l2" data-maxlength="1" value=""/>
                    <input type="password"  autocomplete='off'class="inputs otpva_l3" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpva_l4" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpva_l5" data-maxlength="1" value=""/>
                    <input type="password" autocomplete='off' class="inputs otpva_l6" data-maxlength="1" value=""/>
                    </div>
                </div>	
                <p class="text-center small" id="error_otpin" style="color:#a94442"></p> 						
            </div><!-- / form-group--> 	
            <div class="form-group">
                <div id="OTPcontainer1"></div>
            </div>
            <p class="text-center small">
                <a href="#" class="resend_button2" id="resend_btn">Resend OTP</a>
            </p>			  
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default btn-block otp_done"id="Otp_varify" data-dismiss="modal" data-toggle="modal" >Verify</button>
        </div>
    </div>
        </form>	
    </div>
</div><!-- / modal-->

<!-- Modal -->
<div class="modal fade modernPOP" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
        <form method="post" action="#">
          <div class="modal-content">
            <div class="modal-body">
                <p class="text-center">
                    <span class="ico-circle center-block">
                        <span class="menu_icon ico-2x check"></span>
                    </span>
                </p>
                <h4 class="text-center">Success!</h4>
                <p class="small text-center">Your MPIN has been reset successfully.</p>
            </div>
            <div class="modal-footer">
              <button type="button" onClick="javascript:void(0);" id="login_btn" class="btn btn-default btn-block">Login</button>
            </div>
          </div>
            </form>	
        </div>
      </div><!-- / modal-->	
		
		</div><!-- /container -->
    </div><!-- / pagewrapper-->
<script>
 $(document).ready(function(){
  $('.inputs').bind('keyup paste', function(){
        this.value = this.value.replace(/[^0-9]/g, '');
  });
      $(".inputs").keyup(function () {
          $this=$(this);
   if ($this.val().length >=$this.data("maxlength")) {
    if($this.val().length>$this.data("maxlength")){
          $this.val($this.val().substring(0,1));
     }
          $this.next(".inputs").focus();
     }
  $('.inputs').keydown(function(e)
                  {
     if($(this).val() =='' && e.which ==8) {
 $(this).prev('input').focus();
          }        
        });
     });
     });
 </script>
