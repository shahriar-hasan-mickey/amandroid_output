   <%
			var els = new EncryptedLocalStorage('secret'); 
			var acc = els.get("acc"); 
	var ref = els.get("ref");
	var colbranch = els.get("colbranch");
	var leavesno = els.get("leavesno");
	var cheqbookno = els.get("cheqbookno");
			%>       
 
 <!--Content Starts Here-->
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.chequebookreq.cheqbookcancelreq')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.chequebookreq.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <div class="alert alert-success text-center" role="alert">
                     <p><%-$.i18n.t('app.requests.chequebookreq.cancheqsuccess')%> <b><%-referenceNo%></b></p>
                     </div>
			    </form>
                    
                 <!--   <p><%-$.i18n.t('app.product.accounts.accountnumber')%></p>
                     <p class="type cust_type"><%-acc%></p>   
                   
                    <p><%-$.i18n.t('app.transfer.standinginstruction.refno')%></p>
                     <p class="type cust_type"><%-ref%></p>	
                    						
                   <p><%-$.i18n.t('app.requests.chequebookreq.collectbranch')%></p>
                     <p class="type cust_type"><%-colbranch%></p>	
                     						
                  <p><%-$.i18n.t('app.requests.chequebookreq.nosofleaves')%></p>
                     <p class="type cust_type"><%-leavesno%></p>		
                     							
                   <p><%-$.i18n.t('app.requests.chequebookreq.noofchequebook')%></p>
                     <p class="type cust_type"><%-cheqbookno%></p>-->
                     
                     <div class="form-group">
                            <table class="table table-bordered table-striped">
                                 <tbody>
                                 		
		                                   <tr>
		                                      <td><%-$.i18n.t('app.product.accounts.accountnumber')%></td>
		                                      <td><%-acc%></td> 
		                                  </tr>
		                               	   <tr>
		                                      <td><%-$.i18n.t('app.transfer.standinginstruction.refno')%></td>
		                                      <td><%-ref%></td>
		                                  </tr>
		                                   <tr>
		                                      <td><%-$.i18n.t('app.requests.chequebookreq.collectbranch')%></td>
		                                      <td><%-colbranch%></td>
		                                  </tr>
		                                     <tr>
		                                      <td><%-$.i18n.t('app.requests.chequebookreq.nosofleaves')%></td>
		                                      <td><%-leavesno%></td>
		                                  </tr>
		                                  </tr>
		                                     <tr>
		                                      <td><%-$.i18n.t('app.requests.chequebookreq.noofchequebook')%></td>
		                                      <td><%-cheqbookno%></td>
		                                  </tr>
		                                  
                                </tbody>
                            </table>
                       </div>
                  
					</div>
					<br/>
				<a href="#/servicerequestmenu" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.chequebookreq.requestnewbook')%></a>
				 <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.chequebookreq.home')%></a>
                 
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
 <!--Content Ends Here-->
 <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>