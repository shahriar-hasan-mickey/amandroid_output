<%
var els = new EncryptedLocalStorage('secret'); 
var view=els.get("view");
var langchange = els.get('lang_id'); 
var emailid = els.get("emailid");
var navigateCompaign = els.get("actionFlgMore");
console.log(navigateCompaign);
function IsValidEmail(email) {
            var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            return expr.test(email);
}
%>
 
 <!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
      <% if(navigateCompaign=="Y") { %>
                  <a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
         <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
          <%}else{ %>
       <% if(view=="List") {%>
       	 <a href="#/listview" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
      	 <li><a href="#/listview"><%-$.i18n.t('app.more.general.title')%></a></li>
    <%}else{%>
        <a href="#/gridview" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
     	<li><a href="#/gridview"><%-$.i18n.t('app.more.general.title')%></a></li>
    <%}%>
    <%}%>
       <li class="active"><%-$.i18n.t('app.more.general.viewestatement')%></li>
    </ol>
        <div class="clearfix"></div>
        <br/>
		<h3><%-$.i18n.t('app.more.general.viewestatement')%></h3>
<!-- Breadcrumb Ends Here -->
     
     <div class="newWiz">
	      <div class="steps done"><div>1 <p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
	      <div class="steps "><span></span><div>2<p><%-$.i18n.t('app.more.preference.verify')%></p></div></div>
	      <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p> </div></div>
	 </div>
             
 <!--Content Starts Here-->
     <form role="form">
        <%
         if((!IsValidEmail(emailid)) || (emailid == '' || emailid == undefined || emailid == null)){
        %>
      
          <div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.more.estatement.estamentupdateprofile2')%></span>
			    </div>
		<a href="#/profileUpdation" class="btn btn-success btn-sm  btn-block"><%-$.i18n.t('app.more.preference.profileupdation')%></a>
            <%}else{ %>
          <div class="alert alert-warning" role="alert">
               <p><%-$.i18n.t('app.more.estatement.estatementmsg1')%></p>
          </div>
          
          <div class="form-group">
     			<label class="checkinput small active pull-left">
     				<input type="checkbox" name="iagreee" id="iagreee" checked="checked" class="check-hidden"><%-$.i18n.t('app.more.estatement.estatementmsg21')%>&nbsp;<b><u><a href="javascript:void(0);" id="termandcondition" name="termandcondition"><%-$.i18n.t('app.more.estatement.estatementmsg211')%></a></u></b><% if(langchange != 'en-US'){ %><%-$.i18n.t('app.more.estatement.estatementmsg2111')%><% } %><br/> <!--<br/><%-$.i18n.t('app.more.estatement.estatementmsg31')%><br/> <br/><%-$.i18n.t('app.more.estatement.estatementmsg311')%> -->
    	  		</label>
          		<div id="errorCheckBox" style="display:none">
               		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.estatement.checkbox')%></font></p>
	      		</div>
	     		 <br/>
	     </div>
	     <br/><br/>
	     <div class="alert alert-info" role="alert">
                       			<b><u><%-$.i18n.t('app.tedallalrewards.note')%></u></b> <%-$.i18n.t('app.more.estatement.readestatmentsub')%>
        </div>
		 <div class="row"></div>
          <a  id="subscription" name="subscription" class="btn btn-success btn-block"><%-$.i18n.t('app.more.estatement.estatementbutton')%></a>
          <% if(navigateCompaign=="Y") {%>
               <a id="compaignNav" class="btn btn-primary btn-block"><%-$.i18n.t('app.more.estatement.cancel')%></a>
         <%}else{%>
          <% if(view=="List") {%>
            	<a href="#/listview" class="btn btn-primary btn-block"><%-$.i18n.t('app.more.estatement.cancel')%></a>
    	  <%}else{%>
     			<a href="#/gridview" class="btn btn-primary btn-block"><%-$.i18n.t('app.more.estatement.cancel')%></a>
    	  <%}%>
         
         <%}%>
          <%}%>
      </form>
<!--Content Ends Here-->
              
                 
