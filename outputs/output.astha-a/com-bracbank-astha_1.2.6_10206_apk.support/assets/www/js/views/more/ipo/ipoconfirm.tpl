<%
 	var els=new EncryptedLocalStorage('secret');
	var sharespersubscriber=els.get("sharespersubscriber");
	var accfrm=els.get("accfrm");
	var iponame=els.get("iponame");
    var shareamtval=els.get("shareamtval");
    var noofshares= els.get("noofshares");
    var shareprice= els.get("shareprice");
    var minimum=els.get("minimum");
    var maximum=els.get("maximum");
    var startdate=els.get("startdate");
    var enddate= els.get("enddate");
    var relationship=els.get("relationship");
    var relname=els.get("relname");
    var BillerLists=els.get("BillerLists"); 
    var ipoDependentListDTO=els.get("ipoDependentListDTO");
%>
<a href="#/iposubscription" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
       		<li><a href="#/ipo"><%-$.i18n.t('app.more.general.ipo')%></a></li>
       		<li class="active"><%-$.i18n.t('app.more.investmentipo.iposubscription')%></li>
    </ol>
        <div class="clearfix"></div>
<!-- Breadcrumb Ends Here -->
	
<!--Step Control Starts Here-->
          <div class="newWiz">
          <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.homefinance.input')%></p></div></div>
          <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.requests.homefinance.verify')%></p></div></div>
          <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.homefinance.confirm')%></p></div></div>
          </div>
<!--Step Control Ends Here-->
                  
<!--Content Starts Here-->
     <form role="form">
            <h6><b><%-$.i18n.t('app.more.investmentipo.ipodetails')%></b></h6>

              <div class="dtl_view">

                <table class="table table-bordered table-striped">
                  <tbody>

                   <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.iponame1')%></td>
                      <td><%-iponame%></td>
                  </tr>
                   <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.noofshares')%></td>
                      <td><%-noofshares%></td>
                  </tr>

                  <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.shareprice')%></td>
                      <td><%-shareprice%></td>
                  </tr>
                  <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.minimum')%></td>
                      <td><%-minimum%></td>
                  </tr>
                  <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.maximum')%></td>
                      <td><%-maximum%></td>
                  </tr>
                 <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.startdate')%></td>
                      <td><%-startdate%></td>
                  </tr>
                 <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.enddate')%></td>
                      <td><%-enddate%></td>
                  </tr>

                </tbody>
              </table>

            </div>
         
 	   
         <h6><b><%-$.i18n.t('app.more.investmentipo.accinfo')%></b></h6>

                  <div class="dtl_view">

                     <table class="table table-bordered table-striped">
                     	<tbody>

	                       <tr>
	                          <td><%-$.i18n.t('app.more.investmentipo.frmacc')%></td>
	                          <td><%-accfrm%></td>
	                      </tr>
	                       <tr>
	                          <td><%-$.i18n.t('app.more.investmentipo.sharespersubscriber')%></td>
	                          <td><%-sharespersubscriber%></td>
	                      </tr>
	
	                      <tr>
	                          <td><%-$.i18n.t('app.more.investmentipo.shareamtval')%></td>
	                          <td><%-shareamtval%></td>
	                      </tr>

                 		</tbody>
             		 </table>

             </div>

          <h6><b><%-$.i18n.t('app.more.investmentipo.listofdep')%></b></h6>

            <table class="table cust_table">
                  <thead>
	                  <tr>
	                    <th width="70%"><%-$.i18n.t('app.more.investmentipo.name')%></th>
	                    <th width="30%"><%-$.i18n.t('app.more.investmentipo.relationship')%></th>
	                  </tr>
                  </thead>
                  <tbody>
	                  <% if ((ipoDependentListDTO!="") &&(ipoDependentListDTO!=null)) { %>
					        <% _.each(ipoDependentListDTO,function(data){ %>
						        <tr>
				                    <td><%-data.dependtName%></td>
				                    <td><%-data.relationship%></td>
			                    </tr>
		                    <% });%>
		              <% }else{ %>
			               		<tr>
					           		<td><span class="msg"><%-$.i18n.t('app.more.investmentipo.noresult')%></span></td>
								</tr> 
		              <% } %>     
          		</tbody>
          </table>
         
         <input type="button" class="btn btn-success btn-block" id="confirm" name="confirm" value="<%-$.i18n.t('app.more.investmentipo.confirm')%>"/>
          <a href="#/iposubscription" class="btn btn-primary btn-block" id="cancel" name="cancel"><%-$.i18n.t('app.more.estatement.cancel')%></a>
         <br/>
      </form>
<!--Content Ends Here-->
 <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>             
                 
