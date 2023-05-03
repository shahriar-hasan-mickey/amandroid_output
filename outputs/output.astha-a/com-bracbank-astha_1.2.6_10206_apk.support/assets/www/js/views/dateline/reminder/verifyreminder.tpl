<%
var els = new EncryptedLocalStorage('secret');

var reminderDate = els.get("reminderDate");
var reminderDescription = els.get("reminderDescription");

%>


<a href="#/addreminder" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/dateline"><%-$.i18n.t('app.menu.dateline')%></a></li>
	<li class="active"><%-$.i18n.t('app.reminders.addreminder')%></li>
</ol>
<div class="clearfix"></div>
<br/>

<!--Step Control Starts Here-->
<div class="newWiz">
		<div class="steps done"><div>1<p><%-$.i18n.t('app.reminders.input')%></p></div></div>
		<div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.reminders.verify')%></P></div></div>
		<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.reminders.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->
<!--Breadcrumb Ends Here-->


<div class="dtl_view">
		<form role="form">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th colspan="2"><%-$.i18n.t('app.reminders.remdetails')%></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><%-$.i18n.t('app.reminders.remdate')%></td>
							<td><%-reminderDate%></td>
						</tr>
						<tr>
							<td><%-$.i18n.t('app.reminders.remdesc')%></td>
							<td><%-reminderDescription%></td>
						</tr>
					</tbody>
				</table>
				<button type="button" id="confirmreminder" name="confirmreminder" class="btn btn-success btn-block"><%-$.i18n.t('app.reminders.confirm')%></button>
				<button type="button" id="cancelreminder" name="cancelreminder" class="btn btn-primary btn-block"><%-$.i18n.t('app.reminders.cancel')%></button>
		</form>
</div>
<br/>