<%
	var els = new EncryptedLocalStorage('secret'); 
	var billerCategories = els.get("billerCategories");
	var billercode = els.get("benebillcode");
	console.log("billercode------", billercode);
	//var categoryName =els.get("categoryName");


%>
 <a href="#/managebills" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
      <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
      <li class="active"><%-$.i18n.t('app.sadad.managebills.editbills')%></li>
 </ol>

   <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.managebills.input')%></p></div></div>
       <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.sadad.managebills.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.managebills.confirm')%></p></div></div>
  </div>
                  <!--Step Control Ends Here-->
                     <!--Step Control Ends Here-->
 <div class="dtl_view">
    <!--Verify Starts Here-->
	<form>
    <!--  <table class="table table-bordered table-striped">
	             <tbody> 
			             <tr>
			                  <td><%-$.i18n.t('app.sadad.managebills.billername')%></td>
			                  <td><%-description%></td> 
			            </tr>
			             <tr>
			                   <td><%-$.i18n.t('app.sadad.managebills.subno')%></td>
			                   <td><%-scrbeno%></td>
			            </tr>
	              </tbody>	             
	              
      </table>-->
      <div>
       <input type="hidden" id="billername" name="billername" value="<%-description%>">
	              <input type="hidden" id="scrbeno" name="scrbeno" value="<%-scrbeno%>">
      </div>
				    <!--<div class="form-group">
				        <input type="text"  class="form-control lenthcontrolnick" maxlength="20" value="<%-shortName%>" id="editnickname" name="editnickname" placeholder="<%-$.i18n.t('app.sadad.managebills.nickname')%>">
				    </div>-->
				    
				     <div class="form-group form-group-withlabel required">
								 <label for="billercategory"><%-$.i18n.t('app.sadad.managebills.billercategory')%></label>
								<!-- <select class="chosen-select form-control" id="billcate" name="billcate">
								 <option selected>
                                    <%-$.i18n.t('app.sadad.managebills.selcate')%>
                                      </option>
                                      <% _.each(billerCategories,function(data){ %>
                                      <option id="billerCategories" value="<%-data.categoryID%>~<%-data.code%>"><%-data.categoryName%></option>
                                      <%});%>
								 </select>-->
								 <input type="text" autocomplete='off'  class="form-control" id="billcate" name="billcate" value="<%-categoryName%>" disabled readonly/>
								 <input type="hidden"  id="billcatehidd"  value="<%-categoryName%>" >
                              </div>
                              <div id="errBillcate" style="display:none">
					       <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.sadad.managebills.errbillcatmsg')%></font></p>
					    </div>
                              
                              <div class="form-group form-group-withlabel required">
								 <label for="billercompany"><%-$.i18n.t('app.sadad.managebills.billercompany')%></label>
								<!-- <select class="chosen-select form-control" id="billcompany" name="billcompany">
								 <option selected>
                                    <%-$.i18n.t('app.sadad.managebills.selbillercom')%>
                                      </option>
									<option>Airtel</option>
									<option>Bsnl</option>
								 </select>-->
								 <input type="text" autocomplete='off'  class="form-control" id="billcompany" name="billcompany" value="<%-serviceName%>" disabled readonly/>
                              </div>
                              <div id="errBillcom" style="display:none">
					       <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.sadad.managebills.errbillcommsg')%></font></p>
					    </div>
                              
                              <div class="form-group form-group-withlabel required" >
					<label><%-$.i18n.t('app.sadad.managebills.custno')%></label>
  		                                <input type="text" autocomplete='off'  class="form-control" id="custno" name="custno" value="<%-scrbeno%>" disabled readonly>
                      </div>
                      
                       <div class="form-group form-group-withlabel required">
					<label><%-$.i18n.t('app.sadad.managebills.nickname')%></label>
  		                                <input type="text" autocomplete='off'  class="form-control" id="nickname" name="nickname" value="<%-shortName%>">
                      </div>
                              
                             <!-- <div class="form-group form-group-withlabel required">
								 <label for="paylater"><%-$.i18n.t('app.sadad.managebills.connectiontype')%></label>
								 <select class="chosen-select form-control" id="connectiontype" name="connectiontype">
								 <option selected>
                                    <%-$.i18n.t('app.sadad.managebills.selcontype')%>
                                      </option>
									<option>Prepaid</option>
									<option>Post</option>
								 </select>
                              </div>
                              <div id="errContype" style="display:none">
					       <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.sadad.managebills.errbillcontype')%></font></p>
					    </div>-->
					 <%if(categoryName=='Telecom'){%>
				     <div class="form-group form-group-withlabel required" id="contypeDiv" >
				         
					   <label for="connectiontype"><%-$.i18n.t('app.sadad.managebills.connectiontype')%></label>
					   
						<input type="text" autocomplete='off'  class="form-control" id="connectiontype" name="connectiontype" value="<%-connectiontype%>" disabled readonly>
                     </div>
                     <%}else{%>
                     <%}%>
                    <button type="button" id="verify" name="verify" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.managebills.submit')%></button>
                    <a href="#/managebills" class="btn btn-primary btn-block" ><%-$.i18n.t('app.sadad.managebills.cancel')%></a>
  </form>
  </div>
  <br/>
<script>
		$(document).ready(function()
		{
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
	function validateFloatKeyPress(el, evt) {
	    var charCode = (evt.which) ? evt.which : evt.keyCode;
	    var number = el.value.split('.');
	    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
	        return false;
	    }
	    //get the carat position
	    var caratPos = getSelectionStart(el);
	    var dotPos = el.value.indexOf(".");
	    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 1)){
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
	function validate(s) {
	    var rgx = /^[0-9]*\.?[0-9]*$/;
	    return s.matches(rgx);
	}
</script>
<script type="text/javascript">
function nospaces(t){
if(t.value.match(/\s/g)){
t.value=t.value.replace(/\s/g,'');
}
}
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
function b(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9A-Za-z\s])/g,"");
}
</script>
<script>
	(function ($){
	    $.fn.inputlength=function(){
	      // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
	       return this.each(function(){
	         var makelength=$(this).attr("maxlength");
	         $(this).on('keyup',function(e){
	            if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	              var values=$(this).val();
	              values=values.substring(0, values.length - 1);
	               $(this).val(values).focus();
	              e.preventDefault();
	            }
	         })
	
	       });
	    };
	}(jQuery));
	$('.lenthcontrol').inputlength();
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
</script>
<script>
function call(e) {
        if (document.getElementById('idNicName').value.length == 0) {
            if (e.keyCode == 32) {
                e.preventDefault();
            }
        }
}
</script>
<script>



</script>
