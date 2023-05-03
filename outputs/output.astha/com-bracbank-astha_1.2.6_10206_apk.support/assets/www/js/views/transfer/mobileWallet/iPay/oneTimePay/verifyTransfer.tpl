<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="#/ipayonetimepayinitiatetransfer" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4><%-$.i18n.t('app.transferss.ipayverifytrans')%><p class="small">(<%-$.i18n.t('app.transferss.bkashtext')%>)</p></h4>
  		<span class="step-badge">3/3</span>
  		<ul class="step-progress">
    		<li class="done"></li>
    		<li class="done"></li>
    		<li class="done"></li>
		</ul>	
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
    			<form>	
            		<div class="veriIconWrap">
               			<span class="menu_icon2 ico1x verify"></span>					
             		</div>
        			<div class="veriWrap">
            			<div class="media">
                			<div class="media-left media-middle">
                    			<img class="img-circle" src="images/brand/user4.png" width="36" />
                			</div>
                			<div class="media-body media-middle">
                    			Own Account
                    			<p class="small text-muted">8748274AN424294228</p>
                			</div>
                			<div class="media-right text-right media-middle">
                    			<span class="cur small text-muted">BDT</span>
                			</div>
            			</div>
            			<div class="media">
                			<div class="media-left media-middle">
                    			<span class="downArAni"></span>
            				</div>
                			<div class="media-body media-middle">
                    			<span class="amt pos">1,50,000.
                        			<span class="des">00</span>
                    				<span class="cur">BDT</span>
                    			</span>
                			</div>
            			</div>
            			<div class="media">
                			<div class="media-left media-middle">
                    			<img class="img-circle" src="images/brand/biller/iPay.jpg" width="36" />
                			</div>
                			<div class="media-body media-middle">
                    			iPay Account Name
                    			<p class="small text-muted">AN4242942874827428</p>
                			</div>
        				</div>
        			</div>
        			<ul class="list-unstyled list-nobrd">
            			<li class="list-group-item">
                			<label><%-$.i18n.t('app.transferss.transactionfees')%></label>
                			<p>
                    			<span class="amt small">4.
                        			<span class="des">00</span>
                        			<span class="cur">BDT</span>
                    			</span>
                			</p>
            			</li>
            			<li class="list-group-item">
                			<label><%-$.i18n.t('app.transferss.transreason')%></label>
                			<p>Remark</p>
            			</li>
        			</ul>
        			<div class="clearfix"></div>
        			<div class="row">
            			<div class="col-xs-6 pr5">
                			<button type="button" class="btn btn-default btn-block" id="cancel"><%-$.i18n.t('button.login.cancel')%></button>
            			</div>
            			<div class="col-xs-6 pl5">
                			<button type="button" class="btn btn-primary btn-block" id="sendMoney"><%-$.i18n.t('button.transfer.sendmoney')%></button>
            			</div>
        			</div>
    			</form>
			</section>

			<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    			<div class="modal-dialog" role="document">
        			<form>
            			<div class="modal-content">
                			<div class="modal-header">
                    			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        			<span aria-hidden="true">&times;</span>
                    			</button>
                    			<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.registration.verificationlabel')%></h4>
                			</div>
                			<div class="modal-body">
                    			<p class="small"><%-$.i18n.t('app.registration.opthelptext')%> +880-XXX-XXX-8015</p>
                    			<div class="form-group">
                        			<div class="pasCode text-center">
                            			<div class="form-group">
                                			<input type="password" pattern="[0-9]*" maxlength="1" id="otp1" class="numericlengthcontrol inputs"/>
                                			<input type="password" pattern="[0-9]*" maxlength="1" id="otp2" class="numericlengthcontrol inputs"/>
                                			<input type="password" pattern="[0-9]*" maxlength="1" id="otp3" class="numericlengthcontrol inputs"/>
                                			<input type="password" pattern="[0-9]*" maxlength="1" id="otp4" class="numericlengthcontrol inputs"/>
                                			<input type="password" pattern="[0-9]*" maxlength="1" id="otp5" class="numericlengthcontrol inputs"/>
                            				<input type="password" pattern="[0-9]*" maxlength="1" id="otp6" class="numericlengthcontrol inputs"/>
                            			</div>
                        			</div>
                    			</div>
                    			<div class="form-group">
                        			<div id="OTPcontainer1"></div>
                    			</div>
                    			<p class="text-center small">
                        			<a href="javascript:void(0);" class="resend_button2" id="resend_btn"><%- $.i18n.t('app.registration.rensendotp') %></a>
                				</p>
                			</div>
                			<div class="modal-footer">
                    			<button type="button" class="btn btn-default center-block otp_done" id="verifyBtn"><%- $.i18n.t('button.registration.verify') %></button>
                			</div>
            			</div>
        			</form>
    			</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(".inputs").keyup(function (e) {
	    if (this.value.length == this.maxLength) {
	    	$(this).next('.inputs').focus();
	    } else if((e.which == 8 || e.which == 46) && (this.value == "")) { 
	    	$(this).prev('.inputs').focus();
	    }
	});
</script>
<script>
(function ($){
     $.fn.inputnumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          	var allowedTest ="1234567890";					
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
$('.numericlengthcontrol').inputnumericlength();
</script>
<script>
	$(document).ready(function() {

		DisableCopyPaste();
		
		
	});
</script>