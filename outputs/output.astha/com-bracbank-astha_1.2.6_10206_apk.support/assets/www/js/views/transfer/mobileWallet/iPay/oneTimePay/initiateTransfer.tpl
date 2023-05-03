<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="#/ipayviewbeneficiarys" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4><%-$.i18n.t('app.transferss.paymentdetails')%><p class="small">(<%-$.i18n.t('app.transferss.bkashtext')%>)</p></h4>
  		<span class="step-badge">2/3</span>
  		<ul class="step-progress">
    		<li class="done"></li>
    		<li class="done"></li>
    		<li></li>
  		</ul>		
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
        		<form>
            		<div class="logWit small">
                		<div class="row">
                    		<div class="col-xs-6 col-sm-6 pr5">
                        		<a href="#/ipayviewbeneficiarys" class="text-center">
                            		<span class="menu_icon ico-xs toBene"></span>
                            		<p class="small m0"><%-$.i18n.t('app.transferss.tobenelabel')%></p>
                        		</a>
                    		</div>
                    		<div class="col-xs-6 col-sm-6 pl5">
                        		<a href="javascript:void(0);" class="text-center active">
                            		<span class="menu_icon ico-xs onetimepay"></span>
                            		<p class="small m0"><%-$.i18n.t('app.transferss.onetimepaylabel')%></p>
                        		</a>
                    		</div>
                		</div>
            		</div>
            		<div class="form-group">
                		<label for="acc"><%-$.i18n.t('app.transferss.fromacc')%></label>
   <select name="fromaccnum" id="fromaccnumber" class="form-control">
                 <option value=""  selected="selected"><%-$.i18n.t('app.transferss.selaccnum')%></option>
                    		<option>87541254863</option>
                    		<option>85962136541</option>
                		</select>
                		<p class="small">
                    		<span class="small text-muted"><%-$.i18n.t('app.transferss.availbal')%></span>
                    		<span class="amt small">21,000.
                        		<span class="des">00</span>
                        		<span class="cur">BDT</span>
                    		</span>
                		</p>
         <span class="small" id="error_acc" style="color:#a94442"></span> 
            		</div>
            		<div class="form-group">
                		<label for="accname"><%-$.i18n.t('app.transferss.ipayacntname')%></label>
