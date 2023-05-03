  <%
	var els = new EncryptedLocalStorage('secret');
	var msgdetails = els.get('messagesDetails');
%>


	 <a href="#/inbox" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                         <!-- Breadcrumb Starts Here -->
                          <ol class="breadcrumb cust_breadcrumb pull-left">
                             <li><a href="#/messageCenter"><%-$.i18n.t('app.menu.messages')%></a></li>
                             <li class="active"><%-$.i18n.t('app.more.messagecentre.inbox')%></li>
                          </ol>
                          <div class="clearfix"></div><br/>
						<!-- Dateline streem starts here--------------->
							<ul class="list-group subNav">
                               <li class="list-group-item">
                              
                                    <p><strong> <%- msgdetails[0].messageSubject %></strong><span class="date_msg_ltr"><%- msgdetails[0].messageDate %></span><hr class="divider"></p>
                                    <p ><%- msgdetails[0].messageText %></p><br>
                                    
                               </li>
							</ul>
                            <div class="trash text-right">
                              <div class="btn-group">
                                  <button type="button" class="btn btn-success btn-sm" style="border-radius:3px; margin-right:5px;" id="reply"><span class="glyphicon glyphicon-share-alt"></span><%-$.i18n.t('app.more.messagecentre.reply')%></button>
                                  <span>&nbsp;</span>
                                  <button type="button" class="btn btn-danger btn-sm" id="back" style="border-radius:3px;"><span class="glyphicon  glyphicon-chevron-left"></span><%-$.i18n.t('app.creditcard.ccdetails.back')%></button>	
                              </div>
                            </div>
                          <div class="clearfix"></div>
                          <br/>
