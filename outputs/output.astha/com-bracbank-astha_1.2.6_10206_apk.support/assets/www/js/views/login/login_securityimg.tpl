<%
	var els = new EncryptedLocalStorage('secret');
	var iOS = /iPhone|iPod/.test( navigator.userAgent );
	//iOS=true;
	var touchApp =els.get("touchAllowedForApp");
	var touchUser =els.get("touchAllowedForUser");
	var touchReg=els.get("touchIdReg");
	var bioFlag=els.get("BiometricType");
	var devicePlatform = els.get("device.platform");
	var dymanicquesflag = els.get("logindymanicquesflag");
	console.log("dymanicquesflag",dymanicquesflag);
	
%>

<script src="js/libs/security/crypto-js/md5.js"></script>

<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						<div class="panel panel-default">
		        			  		<div class="panel-heading">
		        			    		<h3 class="panel-title"><%-$.i18n.t('app.forgotpassword.secuques')%></h3>
		        			 		</div>
		        			  		<div class="panel-body">
										<form >
				                        	<fieldset>
				       
				       
				      <% if ( questionList.length > 0 ) {   %>
				       
							<div class="form-group">
						
						  		<!--<label for=""><%-$.i18n.t('app.forgotpassword.secu12')%></label>-->
						  		<!--<input type="text" autocomplete='off' id="questionList" name="questionList" value="<%-seq_question%>"  class="form-control lenthcontrolbenelocal" placeholder="" readonly />-->
						  		<input type="hidden" id="questionList" name="questionList" value="<%-seq_question%>" />
						  		
						  		<div class="form-group required">
							<div class="dropselect" data-title="<%-$.i18n.t('app.forgotpassword.secu12')%>" data-setid="OwnCreditCardDiv">
		                   			          <label class="list-group-item btn-primary active">
		                            		        <input type="radio" value="<%-seq_question%>" name="questionListval" id="questionListval"/>
		                            		        <p><span class="nme"><%-seq_question%></span></p>
		            			     		</label>
							</div>
		
 				</div>
                       <!--<div class="list-group selectHolder"><label class="list-group-item btn-primary active">
                            		        <input value="<%-seq_question%>" name="toacc" id="toacc" type="radio">
                            		        <p><span class="nme"><%-seq_question%></span></p>
            				 	 			
            			     		</label></div>-->
						  		
						  		
						  			<label><%-$.i18n.t('app.forgotpassword.secu1')%></label>
									<input type="password" autocomplete='off' id="secques" name="secques" class="form-control lenthcontrolbenelocal" maxlength="30"  placeholder="" />
									<input type="hidden" id="secquesid" name="secquesid" value="<%-seq_id%>" />
					 		</div>
					 
							<div id="secError">
								<strong><span id="showError" class="text-danger"></span></strong>
							</div>
							<div id="secErrorfirst">
								<strong><span id="showErrorfirst" class="text-danger"></span></strong>
							</div>
							<div id="secErrorlast">
								<strong><span id="showErrorlast" class="text-danger"></span></strong>
							</div>	
					
					
					<label class="small"><%-$.i18n.t('app.forgotpassword.secim')%></label>					
					<div class="media secureImg">
                      <div class="media-left">
                        <img class="img-circle" src="images/secureimages/<%-imageid%>.png">
                      </div>
                      <div class="media-body media-middle">
						<label class="checkinput small ">
                        <input type="checkbox" name="agreeeimage" id="agreeeimage" class="check-hidden" >
                          <%-imageText%>
                      	</label>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="errorimage" style="display:none">
                    	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.forgotpassword.secim1')%></font></p>
                    </div>
													            <br/>
													        <p class="small forgot">
                          <a href="javascript:void(0);" id="secureques"><%-$.i18n.t('app.login.resetsecaccess')%></a>
                        </p>
																<input type="button" class="btn btn-success btn-block submitimg" name="userlogintmp" id="userlogintmp"  value="<%-$.i18n.t('app.mpin.submit')%>" />
																 
																
																		<br/>
					<% } else { %>  
					 		<h5 style="color:white; text-align:center;"><%-$.i18n.t('app.product.loan.nodata')%></h5>
					 <% } %>

																<a href="#/backtohome" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a>	
													</fieldset>
			        			      		</form>
		        			    	</div>
        				  </div>
        			</div>
             	</div><!-- row ends here-->
        	</div>
    	</div>
  <script src="js/pollyfills/jquery.placeholder.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".check-hidden:checked").parents(".checkinput").addClass("active");
			$(".loginopt").on("change",function() {
				if($(".loginopt").attr("checked")) {
					url=$(this).attr("data-url");
					location.href=url;
				}
			});
			$('input[placeholder], textarea[placeholder]').placeholder();
			$("#questionList").prop("selectedIndex", 0);
			$(".dropselect").dropselect();
			
			
		});
	</script>
<script>  
	(function ($){
		$.fn.inputlengthbene=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
	     		var data = $(this).val();
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890~`!@#$%^&*()_+{}[]\|;:<>,./?/s";
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
			
			
			
			
			
			
			
			
	$('.lenthcontrolbenelocal').inputlengthbene();
</script>	

<script>
  $(document).ready(function()
		{
		$('html').addClass('loginbg');
		});
</script>
</body>
<script src="js/common.js"></script>


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
