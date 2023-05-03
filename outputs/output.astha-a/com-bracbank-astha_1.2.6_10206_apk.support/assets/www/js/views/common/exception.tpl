<%
var els = new EncryptedLocalStorage('secret');
var errorcode = els.get("errorcode");
var errordesc = els.get("errdesc");
%>
<!-- <div class="ui-body ui-body-d ui-corner-all ui-shadow formcontainer"> 
		<h4><%=$.i18n.t('exception.common.unknownerror')%></h4>
</div> -->

			    <form method="post" id="loginform" name="loginform" action="#">
				       <fieldset>
								<div class="alert alert-danger text-center"> 
										<h4>
										<%if((errordesc)===null){%>
										<%-$.i18n.t('exception.common.nonetworkconnection')%>
										<%}else{%>
										<%-errordesc%>
										<%}%>
										</h4>
								</div>
							<%if((errordesc)===null){%> 
								<a href="javascript:void(0);" id="backtohome1" name="backtohome1" class="btn btn-primary btn-block"> <%-$.i18n.t('app.creditcard.ccdetails.back')%></a>
							<%}else{%>
								<%if(errorcode=="8888"){%>
									<a href="javascript:void(0);" id="back1" name="back1" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a>
								<%}else{%>
									<button type="button" id="back1" name="back1" class="btn btn-default btn-block"><%-$.i18n.t('app.creditcard.ccdetails.back')%></button>
									<!--<a href="javascript:void(0);" id="back1" name="back1" class="btn btn-default btn-block"> <%-$.i18n.t('app.creditcard.ccdetails.back')%></a>-->
								<%}%>	
							<%}%>	
						</fieldset>
			       </form>
