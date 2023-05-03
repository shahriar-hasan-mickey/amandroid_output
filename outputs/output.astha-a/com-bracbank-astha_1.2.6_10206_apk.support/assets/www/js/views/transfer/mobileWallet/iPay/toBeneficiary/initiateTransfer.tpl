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
			<section class="content" id="bKashBene">
        		<form>
            		<div class="media payAcc">
                		<div class="media-left">
                    		<img src="images/brand/user4.png" class="img2x img-circle" />
                		</div>
                		<div class="media-body">
                    		<p>Shakib Mohammad</p>
                    		<p class="small text-primary">87XXXXXXXXXX89</p>
                    		<p class="text-right small">
                    			<a href="javascript:void(0);" id ="transHistory" class="text-link">
                        			<span class="menu_icon ico-xss histry"></span>
                            		<small><%-$.i18n.t('app.transferss.viewhistory')%></small>
                        		</a>
                    		</p>
                		</div>
            		</div>
            		<br/>
            		<div class="form-group">
                		<label for="acc"><%-$.i18n.t('app.transferss.fromacc')%></label>
            			  <select name="fromaccnum" id="fromaccnum" class="form-control">
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
        				<div class="row">
            				<div class="col-xs-8 pr5">
                    			<label for="amt"><%-$.i18n.t('app.transferss.enteramt')%></label>
  				<input type="text" onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol paymentAmount" id="paymentAmount" name="paymentAmount" placeholder="<%-$.i18n.t('app.transfer.ownaccount.amount')%>" maxLength="20">
                     		<span class="small" id="error_amount" style="color:#a94442"></span> 
                			</div>
                			<div class="col-xs-4 pl5">
                    			<label for="curr"><%-$.i18n.t('app.transferss.currency')%></label>
                    			<select name="currency" id="currency" class="form-control">
                     <option value=""  selected="selected"><%-$.i18n.t('app.transferss.selcurr')%></option>
                        			<option>BDT</option>
                    			</select>
                    			<span class="small" id="error_curr" style="color:#a94442"></span> 
                			</div>
                			<div class="col-xs-12">
                    			<div class="row">
                        			<div class="col-xs-5 pr5">
                            			<p class="small">
                                			<a href="javascript:void(0);" class="small text-link" data-toggle="modal" data-target="#TransactionLimit"><%-$.i18n.t('app.transferss.translimit')%></a>
                            			</p>
                        			</div>
                        			<div class="col-xs-7 text-right pl5">
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
        			<select name="purposetransfer" id="purposetransfer" class="form-control">
               <option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltransfer')%></option>
                			<option>Reason</option>
            				<option>Others</option>
            			</select>
              <span class="small" id="error_reason" style="color:#a94442"></span>
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
        			<div class="form-group">
            			<div class="custRadio_pass custRadio_medium">
                			<div class="box">
                    			<div class="radio">
                        			<label>
                            			<input type="radio" name="payType" id="paynow" value="paynow" checked>
                            			<div class="row bg">
                                			<div class="col-xs-12 p0">
                                    			<span class="menu_icon ico-xs payNow"></span>
                                				<span class="small"><%-$.i18n.t('app.transferss.paynow')%></span>
                                			</div>
                        				</div>
                    				</label>
                    			</div>
            				</div>
                			<div class="box">
                    			<div class="radio">
                        			<label>
                        				<input type="radio" name="payType" id="paylater" value="paylater">
                        				<div class="row bg">
                            				<div class="col-xs-12 p0">
                                				<span class="menu_icon ico-xs payLater"></span>
                            					<span class="small"><%-$.i18n.t('app.transferss.paylater')%></span>
                        					</div>
                        				</div>
                    				</label>
                    			</div>
                			</div>
                			<div class="box">
                    			<div class="radio">
                        			<label>
                        				<input type="radio" name="payType" id="schpay" value="schpay">
                        				<div class="row bg">
                                			<div class="col-xs-12 p0">
                                    			<span class="menu_icon ico-xs schedulePay"></span>
                                    			<span class="small"><%-$.i18n.t('app.transferss.repeat')%></span>
                                			</div>
                        				</div>
                        			</label>
                    			</div>
            				</div>
        				</div>
        			</div>
        			<div id="payLater">
            			<div class="form-group">
                			<label for="pdate"><%-$.i18n.t('app.transferss.paymentdate')%></label>
                			<input name="payDate" id="pdate" type="date" class="form-control">
        				</div>
        			</div>
        			<div id="schPay">
            			<div class="form-group">
                			<label for="sdate"><%-$.i18n.t('app.transferss.startdate')%></label>
                			<input id="sdate" name="startDate" type="date" class="form-control">
            <div id="errorstartdate" style="display:none">
								 <p class="help-block error-message">
									 <font color="#A94442"><%-$.i18n.t('validation.transfer.startdate')%></font>
								 </p>
						 </div>	 			
