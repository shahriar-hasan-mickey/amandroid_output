<%
			var els = new EncryptedLocalStorage('secret'); 			
			var messageInbox = els.get("messageInbox");
			var messageSub = els.get("msgSub");
			 
			 
%>   



                        <a href="#/messageCenter" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                         
                          <ol class="breadcrumb cust_breadcrumb pull-left">
                             <li><a href="#/messageCenter"><%-$.i18n.t('app.menu.messages')%></a></li>
                             <li class="active"><%-$.i18n.t('app.more.messagecentre.compos')%></li>
                          </ol>
                          <div class="clearfix"></div>
                          <br>
                         
						 <!-- Compose starts here--------------->
                           <form >
        <!--                        <p class="alert alert-warning">Field marked with an asterisk ( <b class="text-danger">*</b> ) are mandatory<br>
                                Please select / enter the input details</p>				-->
                                
                            <% if(profileName != null || profileName != '' || profileName != undefined){ %>
                                 <div class="form-group required">
                                    <select name="" id="sender" class="form-control">
                                      <option value="-1" selected="selected"><%-profileName%></option>
                                    </select>
                                </div>
                            <% } else { %>
                            	<div class="alert alert-info">
									<span class="msg"><h4><%-$.i18n.t('app.product.loan.nodata')%></h4></span>
								</div>
							<% } %>
                                
                                <div class="form-group required">
                                    <select name="" id="recipient" class="form-control">
                  <!--                    <option value="-1" selected="selected"><%-$.i18n.t('app.product.general.statementto')%></option>		-->
                                      <% _.each(messageSubject,function(data){ %>
                                      	<option value="<%-data.id%>"><%-data.description%></option>
                                       <% }); %>
                                    </select>
                                </div>
                                <div id="errrecp" style="display:none">
                        			<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.messages.recipientnotnull')%></font></p>
                        		</div>
                                
                                <div class="form-group required">
                                 <% if ( messageInbox == "messageInbox" ) { %>
                                    <input type="text"  autocomplete='off'  class="form-control" placeholder="<%-$.i18n.t('app.messages.subject')%>" value="<%-messageSub%>" id="subject">
                                 <%}else{%>   
                                    <input type="text"  autocomplete='off'  class="form-control" placeholder="<%-$.i18n.t('app.messages.subject')%>" value="" id="subject">
                                 <%}%>
                                </div>
                                <div id="errsub" style="display:none">
                        			<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.messages.messageSubjectnotnull')%></font></p>
                        		</div>
                        		
                                <div class="form-group required">
                                    <textarea cols="5" class="form-control" id="message" rows="5" maxlength="1000" placeholder="<%-$.i18n.t('app.more.messagecentre.msg')%>"></textarea>
                                </div>
                                
                                <div id="errmsg" style="display:none">
                        			<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.messages.messagenotnull')%></font></p>
                        		</div>
                        		
                        		<div class="form-group">
                                    <p id='count' style='text-align:right'></p>
                                </div>
                                
        <!--                        <div class="form-group">
                                    <input type="file" class="form-control" id="attach">
                                </div>				-->
                                
                                <a class="btn btn-success btn-block" id="composeForm"><%-$.i18n.t('app.product.general.send')%></a>
                                <a href="#/messageCenter" class="btn btn-primary btn-block"><%-$.i18n.t('app.product.general.cancel')%></a>
                           </form>
                          <div class="clearfix"></div>
                          <br/>
					
				
         <script>
         $(document).ready(function() {
        
        $("#message").keyup(function(){
  			$("#count").text("" + (1000 - $(this).val().length)+ " <%-$.i18n.t('app.notification.remin')%> ");
		});
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
