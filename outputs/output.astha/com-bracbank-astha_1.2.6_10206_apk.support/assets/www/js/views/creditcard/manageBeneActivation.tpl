						<%
							var els = new EncryptedLocalStorage('secret');
							var langs = $.i18n.lng();
							//var getactcode= new Array;
							var getactcode=els.get("actvcode");
							console.log("getactcode.."+getactcode);
						 	var actcodespace=getactcode[0]+" "+getactcode[1]+" "+getactcode[2]+" "+getactcode[3];
						 	console.log("actcodespace.."+actcodespace);
						 	benAcctno=els.get("clracctNumber");
						%>
						<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
							<li><a href="#/manageBeneficiaryCreditCard"><%-$.i18n.t('app.creditcard.managebene.managebene')%></a></li>
							<li class="active"><%-$.i18n.t('app.transfer.managebeneficiary.activation')%></li>
						</ol>
						<br/><br/><br/><br/>
						<div class="dtl_view">
							<!--confirm Starts Here-->
							<form role="form">
								<div class="alert alert-info">
                               <div class="row text-center"><p class="text-success activation_btn text-center"><b><%-$.i18n.t('app.transfer.managebeneficiary.beneactivationcode')%>:</b> <b class="acticode"><%-getactcode%></b>
                               <br>  <span class="small"><%-$.i18n.t('app.creditcard.managebene.benecardno')%></span>
						   <br>
						   <b><%-benAcctno%></b>
						   </p></div>
                               <br>
                                <%-$.i18n.t('app.transfer.managebeneficiary.callactivemsg')%>
                               
                               </br></br>

                           <!--<p class="text-default"><strong>Note : </strong> You may also activate your beneficiary by calling SHB Call Center at +966 9200 13323</p>-->
                           		<p class=""><strong><%-$.i18n.t('app.registration.note')%></strong><%-$.i18n.t('app.transfer.managebeneficiary.notemsg')%></p><br/>
								<!--<p class="text-default"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1')%><%-$.i18n.t('app.transfer.managebeneficiary.notemsg1no')%></p><br/>
								<p class="text-default"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg2')%><%-$.i18n.t('app.transfer.managebeneficiary.notemsg2no')%></p><br/>
								<p class="text-default"><%-$.i18n.t('app.transfer.managebeneficiary.notemsg3')%>
								<% if(langs=='en-US'){ %>+<%}%><%- els.get('mobilenumber') %><% if(langs=='en-AR'){ %>+<%}%> </p>-->
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
                                
                                <a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.localtransfer.home')%></a>
                                <input type="button" id="maketransfer" class="btn btn-success btn-block" value="<%-$.i18n.t('app.transfer.general.maketransfer')%>"/>
                                <br/>
							</form>  
						</div>
					
	
	<script>
function calldial(){
			//document.location.href = 'tel:+1-8001243000';
			document.location.href = 'tel:920013323';
		}
</script>