<script src="js/libs/common/appcommon.js"></script>

<%
var els = new EncryptedLocalStorage('secret');
var loanBookingSummaryDTO = els.get("loanBookingSummaryDTO");
console.log("loanBookingSummaryDTO",loanBookingSummaryDTO);
var iqamaNumber  = els.get("iqama_number");
var topUpAmount=els.get("topUpAmount");
var loanBookingProcessDBDTO = els.get("loanBookingProcessDBDTO");
var langs = $.i18n.lng();
%>

  	<!-- Actual content area -->
	<a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/wealth" ><%-$.i18n.t('app.notification.myoffers')%></a></li>
	    <li class="active"><%-$.i18n.t('app.product.stploan.personalfinsumtitle')%></li>
	</ol>
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
            
		               
						<h3><%-$.i18n.t('app.product.stploan.personalfinsumtitle')%></h3>
                    
                 		 <h6><b><%-$.i18n.t('app.product.stploan.custdata')%></b></h6>
                 
				   <div class="dtl_view">
					<input type="hidden" id="finamtval" value="<%-topUpAmount%>">
					<% console.log("loanBookingSummaryDTO.financedamount",loanBookingSummaryDTO.financedamount);%>
					<input type="hidden" id="purposeoffinval" value="<%-$.i18n.t('app.product.stploan.loantop')%>">
					<input type="hidden" id="fincontractperiodval" value="<%-loanBookingSummaryDTO.fincontractperiod%>">
					<input type="hidden" id="finstatus" value="<%-loanBookingSummaryDTO.status%>">
                       <table class="table table-bordered table-striped">
                      <tbody>
                      

                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.date')%></td>
                          <td><%-loanBookingSummaryDTO.fint24date%></td>
                      </tr> 
                       

                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.contactref')%></td>
                          <td><%-loanBookingSummaryDTO.finapplicfrmid%></td>
                      </tr>                      
                      
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.custname')%></td>
                          <td><%-loanBookingSummaryDTO.fincustomername%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.idiqama')%></td>
                          <td><%-iqamaNumber%></td>
                      </tr>

                     
                    </tbody></table>

                    </div>

                        <h6><b><%-$.i18n.t('app.product.stploan.persfintitle')%></b></h6>

                                               <div class="dtl_view">

                       <table class="table table-bordered table-striped">
                      <tbody>

                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.finamt')%></td>
						  <%if(topUpAmount!=null && topUpAmount !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(topUpAmount, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                        <tr>
                          <td><%-$.i18n.t('app.product.stploan.totcostfin')%></td>
						  <%if(loanBookingSummaryDTO.fintotalcost!=null && loanBookingSummaryDTO.fintotalcost !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(loanBookingSummaryDTO.fintotalcost, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.termcost')%></td>
						  <%if(loanBookingSummaryDTO.fintermcost!=null && loanBookingSummaryDTO.fintermcost !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(loanBookingSummaryDTO.fintermcost, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.mgmtfee')%></td>
						  <%if(loanBookingSummaryDTO.finmgmtfee!=null && loanBookingSummaryDTO.finmgmtfee !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(loanBookingSummaryDTO.finmgmtfee, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.insurance')%></td>
                          <td><%-loanBookingSummaryDTO.fininsurance%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.realestfee')%></td>
                          <td><%-loanBookingSummaryDTO.finappraisalfee%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.anyotherfee')%></td>
                          <td><%-loanBookingSummaryDTO.finanotherfee%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.totrepayamt')%></td>
						  <%if(loanBookingSummaryDTO.fintotrepayamt!=null && loanBookingSummaryDTO.fintotrepayamt !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(loanBookingSummaryDTO.fintotrepayamt, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                      
                      
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.totpurchase')%></td>
						  <%if(topUpAmount!=null && topUpAmount !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(topUpAmount, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.totsaleprice')%></td>
						  <%if(loanBookingSummaryDTO.fintotrepayamt!=null && loanBookingSummaryDTO.fintotrepayamt !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(loanBookingSummaryDTO.fintotrepayamt, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.profitamt')%></td>
						  <%if(loanBookingSummaryDTO.fintermcost!=null && loanBookingSummaryDTO.fintermcost !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(loanBookingSummaryDTO.fintermcost, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.apr')%></td>
                          <td><%-loanBookingSummaryDTO.finapr%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.contracttenuremonth')%></td>
                          <td><%-loanBookingSummaryDTO.fincontractperiod%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.noofinstallment')%></td>
                          <td><%-loanBookingSummaryDTO.finnoofinstalmnt%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.product.stploan.amtofinstallment')%></td>
						  <%if(loanBookingSummaryDTO.fininstalmntamt!=null && loanBookingSummaryDTO.fininstalmntamt !=""){%>
                          <td>KWD <%- checkAmount($.formatNumber(loanBookingSummaryDTO.fininstalmntamt, {format:"#,###.000", locale:"us"}))%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.firstinstallmentdue')%></td>
                          <td><%-loanBookingSummaryDTO.finfrstinstaldate%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.lastinstallmentdue')%></td>
                          <td><%-loanBookingSummaryDTO.finlastinstaldate%></td>
                      </tr>
                      
                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.addnotes')%></td>
                          <td><%-loanBookingSummaryDTO.addnotes%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.comoditytype')%></td>
                          <td><%-loanBookingSummaryDTO.fincommodityname%></td>
                      </tr>
                      
                      <tr>
                          <td><%-$.i18n.t('app.product.stploan.unitprice')%></td>
						  <%if(loanBookingSummaryDTO.finpriceperunit!=null && loanBookingSummaryDTO.finpriceperunit !=""){%>
                          <td>KWD <%-loanBookingSummaryDTO.finpriceperunit%></td>
						  <%}else{%>
						  <%}%>
                      </tr>
                      
                      
               
             </tbody></table>
                    
                    <label><%-$.i18n.t('app.product.stploan.purposefin')%></label>
                    
                    <!--<div class="form-group required">
                    
                    <select class="form-control" required>
                    	<option><%-$.i18n.t('app.product.stploan.selectpurpose')%></option>
                        <option><%-$.i18n.t('app.product.stploan.loantop')%></option>-->
						
						<!--
						<div class="form-group required">
                          <select name="selectPurposeType" id="purposetype" class="form-control">
                            <option value=""><%-$.i18n.t('app.product.stploan.selectpurpose')%></option>
                            <%  _.each(loanBookingProcessDBDTO,function(data){ %>
							<% if(langs=='en-US'){ %>
                            	<option value="<%-data.purpvalue_CODE%>" ><%-data.purpvalue_DESCEN%></option>
							<%}else{%>
							<option value="<%-data.purpvalue_CODE%>" ><%-data.purpvalue_DESCAR%></option>
							<% } %>
	            			<% }); %>
                    </select>
                    </div>
					-->
					<form>
					<div class="form-group  has-feedback required">
	                       	<select name="purposetype" id="purposetype"  class="form-control">
	                       		<option value="" selected="selected" ><%-$.i18n.t('app.product.stploan.selectpurpose')%></option>
			                       <% if ( loanBookingProcessDBDTO.length > 0 ) { %>
				                       		<% _.each(loanBookingProcessDBDTO,function(data){ %>
											<% if(langs=='en-US'){ %>
			                            				<option value="<%-data.purpvalue_CODE%>"><%-data.purpvalue_DESCEN%></option>
											<%}else{%>
														<option value="<%-data.purpvalue_CODE%>"><%-data.purpvalue_DESCAR%></option>
											<% } %>
				                    		<% }); %>
								<%}else{%>
										<h4><%-$.i18n.t('app.product.loan.nodata')%></h4>
								<%}%>	
                            </select>  	
                      </div>
                    </form>
                    
                    <div class="responsive">
                    <table class="table table-bordered  cust_table">
                                        <tbody><tr>
                                            <th colspan="2" align="center"><%-$.i18n.t('app.product.stploan.highlightfin')%></th>
                                        </tr>
                                        <tr>
                                            <td width="30%" align="center"><%-$.i18n.t('app.product.stploan.appendixpage1')%></td>
                                            <td width="70%" align="center"><%-$.i18n.t('app.product.stploan.repayschedule')%></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.articalpage2')%></td>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.implicatrdelay')%></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.articalpage1')%></td>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.earlypayment')%></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.artical7page2')%></td>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.rightwithdrawal')%></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.artical4page1')%></td>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.preceduredealing')%></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.artical7page2')%></td>
                                            <td align="center"><%-$.i18n.t('app.product.stploan.precedureexercising')%></td>
                                        </tr>
                                    </tbody></table>
                    </div>
                    
                        
                    
                    
                    <div class="form-group">
                      <label class="checkinput small pull-left">
                        <input type="checkbox" id="acceptFinCheck" class="check-hidden">
                          <%-$.i18n.t('app.product.stploan.acceptfin')%>

                      </label>
                      <br/> <br/>
             
             
                      </div>
					  
                    
                    
					  <div class="form-group">
	                        <label class="checkinput small  pull-left">
		                        <input type="checkbox" class="check-hidden" id="iagreee" name="iagreee" /><%-$.i18n.t('app.product.stploan.agreekyc')%>
		                        <a href="javascript:void(0);" id="termandcondition" name="termandcondition"><%-$.i18n.t('app.registration.termscond')%></a>
					
		                        
	                        </label>
	                      </div>
						  <br/>
						  <div class="clearfix"></div>
						  <div id="errortermscond" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.newregistration.iagreee')%></font></p>
                          </div>
<br/><br/>
                      
                  
                    
                    
<div class="alert alert-info">
									
									<ul class="small">
                                    <li><%-$.i18n.t('app.product.stploan.totpurchasefin')%></li>
                                    <li><%-$.i18n.t('app.product.stploan.totsalepricerepay')%></li>
                                    <li><%-$.i18n.t('app.product.stploan.profitamtcost')%></li>
                                    </ul>
                                    <br/>
                                    
                                    
                                    
                                     <b><%-$.i18n.t('app.registration.note')%></b> <br>
                                  
                                    <p class="small"><%-$.i18n.t('app.product.stploan.viewsumm1')%><%-$.i18n.t('app.product.stploan.viewsumm2')%><%-$.i18n.t('app.product.stploan.viewsumm3')%></p>
									
								</div>                              
                                
                                
                               
									
									<input type="button" id="personalfinancesubmitotp" name="personalfinancesubmitotp" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.chequebookreq.confirm')%>"/>
                    				<a href="#/wealth" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>
                                    <br/>
				            </div>
           
 <script>
  $(document).ready(function(){
  $("#personalfinanceresentotp").attr('disabled','disabled');
  });
  </script>          