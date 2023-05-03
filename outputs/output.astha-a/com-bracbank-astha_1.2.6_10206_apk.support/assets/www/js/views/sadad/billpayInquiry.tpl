<%
	var els = new EncryptedLocalStorage('secret'); 
	var basecurr = els.get("basecurr");
	var devicePlatform = els.get("device.platform");
	var isKeyPadNeed =els.get("isKeyPadNeed");
	var billerRangeDTO = els.get('billerRangeDTO');
%>

 <a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <!-- Breadcrumb Starts Here -->
                  
<ol class="breadcrumb cust_breadcrumb pull-left">
   <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
   <li class="active"><%-$.i18n.t('app.sadad.general.billpaymentinquiry')%></li>
</ol><br/>
                    
	<!--<p><a class="btn btn-success btn-sm addBene pull-right" href="#/addbills"><%-$.i18n.t('app.sadad.managebills.addbills')%></a></p>-->
	<div class="clearfix"></div><br/>
	<div class="billpay">
    <!--Billpay Starts Here-->
	<form>

              <ul>
                    <% if ( billerBeneficiary.length > 0 ) { %>
			                <% var inval = 0; var billerDenominationss=[];
			                 _.each(billerBeneficiary,function(data,index){var val=0; billerDenominationss =data.billerDenominationList;%>
			                
			                           <li class="list-group">
			                              <div class="dater" style="border:none;">
			                                 <span class="label" style="display:none"></span>
			                                 <span class="dd" style="display:none"></span>
			                                 <span class="mm" style="display:none"></span>
			                                <!-- <span><label class="checkinput"><input id="hidamtdue" name="hidamtdue" type="hidden" value=""/>
											<input type="checkbox"  value="<%-val%>~<%-data.shortName%>~<%-index%>~<%-data.serviceType%>~<%-data.serviceInfo%>~<%-data.serviceId%>~<%-data.categoryId%>~<%-data.billerUniqueId%>~<%-data.refNumber%>~<%-data.billerDenominationList%>" 
														              		class="check-hidden"  name="checkbillpay" id="checkbillpay" /></label></span>-->
			                              <span><label class="radioinput" style="margin-top:24px"><input id="hidamtdue" name="hidamtdue" type="hidden" value=""/>
			                              <input type="radio" name="duedate" class="radio-hidden" value="<%-val%>~<%-data.shortName%>~<%-index%>~<%-data.serviceType%>~<%-data.serviceInfo%>~<%-data.serviceId%>~<%-data.categoryId%>~<%-data.billerUniqueId%>~<%-data.refNumber%>~<%-data.billerDenominationList%>" 
														              		  id="duedate"  ><div class="control__indicator"></div></label></span>
			                              </div>
			                              <div class="d_msg">
			                                 <p class="type"><%-data.serviceName%></p>
			                                 
			                                 <p><%-data.categoryName%></p>
			                                 
			                                 <p><%-data.refNumber%></p>
			                              </div>
			                              <div class="amt neg"><span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.billamount')%></span><span class="cur"><%-data.currencyCode%></span>
                                    
                                   
                                   
                                     <% if (billerDenominationss.length > 0) { %>
	                                   
	                                   <div class="form-group text-right">
	                                 <select class="form-control input-sm" id="denominationCurr<%-index%>">
	                                <option value="-1" selected="selected"><%-$.i18n.t('app.sadad.onetimepay.billertransactionamt')%></option>
	                                 <% var i=0;
	                                 _.each(billerDenominationss,function(dataa,ind){%>
	                                      
	                                       <option id="denomination<%-ind%>" value="<%-dataa.denominationId%>~<%-dataa.denominationAmount%>~<%-dataa.denominationCurrency%>~<%-dataa.sellingCurrency%>~<%-dataa.sellingPrice%>" ><%-dataa.sellingPrice%>-<%-dataa.sellingCurrency%></option>
	                                        <%i++;});%>
	                                 </select>
	                                
	                              </div>
	                              <input type="hidden" value="" id="hiddenbill1" name="hiddenbill1"/>
                                    <% } else{%>
                                    <div class="form-group" id="numkeyPad">
				                          
											<% if ( devicePlatform == "Android" ) { %>
                          	  <input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control paymentAmount" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);"   class="form-control lenthcontrol"  id="billamountent<%-index%>" name="billamountent"  maxLength="17"  >
							  <%}else{%>
								<% if(isKeyPadNeed) { %>
								<input type="number" autocomplete='off'   pattern="[0-9]*" inputmode="numeric"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="billamountent<%-index%>" name="billamountent"  maxLength="17">
							<% } else { %>
								 <input type="text" autocomplete='off'  onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol paymentAmount" id="billamountent<%-index%>" name="billamountent"  maxLength="17">
							<% } %>
			                          	  
							  <%}%>
	                                </div>
	                                <input type="hidden" value="" id="hiddenamt" name="hiddenbill1"/>
									<%}%>
			                              <div class="overlay text-center">
			                                  <p>&nbsp;</p>
			                                <!--  <p>
			                                      <a href="viewHistory.html" class="btn btn-success"><span class="glyphicon glyphicon-header"></span></a>
			                                  </p>-->
			                              </div>
			                           </li>
			                             
					                     <% inval+1;val++;});%>
		                           		
                           </ul>
								<p class="help-block error-message label label-danger" id="chkboxid" style="display: none;"><%-$.i18n.t('app.sadad.duebillpay.billisnotselect')%></p>
								<p class="help-block error-message label label-danger" id="amountvalidation" style="display: none;"><%-$.i18n.t('validation.sadad.negamountvaldate')%></p>
								 <p class="help-block error-message label label-danger" id="selectdenomi_id" style="display: none;"><%-$.i18n.t('app.sadad.onetimepay.billertransactionamt')%></p>
								 <p class="help-block error-message label label-danger" id="inputdenomi_id" style="display: none;"><%-$.i18n.t('app.sadad.onetimepay.billertransactionamt1')%></p>
								<p class="help-block error-message" id="billlimitamt" style="display: none;color:#A94442"><%-$.i18n.t('app.sadad.onetimepay.billertransactionlimit')%></p>
								<p class="help-block error-message" id="billmorelimitamt" style="display: none;color:#A94442"><%-$.i18n.t('app.sadad.onetimepay.billermoretransactionlimit')%></p>
								<input id="hidpay" name="hidpay" type="hidden" value=""/>								
					</br>				
				    <a href="javascript:void(0)" id="pay" name="pay" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.billinquiry.pay')%></a>
				    <a href="#/sadad" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.billinquiry.cancel')%></a>
	    <%}else{%>
					<h4><%-$.i18n.t('app.product.investment.nodata')%></h4>
					
	<div style="position:relative;top:50px">				
		<a href="#/sadad" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.billinquiry.cancel')%></a>
		</div>			
		<%}%>
	</form>	
