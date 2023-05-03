<%
							var els = new EncryptedLocalStorage('secret');
							var langs = $.i18n.lng();
							//var getactcode= new Array;
							var getactcode=els.get("actvcode");
							console.log("getactcode.."+getactcode);
						 	var actcodespace=getactcode[0]+" "+getactcode[1]+" "+getactcode[2]+" "+getactcode[3];
						 	console.log("actcodespace.."+actcodespace);
						 var ivrcallinitiationstatus = els.get("ivrcallinitiationstatus");
						 	var ccno=els.get("managebeneCCEditCardNo");
						 
%>
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
     <li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%></li>
</ol>
<div class="clearfix"></div>
<%if(ivrcallinitiationstatus=="0"){%>
					<div class="alert alert-info">
                               <div class="row text-center"><p class="text-success activation_btn text-center"><b><%-$.i18n.t('app.transfer.managebeneficiary.beneactivationcode')%>:</b> <b class="acticode"><%-getactcode%></b>
                              <br>  <span class="small"><%-$.i18n.t('app.creditcard.managebene.benecardno')%></span>
						   <br>
						   <b><%-ccno%></b>
						   </p></div>
                               <br>
                                <%-$.i18n.t('app.transfer.managebeneficiary.callactivemsg')%>
                               
                               <br><br>

                           <!--<p class="text-default"><strong>Note : </strong> You may also activate your beneficiary by calling SHB Call Center at +966 9200 13323</p>-->
                           		<p class=""><strong><%-$.i18n.t('app.registration.note')%></strong><%-$.i18n.t('app.transfer.managebeneficiary.notemsg')%></p><br/>
								<!--<p class="text-default"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1')%><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1no')%></p><br/>
								<p class="text-default"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg2')%><%-$.i18n.t('app.transfer.managebeneficiary.notemsg2no')%></p><br/>
								<p class="text-default"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg3')%>
								<% if(langs=='en-US'){ %>+<%}%><%- els.get('mobilenumber') %><% if(langs=='en-AR'){ %>+<%}%> </p>
                                -->
								<!--
                                <div class="alert alert-info">
                           <ul>
                         	<li>
                                  <p class="lbl"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1')%></p>
                                  <p class="text-right mobilenoArabic"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1no')%></p>
                             </li>
                             
                             <li >
                                  <p class="lbl"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg2')%></p>
                                  <p class="text-right mobilenoArabic"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1no')%></p>
                             </li>

                             <li >
                                  <p class="lbl"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg3')%></p>
                                  <p class="text-right mobilenoArabic">+<%- els.get('mobilenumber') %></p>
                             </li>
                             
                         </ul>
                     </div>
                    -->

						<div class="infoCont text-default">
                     
                         <ul>
                            <li class="ex">
                                  <p class="lbl"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1')%></p>
                                  <p class="text-right mobilenoArabicactive"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1no')%></p>
                             </li>


                          <li class="dl">
                                  <p class="lbl"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg2')%></p>
                                  <p class="text-right mobilenoArabicactive"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg2no')%></p>
                             </li>
                             <li class="al">
                                  <p class="lbl"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg3')%></p>
                                  <p class="text-right"><% if(langs=='en-US'){ %>+<%}%><%- els.get('mobilenumber') %><% if(langs=='en-AR'){ %>+<%}%></p>
                             </li>
                             
                         </ul>
                     </div>
                                </div>

                       <!--<a href="tel:8001243000" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.managebene.yes')%> </a>
                       <input type="button" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.managebene.yes')%>" onClick="calldial();">
			           <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.later')%> </a>-->
			           <a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.localtransfer.home')%></a>
			           <a href="#/creditCardPayments" class="btn btn-success btn-block"><%-$.i18n.t('app.transfer.general.maketransfer')%></a>
	<%} else if(ivrcallinitiationstatus=="1"){%>
		<div class="alert alert-success text-center">
	                        <h4><%-$.i18n.t('app.creditcard.managebene.editsuccess')%></h4>
	                        <p><%-$.i18n.t('app.creditcard.managebene.activatecall')%> :800-124-3000.</p>
						</div>

                       <!--<a href="tel:8001243000" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.managebene.yes')%> </a>-->
                       <input type="button" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.managebene.yes')%>" onClick="calldial();">
			           <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.later')%> </a>
	<%} else if(ivrcallinitiationstatus==""){%>
		<div class="alert alert-success text-center">
	                        <h4><%-$.i18n.t('app.creditcard.managebene.editsuccess')%></h4>
	                        <p><%-$.i18n.t('app.creditcard.managebene.activatecall')%> :800-124-3000.</p>
						</div>

                       <!--<a href="tel:8001243000" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.managebene.yes')%> </a>-->
                       <input type="button" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.managebene.yes')%>" onClick="calldial();">
			           <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.later')%> </a>
	<%}else{%>
		<div class="alert alert-success text-center">
	                        <h4><%-$.i18n.t('app.creditcard.managebene.editsuccess')%></h4>
	                        <p><%-$.i18n.t('app.creditcard.managebene.activatecall')%> :800-124-3000.</p>
						</div>

                       <!--<a href="tel:8001243000" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.managebene.yes')%> </a>
                       <input type="button" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.managebene.yes')%>" onClick="calldial();">-->
			           <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.later')%> </a>
					  <input type="button" id="maketransfer" class="btn btn-success btn-block" value="<%-$.i18n.t('app.transfer.general.maketransfer')%>"/>
	<%}%>
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
</script>

<script>
function calldial(){
			document.location.href = 'tel:920013323';
		}
		$(".content").animate({ scrollTop: 0 }, "fast");
</script>