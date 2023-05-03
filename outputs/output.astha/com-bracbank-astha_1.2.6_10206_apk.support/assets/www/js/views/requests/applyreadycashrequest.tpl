 <%
 var els=new EncryptedLocalStorage('secret');
 var userprofile=els.get("LoginProfile");
 var username=userprofile[0];
 var usermobile=els.get("usermobile");
 var birthdate=userprofile[8];
 var devicePlatform = els.get("device.platform");
 var rplAcct=els.get("rplAcct");
 %>
<%if(rplAcct ==""){%>
 <!--Content Starts Here-->
                  <a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.readycash.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.readycash.readycash')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.readycash.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.requests.readycash.verify')%></p></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.readycash.confirm')%></p></div></div>
                  </div>
                  <!--Step Control Ends Here-->
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
                      <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control"  id="fintype" name="fintype" readonly="readonly" value="<%-loanType[2].loanTypeDesc%>" placeholder="<%-$.i18n.t('app.requests.readycash.selectfintype')%>">
                     </div>
                     <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control" readonly="readonly" id="ename" name="ename" value="<%-username%>" placeholder="<%-$.i18n.t('app.requests.readycash.name')%>">
                     </div>
                     <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control" readonly="readonly" id="mobno" name="mobno" value="<%-usermobile%>" placeholder="<%-$.i18n.t('app.requests.readycash.mobno')%>">
                     </div>
                     <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control" readonly="readonly" id="dob" name="dob"   value="<%-birthdate%>" placeholder="<%-$.i18n.t('app.requests.readycash.dob')%>">
                     </div>
                      <div class="form-group required">
                          <select name="city" id="city"  class="form-control">
                          <option value="" selected="selected" ><%-$.i18n.t('app.requests.readycash.selectcity')%></option>
                            <% if ( cityList.length > 0 ) {%>
			        			<% _.each(cityList,function(data){ %>
			        				<p>
										<%if(typeof(data.description)!="undefined"){%>
											<option value="<%-data.description%>"><%-data.description%></option>
										<%}else{%>
											<span class="nme"></span>
										<%}%>
									</p>
								<%});%>
						   <%}%>
						   </select>
                     </div>
                     <div class="form-group required">
                           <input type="text" autocomplete='off'  class="form-control" id="employername" name="employername" maxlength="30" placeholder="<%-$.i18n.t('app.requests.readycash.employername')%>">
                      </div>
                      <% if ( devicePlatform == "Android" ) { %>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control"  maxlength="2" id="length" name="length" placeholder="<%-$.i18n.t('app.requests.readycash.lengthofservice')%>">
                      </div>
                      <div class="form-group required">                           
                           <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control"  maxlength="10" id="sal" name="sal" placeholder="<%-$.i18n.t('app.requests.readycash.grosssalary')%>">
                      </div>
                      <div class="form-group required">
                           <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control"  maxlength="20" id="amt" name="amt" placeholder="<%-$.i18n.t('app.requests.readycash.reqamt')%>">
                      </div>
                      <%}else{%>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="2" id="length" name="length" placeholder="<%-$.i18n.t('app.requests.readycash.lengthofservice')%>">
                      </div>
                      <div class="form-group required">
                           <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="10" id="sal" name="sal" placeholder="<%-$.i18n.t('app.requests.readycash.grosssalary')%>">
                      </div>
                      <div class="form-group required">
                           <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="20" id="amt" name="amt" placeholder="<%-$.i18n.t('app.requests.readycash.reqamt')%>">
                      </div>
                      <%}%>
                      <div class="form-group">
                          <label class="checkinput small active  pull-left">
                          <input type="checkbox" name="iagreee" id="iagreee" class="check-hidden" checked="checked">
                          <%-$.i18n.t('app.requests.personalfin.credithistory')%>
                        </label>
                      </div>
                      <br/>
                      <br/>
					  <div id="errorCheckBox" style="display:none">
                      		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.request.validcheckbox')%></font></p>
					  </div>

                      <div class="clearfix"></div>
                      <br/>
                       <input type="button" id="applyreadycash" name="applyreadycash" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.readycash.submit')%>"/>
                       <a href="#/servicerequest"class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.readycash.cancel')%></a>

                     </form>
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<%} else { %>
	<div class="alert alert-info alert-sm">
  			<h4><%-$.i18n.t('app.requests.readycash.sorrymsg')%></h4>
  	</div>
<%} %>
<script>
        $(function(){
            $(".dropselect").dropselect();
        });
        
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
              var iOS = /iPad|iPhone|iPod/.test( navigator.userAgent );
            var inputType=$(this).attr("inputmode");
			if(iOS && inputType == "numeric" ){ 
				var old=$(this).val();
            	$(this).val(old+String.fromCharCode(convertNumbers2EnglishLocal(e.keyCode)));
 				e.preventDefault();
            }
            // return true;
          });

        });
     };
}(jQuery));
 $('.lenthcontrol').inputlength();
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>