</div>
<!--Billpay Ends Here-->
<br/>
 <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        specialKeys.push(9); //TAB
        $(function () {
            /*$("input").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                //$("#billamount").text(ret);
                return ret;
            });*/
            $("input").bind("paste", function (e) {
                return false;
            });
            $("input").bind("drop", function (e) {
                return false;
            });
        });
</script>

<script>
        $(document).ready(function()
        {
           $(".enq").hide();
          $(".enquire").on("click",function()
          {
          $(this).hide().next("p").show();
          });
          	var els = new EncryptedLocalStorage('secret'); 
        //  var billerArray = els.get('billerListDTO');
        //  console.log(billerArray);

         // $(':checkbox').each(function(index,item){
                  
            //      if(billerArray[index].amountdue.indexOf('-')== -1){
                  	
             //     	if(Math.round(billerArray[index].amountdue)> 0){
               //   	$(this).prop('checked', true);
               //   	var thisLbl = $(this).closest('label');
               //   	$(thisLbl).addClass('active');
             // 	  }
            //  	}
               
               //    });
               
         
		 });
</script>
<script>
		$(document).ready(function(){
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
<script>
$('#denominationCurr').on('change',function(){
//alert("hi");
            	var selVal = $('select option:selected').attr('id');
            	console.log("selVal..",selVal);
            	var id=$('#'+selVal).val();
            	console.log("id..",id);
            	$('#hiddenbill1').val(id);
	            
	           
        });	
</script>

<script>
	function amountFormat(){
	
	$("input[name='billamountent']").each(function(index){
		var id = $(this).attr('id');
		var amtval = $('#'+id).val();
		//console.log(amtval+"=========="+index);
		var vall=0;
		if(amtval > vall){
			$('#'+id).val(Number(amtval).toFixed(3));
		}
	});
	}
</script>

<script>
function validateFloatKeyPress(el, evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    var number = el.value.split('.');
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    //get the carat position
    var caratPos = getSelectionStart(el);
    var dotPos = el.value.indexOf(".");
    console.log(dotPos,"dotPos");
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

<script type="text/javascript">
function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9.])/g,"");
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
  }
}
</script>
<script>
$("input:text").focus(function(){$(this).val("")});
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
