	<%
	var els = new EncryptedLocalStorage('secret'); 
	var billcount = els.get("duebillcount");
var menuVisibilityList =els.get("menuVisibilityList");
var requestCheckBook = menuVisibilityList["MTC3023"].menu_status;
var requestApplyPersonal = menuVisibilityList["MTC3025"].menu_status;
var requestApplyCredit =menuVisibilityList["MTC3024"].menu_status;
var requestApplyHome = menuVisibilityList["MTC3026"].menu_status;
var requestActivateDebit = menuVisibilityList["MTC3027"].menu_status;
var requestBlockDebit =menuVisibilityList["MTC3028"].menu_status;
var requestReadyCash =menuVisibilityList["MTC3029"].menu_status;
var additionalaccopening = menuVisibilityList["MTC2008"].menu_status;
var isAccountHolder=els.get("isAccountHolder");
var debitcardpos = menuVisibilityList["MTC2017"].menu_status;
var creditcardctrl = 'Y';//menuVisibilityList["MTC6016"].menu_status;
%>
<!--Content Starts Here-->
<!--
<a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  
                  
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.personalfin.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.debitcardpos.managedcacc')%></li>
                  </ol>
 -->                  
               

                    <div class="clearfix"></div>
                    <br/>
					<h3><%-$.i18n.t('app.requests.debitcardpos.managecreditcard')%></h3><br/>
                         <ul class="list-group subNav">
						 <%if(creditcardctrl =='Y'){%>
						  <li class="list-group-item">
                         <a href="#/creditCardusagecontrolrequest">
                            <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                            <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.ccusagectrl')%></h4>
                            <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.manageccusage')%></p>
                         </a>
                      </li>
                        
						<% }%>
						 
                     </ul>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>