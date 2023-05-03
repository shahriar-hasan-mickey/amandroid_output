<%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("cccardacctno");
var errorDescription=els.get("errordesc");
%>
<!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
<li><a href="#/creditcard" ><%-$.i18n.t('app.creditcard.blockcc.creditcards')%></a></li>
<li class="active"><%-$.i18n.t('app.creditcard.blockcc.block')%></li>
</ol>
<div class="clearfix"></div>

                  <!--Breadcrumb Ends Here-->
<form name="blockcc"> <br>
 <% if ( mycreditcards.length > 0 ) {  %>
    <div class="dropselect" data-title="<%-$.i18n.t('app.creditcard.outstandauth.select')%>" data-setid="blckdiv">
	<% _.each(mycreditcards,function(data){ %>
			                
        <label class="list-group-item">
        
        <%if(data.accountNumber== cccardacctno) {%>
			 <input type="radio" checked="checked" value="<%-data.accountNumber%>~<%-data.expiryDate%>~<%-data.acctProduct.code%>~<%-data.shortName%>" name="frmacno" id="frmacno"/>
		<%}else{%>
			<input type="radio" value="<%-data.accountNumber%>~<%-data.expiryDate%>~<%-data.acctProduct.code%>~<%-data.shortName%>" name="frmacno" id="frmacno"/>
		<%}%>
				<p>
					<%if(typeof(data.shortName)!="undefined"){%>
						<span class="nme"><%-data.shortName%></span>
					<%}else{%>
						<span class="nme"></span>
					<%}%>
					 <%if(typeof(data.currencyCode)!="undefined"){%>
						<small class="cur pull-right"><%-data.currencyCode%></small>
					 <%}else{%>
						 <span class="nme"></span>
					 <%}%>
				 </p>
				 <p>
					 <%if(typeof(data.accountNumber)!="undefined"){%>
						<small class="text-muted"><%-data.creditCardNoMasked%>
						 </small>
					 <%}else{%>
						 <span class="nme"></span>
					 <%}%>
					 <%if(typeof(data.availableBalance)!="undefined"){%>
						<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
					<%}%>
				</p>

		</label>
	<%});%>
	</div>
	
  		<div id="errorFromAct" style="display:none">
          <p class="help-block error-message">
          	<font color="#A94442"><%-$.i18n.t('app.creditcard.general.fromaccmsg')%></font>
          </p>
     </div>	
     
<table class="table table-striped">
       <tr>
              <td><%-$.i18n.t('app.creditcard.blockcc.cardtype')%></td>
              <%if((typeof(mycreditcards[0])!="undefined")||(typeof(mycreditcards[0])!="")){%>
              		<td id="ctype" name="ctype"><%-mycreditcards[0].acctProduct.code%></td>
              <%}%>
        </tr>

        <tr>
               <td ><%-$.i18n.t('app.creditcard.blockcc.cardholdername')%></td>
               <%if((typeof(mycreditcards[0])!="undefined")||(typeof(mycreditcards[0])!="")){%>
               		<td id="cardname" name="cardname"><%-mycreditcards[0].shortName%></td>
               <%}%>
       </tr>

       <tr>
               <td i><%-$.i18n.t('app.creditcard.blockcc.expirymonth')%></td>
               <td id="expiry" name="expiry"><%-month%></td>
       </tr>
        
        <tr>
               <td><%-$.i18n.t('app.creditcard.blockcc.year')%></td>
               <td id="year" name="year"><%-year%></td>
        </tr>
</table>
<input type="hidden" id="hidacno"/>
         <input type="button" class="btn btn-success btn-block" id="validateCardPin"  value="<%-$.i18n.t('app.creditcard.blockcc.confirm')%>" />
         <a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.blockcc.cancel')%></a>
 <br/>
 <br/>
 <div class="alert alert-info">
                   <span class="msg"><%-$.i18n.t('app.creditcard.blockcc.note')%><%-$.i18n.t('app.creditcard.blockcc.disclaimer')%></span>
</div>

<%}else if ( mycreditcards.length == 0 ){%>
				<div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.creditcard.blockcc.nocard')%></span>
			    </div>
 			<%}else{%>
				<div class="alert alert-info">
            		 <span class="msg"><%-errorDescription%></span>
       			</div>
 			<%}%>		
</form>
                 
           
               <!--Content Ends Here-->
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
</script>
<script>
  $(document).ready(function(){
         $("#blckdiv").show();
    });
    $(".content").animate({ scrollTop: 0 }, "fast");
</script>