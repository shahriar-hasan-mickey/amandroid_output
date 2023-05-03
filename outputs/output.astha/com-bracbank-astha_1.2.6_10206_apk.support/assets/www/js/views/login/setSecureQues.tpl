<div class="pagewrapper">
	<nav class="clearfix">
		<ol class="cd-breadcrumb triangle custom-icons">
			<li class="current"><a href="javascript:void(0);"><span class="clr">1</span> <%-$.i18n.t('app.login.securequeslabel')%></a></li>
			<li><a href="javascript:void(0);"><span class="clr">2</span></a></li>
		</ol>
	</nav>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
            	<br/>
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
							<!--<div class="alert alert-info small">
					      		<ul class="list-unstyled checkstyle">
                          			<li class="list-group-item list-group-item-heading"><%-$.i18n.t('app.login.securequestipheader')%></li>
                          			<li class="list-group-item">Details will be provided by the bank</li>
                        		</ul>
                      		</div>-->
                      		<div class="form-group">
				              <label class="check-label">
				                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="secureQuesTandCPopup">Terms and Conditions</a>
				                <span class="checkmark1"></span>
				              </label>
				              </div>
				               <div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
							</div>
							<a href="javascript:void(0);" id="continue" class="btn btn-primary btn-block"><%-$.i18n.t('button.registration.continue')%></a>
							<a href="javascript:void(0);" id="cancel" class="btn btn-default btn-block"><%-$.i18n.t('button.login.cancel')%></a>
						</form>
					</div>
				</div>				
			</section>
			<div id="termsAndCondPopup"></div>
		</div>
	</div>
</div>
<script>
	 $(document).ready(function() {
		$(".dropselect").dropselect();    
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
