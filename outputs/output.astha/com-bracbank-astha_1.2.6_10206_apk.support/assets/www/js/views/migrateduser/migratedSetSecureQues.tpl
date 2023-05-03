<div class="pagewrapper">
	<div class="container" style=" width: 100%;overflow-y: scroll;bottom: 0px;position: absolute;">
		<h1 class="lgn-logo animation-in">
			<span>
			</span>
		</h1>
		<h3 class="text-center page-title"><%- $.i18n.t('app.login.securequeslabel') %> </h3>
		<section>
		<div class="panel panel-default">
			<div class="panel-body">
				<p class="small"><%-$.i18n.t('app.login.securequesheader')%></p>
				<form>
					<% if ( questionBasketList.length > 0 ) { %>																																									
					<%_.each(questionBasketList,function(data,dataIndex){%>	
						<% var questionLabel = "app.login.queslabel"+(dataIndex+1);%>
						<div class="form-group required">
							<div class="dropselect" name="ques<%-dataIndex+1%>" id="ques<%-dataIndex+1%>" data-title="<%-$.i18n.t(questionLabel)%>">
								<% _.each(questionBasketList[dataIndex].questionList,function(obj){ %>
									<label class="list-group-item">
										<input type="radio" value="<%-obj.id%>~<%-obj.description%>" name="ques<%-dataIndex+1%>"/>
										<p><span class="nme"><%-obj.description%></span></p>
									</label>
								<% });%>
							</div>
						</div>
						<div class="form-group" style="margin:15px 0px 15px 0px">
							<input type="text"  autocomplete='off'  class="form-control alphanumericlengthcontrol" id="ans<%-dataIndex+1%>" name="ans<%-dataIndex+1%>" placeholder="<%-$.i18n.t('app.login.answerplaceholder')%>" maxlength="20"/>
						</div>
						<div id="errorcon<%-dataIndex+1%>" style="display:none">
							<p class="help-block error-message">
								<font color="#A94442"><%-$.i18n.t('app.login.errcon')%></font>
							</p>
					   </div>
						<div class="form-group has-error">
							<p class="help-block error-message" style="color:#a94442" id="commonerror<%-dataIndex+1%>"></p>
						</div>
					   <div id="errorconseq<%-dataIndex+1%>" style="display:none">
							<p class="help-block error-message">
								<font color="#A94442"><%-$.i18n.t('app.login.errconseq')%></font>
							</p>
						</div>	
					 <%});%>
					 <% } %> 
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="secQuesError"></p>
					</div>
					
					<div class="form-group" id="migFrequentUserAuthModeDiv"></div>
					
					<!--<div class="alert alert-info small">
						<ul class="list-unstyled checkstyle">
							<li class="list-group-item list-group-item-heading"><%-$.i18n.t('app.login.securequestipheader')%></li>
							<li class="list-group-item">Details will be provided by the bank</li>
						</ul>
					</div>-->
					<!--<div class="form-group">
						<div class="row">
							<div class="col-xs-12">
								<label class="check-label">
									<input type="checkbox" id="tandc" name="tandc"> <%-$.i18n.t('app.login.iaccept')%><a href="javascript:void(0);" id="termsandcond"> <%-$.i18n.t('app.login.tandc')%></a>
									<span class="checkmark1"></span>
								</label>
							</div>
						</div>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="tandcError"></p>
					</div>-->
					<a href="javascript:void(0);" id="migrated_ques_continue" class="btn btn-primary btn-block"><%-$.i18n.t('button.registration.continue')%></a>
					<a href="javascript:void(0);" id="migrated_ques_cancel" class="btn btn-default btn-block"><%-$.i18n.t('button.login.cancel')%></a>
				</form>
			</div>
		</div>	
	</section>	
	<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<form>
				<div class="modal-content">
  					<div class="modal-header">
    					<button type="button" id="MigSetSecQuesOTPClose_btn" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    					<h4 class="modal-title" id="myModalLabel"></h4>
  					</div>
  					<div class="modal-body">
					  
                    <p class="small" id="otpHelpText"></p>
					<p class="small" id="challengeText"></p>
						<div class="form-group">
		  					<div class="pasCode text-center">
			  					<div class="form-group">
									<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
			  					</div>
		  					</div>
						</div>
						<div class="form-group has-error" id="otpNullErrorDiv">
							<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
				 		</div>
                        <div id="otpContainerDiv"></div>
					</div>
  					<div class="modal-footer">
						<div class="row">
							<div class="col-xs-6 pr5">
								<button type="button" id="MigSetSecQuesOTPCancel_btn" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
							</div>
							<div class="col-xs-6 pr5">
								<button type="button" id="MigSetSecQuesOTP_VerifyOTPBtn" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.verify') %></button>
							</div>
						</div>
					</div>
				</div>
  			</form>
		</div>
	</div>	
	<div class="modal fade modernPOP" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<form>
				<div class="modal-content">
					<div class="modal-body">
						<p class="text-center">
							<span class="ico-circle center-block">
								<span class="menu_icon ico-2x check"></span>
							</span>	
							</p>
							<h4 class="text-center"><%- $.i18n.t('app.registration.regsuccess')%></h4>
							<p class="small text-center"><%- $.i18n.t('app.registration.migratedregsuccessmessage')%></p>
						</div>
						<div class="modal-footer">
							<div class="row">
							  <div class="col-xs-8 col-xs-offset-2">
								<button type="button" id="migrated_gotoLogin" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.login')%></button>
							</div>
						</div>
					   </div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>
	 $(document).ready(function() {
		$(".dropselect").dropselect();  

		DisableCopyPaste();  
	});	  
	(function ($){
	     $.fn.inputalphanumericlength=function() {
	        return this.each(function() {
	          var makelength=$(this).attr("maxlength");
	          $(this).on('keyup',function(e) { 
	          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";					
			  var orignalValue=$(this).val();
			  for(var i=0;i<orignalValue.length;i++) {
			  	var atchar = orignalValue[i];
				if(allowedTest.indexOf(atchar) != -1) {
				} else {
					var changeTest =orignalValue.substr(0,i);
					orignalValue=changeTest;
				}
			   }
				$(this).val(orignalValue);
				if(makelength!=""){
		             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
		                e.preventDefault();
		               return false;
		             }
		          }
	          });
	        });
	     };
	}(jQuery));
	$('.alphanumericlengthcontrol').inputalphanumericlength();
</script>
<script>
	$(document).ready(function(){
		
	});
</script>
<script>
	(function ($){
		 $.fn.cardpinnumericlength=function() {
			return this.each(function() {
			  var makelength=$(this).attr("maxlength");
			  $(this).on('input ',function(e) { 
			  var allowedTest ="1234567890";					
			  var orignalValue=$(this).val();
			 
			  for(var i=0;i<orignalValue.length;i++) {
				var atchar = orignalValue[i];
				if(allowedTest.indexOf(atchar) != -1) {
					$(this).next('.inputs').focus();
				} else {
					var changeTest =orignalValue.substr(0,i);
					orignalValue=changeTest;
				}
			   }
				$(this).val(orignalValue);
				 if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
					e.preventDefault();
				   return false;
				 }
			  });
			   $(this).on('keyup',function(e) { 
				    if((e.which == 8 || e.which == 46) && (this.value == "")) { 
				$(this).prev('.inputs').focus();
				return false;
			  }
			   });
			});
		 };
	}(jQuery));
	$('.cardpinnumericlengthcontrol').cardpinnumericlength();
	$(".cardpinnumericlengthcontrol").css({'-webkit-text-security': 'disc','-moz-webkit-text-security': 'disc','-moz-text-security': 'disc'});
</script>
