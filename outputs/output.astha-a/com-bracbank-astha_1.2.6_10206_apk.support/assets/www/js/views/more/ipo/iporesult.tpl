<%
 	var els=new EncryptedLocalStorage('secret');
	var sharespersubscriber=els.get("sharespersubscriber");
	var noofshares= els.get("noofshares");
	var shareprice= els.get("shareprice");
	var accfrm=els.get("accfrm");
	var iponame=els.get("iponame");
	var shareamtval=els.get("shareamtval");
	var transid=els.get("transid");
%>
<!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/ipo"><%-$.i18n.t('app.more.general.ipo')%></a></li>
       <li class="active"><%-$.i18n.t('app.more.investmentipo.iposubscription')%></li>
    </ol>
        <div class="clearfix"></div>
        <br/>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
          <div class="newWiz">
          <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.homefinance.input')%></p></div></div>
          <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.requests.homefinance.verify')%></p></div></div>
          <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.homefinance.confirm')%></p></div></div>
          </div>
<!--Step Control Ends Here-->
                  
<!--Content Starts Here-->
     <form role="form">

              <div class="dtl_view">

                <table class="table table-bordered table-striped">
                  <tbody>

                   <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.ftnumber')%></td>
                      <td id="ftrefno"><%-transid%></td>
                  </tr>
                   <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.frmacc')%></td>
                      <td><%-accfrm%></td>
                  </tr>

                  <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.iponame')%></td>
                      <td><%-iponame%></td>
                  </tr>
                  <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.noofsubscribers')%></td>
                      <td><%-noofshares%></td>
                  </tr>
                  <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.sharespersubscriber')%></td>
                      <td><%-sharespersubscriber%></td>
                  </tr>
                 <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.shareprice')%></td>
                      <td><%-shareprice%></td>
                  </tr>
                 <tr>
                      <td><%-$.i18n.t('app.more.investmentipo.totamt')%></td>
                      <td><%-shareamtval%></td>
                  </tr>

                </tbody>
              </table>

            </div>
         
         
         <!--<input type="button" class="btn btn-success btn-block" id="emailadvice" name="emailadvice" value="<%-$.i18n.t('app.more.investmentipo.emailadvice')%>"/>-->
         <a href="#/wealth" class="btn btn-success btn-block" id="home" name="home"><%-$.i18n.t('app.more.investmentipo.home')%></a>
      </form>
<!--Content Ends Here-->
 <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>             
                 