<input type="text" name="accname" id="accname" class="form-control" value="Account Name"/>
            <span class="small" id="error_acc" style="color:#a94442"></span>          		
            		</div>
            		<div class="form-group">
                		<label for="acc"><%-$.i18n.t('app.transferss.ipaytoacnt')%></label>
                		<select name="toaccnum" id="fromaccnum" class="form-control">
                 <option value=""  selected="selected"><%-$.i18n.t('app.transferss.selaccnum')%></option>
                    		<option>56213548216</option>
                    		<option>51248752421</option>
                		</select>
         <span class="small" id="error_acc" style="color:#a94442"></span> 
            		</div>
            		<div class="form-group">
                		<div class="row">
                    		<div class="col-xs-8 pr5">
                        		<label for="amt"><%-$.i18n.t('app.transferss.transamt')%></label>
   <input type="text" onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol paymentAmount" id="paymentAmount" name="paymentAmount" placeholder="<%-$.i18n.t('app.transfer.ownaccount.amount')%>" maxLength="20">
                     <span class="small" id="error_amount" style="color:#a94442"></span> 
                    		</div>
                    		<div class="col-xs-4 pl5">
                        		<label for="curr"><%-$.i18n.t('app.transferss.currency')%></label>
  <select name="currency" id="currency" class="form-control">
                  <option value=""  selected="selected"><%-$.i18n.t('app.transferss.selcurr')%></option>
                            		<option>BDT</option>
                        		</select>
                    <span class="small" id="error_currency" style="color:#a94442"></span>
                    		</div>
                    		<div class="col-xs-12">
                        		<div class="row">
                            		<div class="col-xs-5">
                                		<p class="small">
                                    		<a href="javascript:void(0);" class="small text-link" data-toggle="modal" data-target="#TransactionLimit"><%-$.i18n.t('app.transferss.translimit')%></a>
                                		</p>
                            		</div>
                            		<div class="col-xs-7 text-right">
                                		<p class="small">
                                    		<span class="small text-muted"><%-$.i18n.t('app.transferss.transfee')%></span>
                                    		<span class="amt small">0.
                                        		<span class="des">00</span>
                                        		<span class="cur">BDT</span>
                                    		</span>
                                		</p>
                            		</div>
                        		</div>
                    		</div>
                		</div>
            		</div>
            		<div class="form-group">
                		<label for="reason"><%-$.i18n.t('app.transferss.transreason')%></label>
 <input type="text" name="reason" id="reason" class="form-control" placeholder="Remark">
           <span class="small" id="error_currency" style="color:#a94442"></span>
            		</div>
            		<div class="form-group">
                		<label><%-$.i18n.t('app.transferss.selectauthmode')%></label>
                		<div class="custRadio_pass">
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="optionsRadios1" value="option2" checked>
                                		<div class="row bg">
                                    		<div class="col-xs-12 p0">
                                        		<span class="menu_icon ico-xs sms"></span>
                                        		<span class="small"><%-$.i18n.t('app.transferss.sms')%></span>
                                    		</div>
                                		</div>
                            		</label>
                        		</div>
                    		</div>
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                            			<div class="row bg">
                                			<div class="col-xs-12 p0">
                                    			<span class="menu_icon ico-xs mail"></span>
                                    			<span class="small"><%-$.i18n.t('app.transferss.mail')%></span>
                                			</div>
                            			</div>
                            		</label>
                        		</div>
                    		</div>
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="optionsRadios3" value="option2">
                                		<div class="row bg">
                                    		<div class="col-xs-12 p0">
                                        		<span class="menu_icon ico-xs fScan"></span>
                                        		<span class="small"><%-$.i18n.t('app.transferss.token')%></span>
                                    		</div>
                                		</div>
                            		</label>
                        		</div>
                    		</div>
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="optionsRadios4" value="option2">
                                		<div class="row bg">
                                    		<div class="col-xs-12 p0">
                                        		<span class="menu_icon ico-xs esign"></span>
                                        		<span class="small"><%-$.i18n.t('app.transferss.esign')%></span>
                                    		</div>
                                		</div>
                            		</label>
                        		</div>
                    		</div>
                		</div>
            		</div>
            		<div class="clearfix"></div>
			        <div class="alert alert-info small" role="alert">
			            <small>
			                <i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
			                           <ul>
			                             <li><%-$.i18n.t('app.transferss.msg2note')%></li>
			                             <li><%-$.i18n.t('app.transferss.msg3note')%></li>
			                             <li><%-$.i18n.t('app.transferss.msg4note')%></li>
			                           </ul></small>
			        </div>
            		<div class="row">
                		<div class="col-xs-6 pr5">
                    		<button type="button" class="btn btn-default btn-block" id="cancel"><%-$.i18n.t('button.transfer.cancel')%></button>
                		</div>
                		<div class="col-xs-6 pl5">
                    		<button type="button" class="btn btn-primary btn-block" id="payNow"><%-$.i18n.t('app.transferss.paynow')%></button>
                		</div>
            		</div>
        		</form>
    		</section>
			
			<div class="modal fade modernPOP" id="TransactionLimit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        		<div class="modal-dialog" role="document">
            		<form method="post" action="info.html">
                		<div class="modal-content">
                    		<div class="modal-header">
                        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        			<span aria-hidden="true">&times;</span>
                        		</button>
                        		<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.transferss.translimit')%></h4>
                    		</div>
                    		<div class="modal-body">
                        		<p class="text-center">
                            		<span class="ico-badge center-block">
                                		<span class="menu_icon ico-3x translimit"></span>
                            		</span>
                        		</p>
                        		<div class="row">
                            		<div class="col-xs-12">
                                		<div class="row">
                                    		<div class="col-xs-6">
                                        		<p>
                                            		<span class="small"><%-$.i18n.t('app.transferss.dailylimit')%></span>
                                            		<br/>		
                                            		<span class="amt small">1,000.
                                                		<span class="des">00</span>
                                                		<span class="cur">BDT</span>
                                            		</span>
                                        		</p>
                                    		</div>
                                    		<div class="col-xs-6">
                                        		<p>
                                            		<span class="small"><%-$.i18n.t('app.transferss.monthlylimit')%></span>
                                            		<br/>
                                            		<span class="amt small">15,000.
                                                		<span class="des">00</span>
                                                		<span class="cur">BDT</span>
                                            		</span>
                                    			</p>
                                    		</div>
                                		</div>
                            		</div>
                            		<div class="col-xs-12">
                                		<p>
                                    		<span class="small"><%-$.i18n.t('app.transferss.pertranslimit')%></span>
                                    		<br/>
                                    		<span class="amt small">500.
                                        		<span class="des">00</span>
                                        		<span class="cur">BDT</span>
                                    		</span>
                                		</p>		
                            		</div>
                        		</div>
                    		</div>
                		</div>
            		</form>
        		</div>
    		</div>
		</div>
	</div>
</div>
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
