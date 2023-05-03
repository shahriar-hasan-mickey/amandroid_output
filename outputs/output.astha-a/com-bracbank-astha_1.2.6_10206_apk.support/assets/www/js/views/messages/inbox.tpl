 <a href="#/messageCenter" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 
 <ol class="breadcrumb cust_breadcrumb pull-left">
                             <li><a href="#/messageCenter"><%-$.i18n.t('app.menu.messages')%></a></li>
                             <li class="active"><%-$.i18n.t('app.more.messagecentre.inbox')%></li>
                          </ol>
                          <div class="clearfix"></div>
                          <br>
                          <!-- Breadcrumb Ends Here -->
						<!-- Inbox starts here--------------->
						<div class="dateline mc-inbox">
						<% if ( messages.length > 0 ) { %>
                          <div class="pull-left">
                                  <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default btn-sm" id="selectAll">
                                        <input type="radio" name="options"><%-$.i18n.t('app.more.messagecentre.selectall')%>
                                      </label>
                                </div>
                              </div>
                              <div class="trash pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-danger btn-sm" id="msgdelete"><span class="glyphicon glyphicon-trash"></span><%-$.i18n.t('app.creditcard.managebene.delete')%></button>
                                </div>
                              </div><br /><br/>
							<ul>
									<% _.each(messages,function(data,index){ %>
		                               <li>
											<a href="#/message/<%-index%>">
		                                       <div class="d_msg">
													<p class="type">
		                                                <label class="checkinput" data="<%-data.id %>"><input type="checkbox" class="check-hidden" value="<%-data.id %>"></label>
		                                                <span class="pull-left"><%-data.userName %> <br/><span class="des"><%-data.messageSubject %></span></span>
		                                                <span class="date_msg_ltr"><%-data.messageDate %></span>
		                                            <p>
		                                    	</div>
		                                       <div class="ico"> <span class="glyphicon glyphicon-chevron-right "></span></div>
											</a>
		                               </li>
		                              <% }); %>
								</ul>
							<% } else { %>
										<div class="alert alert-info">  
					                    	<h4><%-$.i18n.t('app.more.messagecentre.messagesnull')%></h4>
					                    </div>
							<% } %>
						</div>
                          <div class="clearfix"></div>
                          <br/>

<script>
           $(function(){
           $("#msgdelete").attr("disabled", "disabled");
          /*     $('#selectAll').on('click',function(){
               		
               		if($('.checkinput').hasClass("active")) {
               			$('.checkinput').removeClass('active');
               			$('input[type="checkbox"]').prop("checked", false);
               		} else {
               			$('.checkinput').addClass('active');
               			$('input[type="checkbox"]').prop("checked", true);
               		}
               		var checkboxValue = $('.checkinput .active').attr("data");
               		alert(checkboxValue);
               });*/
            });
           
</script>
