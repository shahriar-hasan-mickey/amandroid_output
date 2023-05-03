<%
	var els = new EncryptedLocalStorage('secret'); 
	var add_managebill_details = els.get("add_managebill_details");
%>

  <a href="#/addnewbill" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
      <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
   <li class="active"><%-$.i18n.t('app.sadad.managebills.addbills')%></li>
  </ol>

 <div class="clearfix"></div><br/>
 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.managebills.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.managebills.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.managebills.confirm')%></p></div></div>
  </div>
 		<div class="dtl_view">
			<form>
			       <table class="table table-bordered table-striped">
			               <tbody>
			                      <tr> 
			                          <td><%-$.i18n.t('app.sadad.managebills.billercategory')%></td>
			                          <td><%-add_managebill_details[1]%></td>
			                      </tr>
			                     
			                      <tr>
			                          <td><%-$.i18n.t('app.sadad.managebills.billercompany')%></td>
			                          <td><%-add_managebill_details[3]%></td>
			                      </tr>
			                     <!--
			                      <tr>
			                          <td><%-$.i18n.t('app.sadad.managebills.servicetype')%></td>
			                          <td></td>
			                      </tr>
			                     -->
			                      <tr>
			                          <td><%-$.i18n.t('app.sadad.onetimepay.customerno')%></td>
			                          <td><%-add_managebill_details[4]%></td>
			                      </tr>
			                     
			                      <tr>
			                          <td><%-$.i18n.t('app.sadad.managebills.nickname')%></td>
			                          <td><%-add_managebill_details[5]%></td>
			                      </tr>
			                     <% if(add_managebill_details[1] != "Vouchers"){ %>
			                     <tr>
			                          <td><%-$.i18n.t('app.sadad.managebills.connectiontype')%></td>
			                          <td><%-add_managebill_details[8]%></td>
			                      </tr>
			                      <% } %>
			              </tbody>
			       </table>
				
				<!-- <a id="submitotp" class="btn btn-success btn-block" ><%-$.i18n.t('app.sadad.managebills.confirm')%></a> -->
				<input type="button" id="submitConfirm" name="submitConfirm" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.managebills.confirm')%>" >
				<a href="#/addnewbill" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.managebills.cancel')%></a>
		</form>			
  </div><br/>
  <script>
		$(document).ready(function()
		{
			
			$('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
		});
	</script>
