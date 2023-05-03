<%
	var els = new EncryptedLocalStorage('secret'); 
	var username = els.get("userName");
%>
<div class="pagewrapper">
	<div class="container">
		<h1 class="lgn-logo animation-in">
		  <span>
			</span>
		</h1>
		<div class="panel panel-default">
			<div class="panel-body">
				<form method="post" action="#">
					<div class="form-group">
						<label for="card"><%-$.i18n.t('app.forgotusername.debitcreditcardnumber')%></label>
						<select id="card" class="form-control">
							<option>9656 XXXX XXXX 2856</option>
							<option>1225 XXXX XXXX 3576</option>
						</select>
					</div>
					<%-$.i18n.t('app.forgotusername.debitcreditcardnumber')%>
					<div class="form-group">
						<label for="card"><%-$.i18n.t('app.forgotusername.msg1')%></label>
					</div>
					<div class="CCard">
						<div class="row">
							<div class="col-xs-4 col-sm-4">
								<div class="CCardsim"></div>
							</div>								
							<div class="col-xs-8 col-sm-8">
								<div class="CCardlogo"></div>
							</div>
						</div>		
						<br/><br/>
						<div class="form-group">
							<div class="input-group">
							  <span class="input-group-addon">9656 &nbsp; &nbsp;XXXX</span>
							  <input type="tel" autocomplete="off" id="card_number" class="form-control numaric" maxlength="4">
							  <span class="input-group-addon">2856</span>
							</div>	
						</div>
						<span class="small" id="error_card" style="color:#a94442"></span>
					</div>
					<%-$.i18n.t('app.forgotusername.enterpin')%>
					<div class="form-group">
						<label for="pin"><%-$.i18n.t('app.forgotusername.msg2')%></label>
						<div class="pasCode">
						  <div class="form-group">
							<input type="password" autocomplete="off" class="inputs otpval1" data-maxlength="1" value=""/>
							<input type="password" autocomplete="off" class="inputs otpval2" data-maxlength="1" value=""/>
							<input type="password" autocomplete="off" class="inputs otpval3" data-maxlength="1" value=""/>
							<input type="password" autocomplete="off" class="inputs otpval4" data-maxlength="1" value=""/>
						  </div>
						</div>
						<p class="small" id="error_pin" style="color:#a94442" ></p>
					</div>
					<div class="form-group">
						<label for="pin"><%-$.i18n.t('app.forgotusername.msg3')%></label>
						<div class="pasCode">
						  <div class="form-group">
							<input type="password" autocomplete="off" class="inputs otpval_1" data-maxlength="1" value=""/>
							<input type="password" autocomplete="off" class="inputs otpval_2" data-maxlength="1" value=""/>
							<input type="password" autocomplete="off" class="inputs otpval_3" data-maxlength="1" value=""/>
							<input type="password" autocomplete="off" class="inputs otpval_4" data-maxlength="1" value=""/>
						  </div>
						</div>
						<p class="small" id="error_pin1" style="color:#a94442" ></p>	 						
					</div>	
					<div class="row">
					  <div class="col-xs-6 pr5"><button type="button" id="cancel_btn" class="btn btn-default btn-block"><%-$.i18n.t('app.forgotusername.cancel')%></button></div>
					  <div class="col-xs-6 pl5"><button type="button" id="next_btn" class="btn btn-primary btn-block" data-toggle="modal"><%-$.i18n.t('app.forgotusername.next')%></button></div>
					</div>
				</form>
			</div>
	</div>
	<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<form>
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Verification</h4>
					</div>
					<div class="modal-body">
						<p class="small"><%-$.i18n.t('app.forgotusername.msg4')%>+880-XXX-XXX-8015</p>                        
						<div class="form-group">
							<div class="pasCode text-center">
								<div class="form-group">
								<input type="password" autocomplete="off" class="inputs otpvalpin1" data-maxlength="1" value=""/>
								<input type="password" autocomplete="off" class="inputs otpvalpin2" data-maxlength="1" value=""/>
								<input type="password" autocomplete="off" class="inputs otpvalpin3" data-maxlength="1" value=""/>
								<input type="password" autocomplete="off" class="inputs otpvalpin4" data-maxlength="1" value=""/>
								<input type="password" autocomplete="off" class="inputs otpvalpin5" data-maxlength="1" value=""/>
								<input type="password" autocomplete="off" class="inputs otpvalpin6" data-maxlength="1" value=""/>
								</div>
							</div>	
							<p class="text-center small" id="error_otp" style="color:#a94442"></p> 						
						</div>
					<div class="form-group">
						<div id="OTPcontainer1"></div>
					</div>
					<p class="text-center small">
						<a href="#" class="resend_button" id="resend_btn">Resend OTP</a>
					</p> 
				</div>
				<div class="modal-footer">
					<button type="button" id="otp_verify_btn" class="btn btn-default btn-block otp_done" >Verify</button>
				</div>
			</div>
        </form>	
    </div>
	</div>
	<div class="modal fade modernPOP" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document" style="">
			<form>
				<div class="modal-content">
					<div class="modal-body">
						<p class="text-center">
							<span class="ico-circle center-block">
								<span class="menu_icon ico-2x check"></span>
							</span>
						</p>
						<h4 class="text-center"><%-$.i18n.t('app.forgotusername.sucess')%></h4>
						<p class="small text-center"><%-$.i18n.t('app.forgotusername.yourname')%> <%- username %></p>
					</div>
					<div class="modal-footer">
						<button type="button" id="otp_success_btn" class="btn btn-default btn-block"><%-$.i18n.t('app.forgotusername.login')%></button>
					</div>
				</div>
			</form>	
		</div>
    </div>
</div>
</div>
<script src="js/library/progressbar.min.js"></script>
<script>
	$(document).ready(function() {
		$('input').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if ( (code==13) || (code==10)) {
				$(this).blur();
				return false;
			}
		});
	});
</script>
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
		$('.inputs').keydown(function(e) {
			if($(this).val() =='' && e.which ==8) {
				$(this).prev('input').focus();
			}        
        });
    });
 });
 </script>
 <script>
  $('.numaric').bind('keyup paste', function(){
        this.value = this.value.replace(/[^0-9]/g, '');
  });
</script>
<script>
	$(document).ready(function(){
		
	});
</script>
