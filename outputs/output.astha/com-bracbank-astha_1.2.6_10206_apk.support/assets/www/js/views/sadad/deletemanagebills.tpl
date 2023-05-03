  <a href="#/managebills" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
       <li class="active"><%-$.i18n.t('app.sadad.managebills.deletebills')%></li>
  </ol>
  <div class="clearfix"></div>
        <br/>
  <!-- Breadcrumb Ends Here -->
  <!--Step Control Starts Here-->
  <div class="newWiz">
        <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.managebills.input')%></p></div></div>
        <div class="steps "><span></span><div>2<p><%-$.i18n.t('app.sadad.managebills.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.managebills.confirm')%></p></div></div>
  </div>
  <!--Step Control Ends Here-->
  <!--One Time Billpay Starts Here-->
<form>
        <h3 class="header"><%-$.i18n.t('app.sadad.managebills.deletebills')%></h3>
             <div class="dtl_view">
                  <div class="form-group">
                            <table class="table table-bordered table-striped">
                                 <tbody>
                                 		<!--  <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.billername')%></td>
		                                      <td><%-description%></td> 
		                                  </tr>
		                                  <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.subno')%></td>
		                                      <td><%-scrbeno%></td>
		                                  </tr>
		                                   <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.nickname')%></td>
		                                      <td><%-shortName%></td>
		                                  </tr>-->
		                                   <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.billercategory')%></td>
		                                      <td><%-categoryName%></td> 
		                                  </tr>
		                               	   <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.billercompany')%></td>
		                                      <td><%-serviceName%></td>
		                                  </tr>
		                                   <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.mobilenumber')%></td>
		                                      <td><%-scrbeno%></td>
		                                  </tr>
		                                     <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.nickname')%></td>
		                                      <td><%-shortName%></td>
		                                  </tr>
		                                  </tr>
		                                     <tr>
		                                      <td><%-$.i18n.t('app.sadad.managebills.servicetype')%></td>
		                                      <td><%-connectiontype%></td>
		                                  </tr>
		                                  <input type="hidden" id="bencode" name="bencode" value="<%-bencode%>"/>
		                                  <input type="hidden" id="description" name="description" value="<%-description%>"/>
		                                  <input type="hidden" id="scrbeno" name="scrbeno" value="<%-scrbeno%>"/>
		                                  <input type="hidden" id="shortName" name="shortName" value="<%-shortName%>"/>
		                                   <input type="hidden" id="benstatus" name="benstatus" value="<%-benstatus%>"/>
                                </tbody>
                            </table>
                       </div>
                   <!-- <a id="verify" name="verify" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.managebills.submit')%></a>  -->
                   <input type="button" name="verify" id="verify" class="btn btn-danger btn-block" value="<%-$.i18n.t('app.creditcard.managebene.confirmdelete')%>" >
                   <a  href="#/managebills" id="back" name="back" class="btn btn-primary btn-block" ><%-$.i18n.t('app.sadad.managebills.cancel')%></a>
            </div>

</form>
                  <!--One time Billpay Ends Here-->
                  <br/>
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
                  
               