</div>
                		<div class="form-group">
	            			<label for="fre"><%-$.i18n.t('app.transferss.frequency')%></label>
	                		<select name="freqList" id="freqList" class="form-control">
               <option value=""  selected="selected"><%-$.i18n.t('app.transferss.selfreq')%></option>
	                    		<option>Monthly</option>
	                		</select>
<div id="errorfrrequency" style="display:none">
								 <p class="help-block error-message">
									 <font color="#A94442"><%-$.i18n.t('validation.transfer.freqList')%></font>
								 </p>
						 </div>	
                		</div>
            			<div class="form-group">
                    		<label for="not"><%-$.i18n.t('app.transferss.numberoftimes')%></label>
<select name="nooftimes" id="nooftimes" class="form-control">
              <option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltnumtim')%></option>                        		<option>3</option>
                        		<option>6</option>
                    			<option>9</option>
                        		<option>12</option>
                    		</select>
<div id="errornoftimes" style="display:none">
								 <p class="help-block error-message">
									 <font color="#A94442"><%-$.i18n.t('validation.transfer.paydateempty')%></font>
								 </p>
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
                    		<button type="button" class="btn btn-primary btn-block" id="confirm"><%-$.i18n.t('button.transfer.confirm')%></button>
	            		</div>
    	    		</div>
    			</form>
			</section>

			<div class="modal fade modernPOP" id="TransactionLimit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        		<div class="modal-dialog" role="document">
            		<form>
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
var r={'special':/[\W]/g}
function valid(o,w)
{
o.value = o.value.replace(r[w],'');
}
</script>
<script>
var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+1;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
//$("#payDate").val(myDate);					
</script>
<script>
function amountFormat(){
	var amtval = $('#paymentAmount').val();
	var vall=0;
	if(amtval != vall){
	$('#paymentAmount').val(Number(amtval).toFixed(3));
	}
}
</script>
<script>
function validateFloatKeyPress(el, evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    var number = el.value.split('.');
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    //just one dot
    if(number.length>1 && charCode == 46){
         return false;
    }
    //get the carat position
    var caratPos = getSelectionStart(el);
    var dotPos = el.value.indexOf(".");
    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 2)){
        return false;
    }    
    return true;
}


function getSelectionStart(o) {
	if (o.createTextRange) {
		var r = document.selection.createRange().duplicate()
		r.moveEnd('character', o.value.length)
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
	} else return o.selectionStart
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
function validate(s) {
    var rgx = /^[0-9]*\.?[0-9]*$/;
    return s.matches(rgx);
}
</script>
<script type="text/javascript">
function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9.])/g,"");
  $("#localtransfersubmit").attr('disabled','disabled');
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
  }
}
</script>
<script>  
	(function ($){
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";
				var allowedaraTest =/[\u0600-\u06FF]/;					
					var orignalValue=$(this).val();
				
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedTest.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
						}else{
							var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}
					/*for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedaraTest.test(atchar)){
						}else{
						var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}*/
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
	$('.lenthcontrolnameval').inputlengthnameval();
</script> 

 <script>
      $(document).ready(function()
      {
       $(".payNow_block, .payLater_block, .rePeat_block").hide();

       $(".payNow").click(function()
	   {
		$(".payNow_block").show();
		$(".payLater_block, .rePeat_block").hide();
		$("#paydatehide").hide();
  		$("#sirepeat").hide();
		});

		$(".payLater").click(function()		  
		  {
		$(".payLater_block").show();
		$(".payNow_block, .rePeat_block").hide();
		$("#paydatehide").show();
  		$("#sirepeat").hide();
		});
		  
		$(".rePeat").click(function()		  
		  {
		$(".rePeat_block").show();
		$(".payNow_block, .payLater_block").hide();
		$("#paydatehide").hide();
  		$("#sirepeat").show();
		});		  
      });
      function openUrl(url) {
		var els = new EncryptedLocalStorage('secret');
		var responseurlData = els.get("responseurlData");
		var i=0;
		_.each(responseurlData,function(datalink,index){
		var codelink = datalink.code;
	    //alert("codelink"+codelink);
	    if(codelink=="LOCAL_TRANSFER"){
	    	//url = els.get("generallink");
	    	if($.i18n.lng() == 'en-US'){
					url = datalink.description;
			}else if($.i18n.lng() == 'en-AR'){
					url = datalink.descriptionAr;
			}
	    }
	    });
	      //alert("open url: " + url);
	    
      window.open(url, '_system', 'location=yes');
    }
      </script>
