<%
var els = new EncryptedLocalStorage('secret');
var acc = els.get("acc"); 
var ref = els.get("ref");
var colbranch = els.get("colbranch");
var leavesno = els.get("leavesno");
var cheqbookno = els.get("cheqbookno"); 
%>
<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
 	<li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.servicereq')%></a></li>
 	<li class="active"><%-$.i18n.t('app.requests.chequebookreq.confcanrequest')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<div class="newWiz">
  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.chequebookreq.verify')%></P></div></div>
  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
</div>
<div class="dtl_view">
  <div class="form-group">
    <table class="table table-bordered table-striped">
         <tbody>
           <tr>
              <td><%-$.i18n.t('app.product.accounts.accountnumber')%></td>
              <td><%-acc%></td> 
          </tr>
       	   <tr>
              <td><%-$.i18n.t('app.transfer.standinginstruction.refno')%></td>
              <td><%-ref%></td>
          </tr>
           <tr>
              <td><%-$.i18n.t('app.requests.chequebookreq.collectbranch')%></td>
              <td><%-colbranch%></td>
          </tr>
             <tr>
              <td><%-$.i18n.t('app.requests.chequebookreq.nosofleaves')%></td>
              <td><%-leavesno%></td>
          </tr>
          </tr>
             <tr>
              <td><%-$.i18n.t('app.requests.chequebookreq.noofchequebook')%></td>
              <td><%-cheqbookno%></td>
          </tr>
        </tbody>
    </table>
   </div>
</div>
<input type="button" id="confirmCancelChequebook" name="confirmCancelChequebook" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.chequebookreq.confirm')%>"/>
<a href="#/cancelchequebookrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>
<br/>
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>
 <script>
  $(document).ready(function(){
  $("#canchequebooksubmitresentotp").attr('disabled','disabled');
  });
  </script>