<%
var els = new EncryptedLocalStorage('secret');
var language_id = els.get("language_id");
%> 

 <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
     <li class="active"><%-$.i18n.t('app.more.preference.changelanguage')%></li>
</ol>

<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->
<form role="form"> <br/>
	<div class="form-group text-center">
		<label><%-$.i18n.t('app.more.preference.changelanguage')%></label>&nbsp;&nbsp;
				<div class="btn-group btn-group-justified custTab" role="group">
				<% if(language_id=="en-US") {%>
				<div class="btn-group" role="group">
					<button type="button" name="options" id="changelangE" autocomplete="off" class="btn btn-default active"><%-$.i18n.t('app.more.preference.languagec')%></button>
				</div> 			   		
				<%} else {%>
				<div class="btn-group" role="group">
             		<button type="button" name="options" id="changelangE" autocomplete="off" class="btn btn-default"><%-$.i18n.t('app.more.preference.language')%></button>
				</div>					
				<%}%>
				<% if(language_id=="en-AR") {%>
				<div class="btn-group" role="group">
					<button type="button" name="options" id="changelangA" autocomplete="off" class="btn btn-default active"><%-$.i18n.t('app.more.preference.languagec')%></button>
				</div> 						
				<%} else {%>
					<div class="btn-group" role="group">
             		<button type="button" name="options" id="changelangA" autocomplete="off" class="btn btn-default"><%-$.i18n.t('app.more.preference.language')%></button>
				</div>	
						
				<%}%>
			</div>

	</div>
	<br/>
	<!--
	<a id="success" name="success" class="btn btn-success btn-block"><%-$.i18n.t('app.more.preference.submit')%></a>
	<a id="cancel" name="cancel" class="btn btn-primary btn-block" ><%-$.i18n.t('app.more.preference.cancel')%></a>
	-->
</form>
                  