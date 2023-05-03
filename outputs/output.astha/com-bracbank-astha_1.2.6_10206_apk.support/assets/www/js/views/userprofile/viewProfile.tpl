<script src="js/libs/common/appcommon.js"></script>

<%
var els = new EncryptedLocalStorage('secret');
var access_token = els.get("access_token");
var appurl = els.get('app.context.path');

%>

  	<!-- Actual content area -->
	<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/preference" ><%-$.i18n.t('app.more.preference.preference')%></a></li>
	    <li class="active"><%-$.i18n.t('app.more.preference.customerprofile')%></li>
	</ol>
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
	
	<div class="userInfo">
	<% if(profileImg == "" && profileImg == null && profileImg == undefined){ %>
		<a href="javascript:void(0);"><img src="images/common/user_default.png" alt="user"></a>	
	<% }else{%>
		<%if(profileImg.length>1){%>
		 	<a href="javascript:void(0);"><img src="<%-appurl%>user/getProfileImage?access_token=<%-access_token%>&profileImageName=<%-profileImg%>" alt="user" width="75" height="75"/></a>
		<% }else{%>		
		<a href="javascript:void(0);"><img src="images/common/user_default.png" alt="user"></a>
		<%}%>
	<%}%>
	</div><br/>
	
	<div class="alert alert-warning" style="padding:7px;">
	<p><%-firstName%></p>
	<p><%-address1%></p>
	<p><%-address2%></p>
	<p><%-address3%></p>
	</div><br/>
            <div class="panel panel-default cust_panel hilit_panel">
		               <div class="panel-heading " id="account" data-toggle="collapse" data-target="#beneficiary">
		                   <p class="panel-title small"><span class="glyphicon glyphicon-chevron-down"></span>&nbsp;  
						    	<%-$.i18n.t('app.more.preference.customerprofile')%>
		                   </p>
		               </div>
						<div id="beneficiary" class="collapsePanel panel-collapse collapse in">
						
				            <div class="panel-body detailsStmt">
				                <ul class="list-group">
				                
				                     
                                     
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.mobilenumber')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(primaryMobileNumber)!="undefined"){%>
							               				<%-primaryMobileNumber%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.mobileoper')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(mobileServiceProvider)!="undefined"){%>
							               				<%-mobileServiceProvider%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.emailidd')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(primaryEmailAddress)!="undefined"){%>
							               				<%-primaryEmailAddress%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.dobb')%>
						               			</small>
						               			</br>
						               			<span class="pull-right date_ltr">
							               			<%if(typeof(dateOfBirth)!="undefined"){%>
							               				<%-dateOfBirth%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.genderr')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(gender)!="undefined"){%>
							               				<%-gender%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.custidd')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(cifNumber)!="undefined"){%>
							               				<%-cifNumber%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.civilidd')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(idValue)!="undefined"){%>
							               				<%-idValue%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.usernameidd')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(userId)!="undefined"){%>
							               				<%-userId%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>	
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.seggment')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(description)!="undefined"){%>
							               				<%-description%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.branchh')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(branchCode)!="undefined"){%>
							               				<%-branchCode%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.more.preference.branchaddresss')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(branchDescription)!="undefined"){%>
							               				<%-branchDescription%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>	
					                
				             </ul>
				            </div>
			       </div>
           </div>
           <br/>
           <div class="alert alert-warning" style="padding:7px;">
           <p>RMDetails</p>
           <p><%-rmName%></p>
           <p><%-rmMailID%></p>
           </div><br/>
           
           
<script>
/*$(document).ready(function() {
	$(".collapsed").removeClass();
	$("div").removeClass("intro");
});	*/	
</script>
