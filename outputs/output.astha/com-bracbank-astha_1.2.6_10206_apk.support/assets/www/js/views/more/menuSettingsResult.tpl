  <%
var els = new EncryptedLocalStorage('secret');
var statusdesc =els.get("menuSettingSuccessMsg");

%> 
 
 <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
     <li class="active"><%-$.i18n.t('app.more.preference.menuSettings')%></li>
</ol>

<div class="clearfix"></div>
<br/>

<div class="alert alert-success text-center"> <%- statusdesc %> </div>


<a href="#/preference" class="btn btn-success btn-block"><%-$.i18n.t('app.more.menuSettings.backtoPreference')%></a>

<a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.transfer.localtransfer.home')%></a>