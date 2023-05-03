  <%
	var els = new EncryptedLocalStorage('secret');
	var msgdetails = els.get('messagesDetails');
%>

        <a href="#/sent" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                         <!-- Breadcrumb Starts Here -->
                          <ol class="breadcrumb cust_breadcrumb pull-left">
                             <li><a href="#/messageCenter"><%-$.i18n.t('app.menu.messages')%></a></li>
                             <li class="active"><%-$.i18n.t('app.more.messagecentre.sentItems')%></li>
                          </ol>
                          <div class="clearfix"></div><br/>
						<!-- Dateline streem starts here---------------><br>
							<ul class="list-group subNav">
                               <li class="list-group-item">
                               
                               <p><strong> <%- msgdetails[0].messageSubject %></strong><span class="date_msg_ltr"><%- msgdetails[0].messageDate %></span><hr class="divider"></p>
                                    <p><%- msgdetails[0].messageText %></p><br>
                                    
          <!--                          <p><strong> <%- msgSub %></strong><hr class="divider"><%- msgDate %></p>
                                    <p><%- msgdetails[0].messageText %></p><br>		-->
                                    
                               </li>
							</ul>
                            <div class="trash text-right">
                              <div class="btn-group">
                              		<button type="button" class="btn btn-success btn-sm" id="bckBtn" style="border-radius:3px; margin-right:5px;"><span class="glyphicon glyphicon-chevron-left"></span><%-$.i18n.t('app.creditcard.ccdetails.back')%></button>
                                 	 <span>&nbsp;</span>
                              		<button type="button" class="btn btn-success btn-sm" id="compose" style="border-radius:3px; margin-right:5px;"><span class="glyphicon glyphicon-share-alt"></span><%-$.i18n.t('app.more.messagecentre.compos')%></button>
                                 	 <span>&nbsp;</span>
                                  <button type="button" class="btn btn-danger btn-sm" id="msgdel" style="border-radius:3px;"><span class="glyphicon glyphicon-trash"></span> <%-$.i18n.t('app.creditcard.managebene.delete')%></button>
                                  
                              </div>
                            </div>
                          <div class="clearfix"></div>
                          <br/>
