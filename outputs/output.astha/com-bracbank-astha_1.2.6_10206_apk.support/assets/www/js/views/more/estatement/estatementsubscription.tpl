<%
var els = new EncryptedLocalStorage('secret'); 
var view=els.get("view"); 
var navigateCompaign = els.get("compaignNavigate");
%>
 
 <!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
         <% if(navigateCompaign==true) { %>
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
       <% if(emailid == '' || emailid == undefined || emailid == null) {%>
      <div class="alert alert-warning" role="alert">
               <p>To update your email id,</p><a href="#/profileUpdation" class="btn btn-primary btn-block">Click here</a>
          </div>
            <%}else{ %>
          <div class="alert alert-warning" role="alert">
               <p><%-$.i18n.t('app.more.estatement.estatementmsg1')%></p>
          </div>
          
          <div class="form-group">
     			<label class="checkinput small active pull-left">
     				<input type="checkbox" name="iagreee" id="iagreee" checked="checked" class="check-hidden"><%-$.i18n.t('app.more.estatement.estatementmsg2')%><br/> <br/><%-$.i18n.t('app.more.estatement.estatementmsg3')%> 
    	  		</label>
          		<div id="errorCheckBox" style="display:none">
               		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.estatement.checkbox')%></font></p>
	      		</div>
	     		 <br/>
	     </div>
		 <div class="row"></div>
          <a  id="subscription" name="subscription" class="btn btn-success btn-block"><%-$.i18n.t('app.more.estatement.estatementbutton')%></a>
           <% if(navigateCompaign==true) {%>
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
              
                 
