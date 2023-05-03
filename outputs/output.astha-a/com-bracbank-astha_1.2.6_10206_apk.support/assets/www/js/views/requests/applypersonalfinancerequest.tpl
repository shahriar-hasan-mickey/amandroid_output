  <%
 var els=new EncryptedLocalStorage('secret');
 var userprofile=els.get("LoginProfile");
 var username=userprofile[0];
 var usermobile=els.get("usermobile");
 var devicePlatform = els.get("device.platform");
 var birthdate=els.get("birthdate");
 var cancelfromcampaign=els.get("cancelfromcampaign");
 var campaigntype=els.get("campaigntype");
 var campsummarycount= els.get("campsummarycount");
 var totalCampign=els.get("totalCampign");
 %>
 
 <!--Content Starts Here-->              
                 
 <%if(campaigntype!='NEWPL'){%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.personalfin.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.personalfin.personalfin')%></li>
                  </ol>
                   <%}else{%>
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.personalfin.personalfin')%></li>
                  </ol>
                   <%}%>
                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.personalfin.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.requests.personalfin.verify')%></p></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.personalfin.confirm')%></p></div></div>
                  </div>
                  <!--Step Control Ends Here-->
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
                        <!--<div class="form-group required">
                        <select name="fintype" id="fintype" class="form-control">
                        <option value="" selected="selected"><%-$.i18n.t('app.requests.personalfin.selectfintype')%></option>
                        	<% if ( loanType.length > 0 ) {%>
			        			<% _.each(loanType,function(data){ %>
			        				<p>
										<%if(typeof(data.loanTypeDesc)!="undefined"){%>
										 
										 <%if(data.loanTypeCode=='002'){ %>
										  	<option  value="<%-data.loanTypeDesc%>" selected><%-data.loanTypeDesc%></option>
										<%}else{%>
											<option  value="<%-data.loanTypeDesc%>"><%-data.loanTypeDesc%></option>
										<%}%>
											
										<%}else{%>
											<span class="nme"></span>
										<%}%>
									</p>
						        <%});%>
					        <%}%>
					       </select>
                     </div>-->
                     <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control" id="fintype" name="fintype"  readonly="readonly"  value="<%-loanType[1].loanTypeDesc%>" placeholder="<%-$.i18n.t('app.requests.personalfin.selectfintype')%>">
                     </div>
                   <div class="form-group">
                    <% if(( campaigntype=="TOPUPPL")||( campaigntype=="NEWPL")){%>
                          <select name="applyfor" id="applyfor" class="form-control" disabled>
                          <option value="" selected="selected"><%-$.i18n.t('app.requests.personalfin.applyfor')%></option>
                            <% if ( loanApplyFor.length > 0 ) {%>
			        			<% _.each(loanApplyFor,function(data){ %>
			        				<p>
			        				<%if(typeof(data.applyforDesc)!="undefined"){%>
			        				<% if( campaigntype=="TOPUPPL"){%>
			        				 	<% if( data.applyforCode=="TOPUP"){%>
											<option value="<%-data.applyforDesc%>~<%-data.applyforCode%>"selected><%-data.applyforDesc%></option>
										<%}%>
									<%} else if( campaigntype=="NEWPL"){%>
										<% if( data.applyforCode=="NEW"){%>
											<option value="<%-data.applyforDesc%>~<%-data.applyforCode%>"selected><%-data.applyforDesc%></option>
										<%}%>
									<%}%>
											<option value="<%-data.applyforDesc%>~<%-data.applyforCode%>"><%-data.applyforDesc%></option>
									<%}%>	
									</p>
						        <%});%>
					        <%}%>
					        </select>
					        <%}else{ %>
					        <select name="applyfor" id="applyfor" class="form-control" >
                          <option value="" selected="selected"><%-$.i18n.t('app.requests.personalfin.applyfor')%></option>
                            <% if ( loanApplyFor.length > 0 ) {%>
			        			<% _.each(loanApplyFor,function(data){ %>
			        				<p>
											<option value="<%-data.applyforDesc%>~<%-data.applyforCode%>"><%-data.applyforDesc%></option>
									</p>
						        <%});%>
					        <%}%>
					        </select>
					        <%}%>
                     </div>

                     <div class="form-group">
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolbeneempp" id="ename" name="ename" readonly="readonly"   value="<%-username%>" placeholder="<%-$.i18n.t('app.requests.personalfin.name')%>">
                     </div>
                     <div class="form-group">
                           <input class="form-control" autocomplete='off'  id="mobno" name="mobno" readonly="readonly"  value="<%-usermobile%>" placeholder="<%-$.i18n.t('app.requests.personalfin.mobno')%>">
                     </div>
                     <div class="form-group required">
                           <input class="form-control" id="dob" autocomplete='off'  name="dob" readonly="readonly" value="<%-birthdate%>" placeholder="<%-$.i18n.t('app.requests.personalfin.dob')%>">
                     </div>
                      <div class="form-group required">
                          <select name="city" id="city"  class="form-control">
                          <option value="" selected="selected"><%-$.i18n.t('app.requests.personalfin.city')%></option>
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
                           <input type="text" autocomplete='off'  class="form-control lenthcontrolbeneemp" id="employername" name="employername" maxlength="35" placeholder="<%-$.i18n.t('app.requests.personalfin.employername')%>">
                      </div>
                      <% if ( devicePlatform == "Android" ) { %>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="2" id="length" name="length" placeholder="<%-$.i18n.t('app.requests.personalfin.lengthofservice')%>">
                      </div>
                      <div class="form-group required">                          
                           <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="15" id="sal" name="sal" placeholder="<%-$.i18n.t('app.requests.personalfin.grosssalary')%>">
                      </div>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="15" id="amt" name="amt" placeholder="<%-$.i18n.t('app.requests.personalfin.reqamt')%>">
                      </div>
                      <%}else{%>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="2" id="length" name="length" placeholder="<%-$.i18n.t('app.requests.personalfin.lengthofservice')%>">
                      </div>
                      <div class="form-group required">                          
                           <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="15" id="sal" name="sal" placeholder="<%-$.i18n.t('app.requests.personalfin.grosssalary')%>">
                      </div>
                      <div class="form-group required">
                            <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="15" id="amt" name="amt" placeholder="<%-$.i18n.t('app.requests.personalfin.reqamt')%>">
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
                       <input type="button" id="applypersonalfinance" name="applypersonalfinance" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.personalfin.submit')%>"/>
                       <% if ( cancelfromcampaign == "2" ) { %>
                         	<% if ( campsummarycount == "1" ||  totalCampign== "1") { %>
                         		<a href="#/wealth" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.readycash.cancel')%></a>
                         	<%}else {%>
                         	 	<a href="#/campaignsummary" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.readycash.cancel')%></a>
                         	 <%}%>
					   <%}else {%>
                       		<a href="#/servicerequest"class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.personalfin.cancel')%></a>
                       <%}%>
                      <input type="button" id="applypersonalfinancecalc" name="applypersonalfinancecalc" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.personalfin.fincalc')%>"/>
                      </br>
                   <% if( campaigntype=="NEWPL"){%>   
                       <div class="alert alert-info">
                   			<span class="msg"><%-$.i18n.t('app.requests.personalfin.disclaimer')%></span>
						</div>
					<%}%>
					</form>
					
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
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
             $(this).val($(this).val().replace(/([^0-9])/g,""));
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

<script>
(function ($){
     $.fn.inputlengthempp=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
           $(this).val($(this).val().replace(/([^A-Za-z])/g,""));
         // $(this).val($(this).val().toUpperCase());
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontrolempp').inputlengthempp();
</script>

<script>
(function ($){
     $.fn.inputlengthname=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
           $(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
         // $(this).val($(this).val().toUpperCase());
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontrolname').inputlengthname();
</script>
<script>  
	(function ($){
		$.fn.inputlengthbeneemp=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
					//$(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
					
					var notallowed ="!@#$%^&*()_+=-{};:\"?><|\/,'[].";
					var notallowednumber ="0123456789";
					var orignalValue=$(this).val();
					for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
					 		if(notallowed.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
					 for (var i=0;i<= 1;i++){
						var atchar = orignalValue[i];
					 		if(notallowednumber.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
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
	$('.lenthcontrolbeneemp').inputlengthbeneemp();
	
</script>