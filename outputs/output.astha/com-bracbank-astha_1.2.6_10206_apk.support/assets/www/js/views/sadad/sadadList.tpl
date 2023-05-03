	<%
	var els = new EncryptedLocalStorage('secret'); 
	var billcount = els.get("duebillcount");
var menuVisibilityList ='Y';//els.get("menuVisibilityList");
var sadadDueBill = 'N';//menuVisibilityList["MTC2001"].menu_status;
var sadadBillPay = 'Y';//menuVisibilityList["MTC2000"].menu_status;
var sadadOneTime = 'N';//menuVisibilityList["MTC1023"].menu_status;
var sadadManage ='Y';//menuVisibilityList["MTC2002"].menu_status;
var duebillnotify=els.get("duebillnotify");
%>
	
	
	<h3><%-$.i18n.t('app.menu.billpay')%></h3>
                  <ul class="list-group subNav">
                  	 <!--<li class="list-group-item">
                        <a href="#/addnewbill">
                           <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                           
                           <h4 class="list-group-item-heading"><%-$.i18n.t('app.sadad.managebills.addnewbills')%></h4>
                           <p class="list-group-item-text"></p> 
                        </a>
                     </li>-->
                     <%if(sadadDueBill=='Y'){%>
                     <li class="list-group-item">
                        <a href="#/duebillpay">
                           <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                          <h4 class="list-group-item-heading"><%-$.i18n.t('app.sadad.general.duebillpayment')%>
                           		<%if(duebillnotify=="0"||duebillnotify==null||duebillnotify==undefined||duebillnotify==""){%>
                           		<%}else{%>
                           				<span class="pull-right label label-primary" id="count">
                           					<%-duebillnotify%>
                           				</span>
                           		<%}%>
                           	</h4>
                           	<p class="list-group-item-text"><%-$.i18n.t('app.sadad.general.duebillpaymentDesc')%></p>
                        </a>
                     </li>
                    <% } if(sadadBillPay=='Y'){%>
                     <li class="list-group-item">
                        <a href="#/billpayInquiry">
                           <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                           
                           <h4 class="list-group-item-heading"><%-$.i18n.t('app.sadad.general.billpaymentinquiry')%></h4>
                           <p class="list-group-item-text"><%-$.i18n.t('app.sadad.general.billpaymentinquiryDesc')%></p> 
                        </a>
                     </li>
                      <% } if(sadadOneTime=='Y'){%>
                     <li class="list-group-item">
                        <a href="#/oneTimePay">
                           <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                           
                           <h4 class="list-group-item-heading"><%-$.i18n.t('app.sadad.general.onetimepayment')%></h4>
                           <p class="list-group-item-text"><%-$.i18n.t('app.sadad.general.onetimepaymentDesc')%></p>
                       </a>
                     </li>
                      <% } if(sadadManage=='Y'){%>
                     <li class="list-group-item">
                        <a href="#/managebills">
                           <span class="pull-right glyphicon glyphicon-chevron-right"></span>                          
                           <h4 class="list-group-item-heading"><%-$.i18n.t('app.sadad.general.managebills2')%></h4>
                           <p class="list-group-item-text"><%-$.i18n.t('app.sadad.general.managebillsDesc')%></p>
                         </a>
                     </li>
                     <% } %>
                  </ul>
                  <br/>
     

 <script>
    $(document).ready(function() {
		$("h4").on("click","#mnutoggle,.subnav-overlay",function(e) {
	        e.preventDefault();
	        $("#appwrapper").toggleClass("mnuactive");
	        if($("#appwrapper").hasClass("mnuactive")){
	        	$(".mainnav").after("<div class='subnav-overlay'></div>");
      		}else {
            	$(".subnav-overlay").remove();
        	}
	    });
   });
 </script>
	
