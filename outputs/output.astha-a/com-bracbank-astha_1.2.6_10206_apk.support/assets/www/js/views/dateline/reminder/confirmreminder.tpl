<%
var els = new EncryptedLocalStorage('secret');

var reminderDate = els.get("reminderDate");
var reminderDescription = els.get("reminderDescription");
%>


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
	<div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.reminders.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->
<!--Breadcrumb Ends Here-->


<form role="form">
	<div class="alert alert-success text-center"><%-$.i18n.t('app.reminders.remsuccmessage')%></div>
	<div class="dtl_view">
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
	</div>
	<button type="button" id="addMoreReminder" name="addMoreReminder" class="btn btn-success btn-block"><%-$.i18n.t('app.reminders.reminder')%></button>
	<button type="button" id="home" name="home" class="btn btn-success btn-block"><%-$.i18n.t('app.reminders.home')%></button>
</form>
<br/>
