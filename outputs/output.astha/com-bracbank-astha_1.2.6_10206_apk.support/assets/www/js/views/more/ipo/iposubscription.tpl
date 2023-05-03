<%
	var els=new EncryptedLocalStorage('secret');
	var iponameidx=els.get("iponameidx");
	var basecurrency = els.get("base_currency");
	var id_type=els.get("id_type");
%>
<% if(id_type=="NAT"){ %>
<a href="#/ipo" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/ipo"><%-$.i18n.t('app.more.general.ipo')%></a></li>
       <li class="active"><%-$.i18n.t('app.more.investmentipo.iposubscription')%></li>
    </ol>
        <div class="clearfix"></div>
<!-- Breadcrumb Ends Here -->

<div class="stepcontrols">
<!--Step Control Starts Here-->
          <div class="newWiz">
          <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.homefinance.input')%></p></div></div>
          <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.requests.homefinance.verify')%></p></div></div>
          <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.homefinance.confirm')%></p></div></div>
          </div>
<!--Step Control Ends Here-->
</div>
<% if ( ipoDetailsListDTO.length > 0 ) { %>                
 <!--Content Starts Here-->
     <form role="form" name="iposubscriptionform" id="iposubscriptionform">
         <div class="form-group">
         				  <label><%-$.i18n.t('app.more.investmentipo.iponame')%></label>
                          <select name="iponame" id="iponame" class="form-control">
                          <% if ( ipoDetailsListDTO.length > 1 ) { %>
                           		<option value="" selected><%-$.i18n.t('app.more.investmentipo.select')%></option>
			        			<% _.each(ipoDetailsListDTO,function(data){ %>
			        				<p>
										<option  value="<%-data.ipoName%>~<%-data.noOfShares%>~<%-data.sharePrice%>~<%-data.minimum%>~<%-data.maximum%>~<%-data.startDate%>~<%-data.endDate%>~<%-data.ipoCompCode%>"><%-data.ipoName%></option>
									</p>
						        <% });%>
					        <%}else if ( ipoDetailsListDTO.length == 1 ) {%>
					        	<% _.each(ipoDetailsListDTO,function(data){ %>
			        				<p>
										<option  value="<%-data.ipoName%>~<%-data.noOfShares%>~<%-data.sharePrice%>~<%-data.minimum%>~<%-data.maximum%>~<%-data.startDate%>~<%-data.endDate%>~<%-data.ipoCompCode%>" selected><%-data.ipoName%></option>
									</p>
						        <% });%>
					        <% }%>
					       </select>
                     </div>
                     
<div class="ipodetails" id="ipodetails">

	<div class="panel panel-default cust_panel">
							<div data-target="#beneficiary" data-toggle="collapse" class="panel-heading" id="clickdet">
		    						<p class="panel-title small"><span id="arrow" class="glyphicon glyphicon-chevron-right"></span>&nbsp;
							<%-$.i18n.t('app.more.investmentipo.ipodetails')%></p>
							</div>
							<div class="collapsePanel panel-collapse collapse" id="beneficiary" style="height: 0px;">
								<div class="panel-body detailsStmt">
									 <% if ( ipoDetailsListDTO.length > 0 ) { %>
										<ul class="list-group">
				                            <li class="list-group-item"><small><%-$.i18n.t('app.more.investmentipo.noofshares')%></small><span id="noofshares" class="pull-right"><%-ipoDetailsListDTO[0].noOfShares%></span></li>
											<li class="list-group-item"><small><%-$.i18n.t('app.more.investmentipo.shareprice')%></small><span id="shareprice" class="pull-right">KWD&nbsp;<span id="Sharepriceamt"><%- checkAmount($.formatNumber(ipoDetailsListDTO[0].sharePrice, {format:"#,###.000", locale:"us"}))%></span></span></li>
				                            <li class="list-group-item"><small><%-$.i18n.t('app.more.investmentipo.minimum')%></small><span id="minimum" class="pull-right"><%-ipoDetailsListDTO[0].minimum%></span></li>
											<li class ="list-group-item"><small><%-$.i18n.t('app.more.investmentipo.maximum')%></small><span id="maximum" class="pull-right"><%-ipoDetailsListDTO[0].maximum%></span></li>
											<li class="list-group-item hilit"><small><%-$.i18n.t('app.more.investmentipo.startdate')%></small><span id="startdate" class="pull-right amt"><%-ipoDetailsListDTO[0].startDate%></span></li>
											<li class="list-group-item hilit"><small><%-$.i18n.t('app.more.investmentipo.enddate')%></small><span id="enddate" class="pull-right amt"><%-ipoDetailsListDTO[0].endDate%></span></li>
										</ul>
									  <%}%>
								</div>
							</div>
						</div>

           <h6><b><%-$.i18n.t('app.more.investmentipo.ipotransaction')%></b></h6>
           
         <!-- Start From account  -->
	                   <div id="errorId" style="display: none;">
	                   		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.general.otperror')%></font></p>
	                   </div>
	                     <div class="dropselect" data-title="<%-$.i18n.t('app.transfer.ownaccount.fromaccount')%>" id="fromAccountId">
	                     	<% if ( casaAcctList.length > 0 ) {
	                     		var idxf = 0;
	                     	%>
	               	   			<% _.each(casaAcctList,function(data){ %>
	               			          <label class="list-group-item">
	                        		        <input type="radio" value="<%-data.currency.code%>~<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.accountShortName%>~<%-idxf%>~<%-data.availableBalance%>" name="frmcurid" id="frmcurid"/>
	                        		        <p><span class="nme"><%-data.accountShortName%></span><small class="cur pull-right"><%-data.currency.code%></small></p>
	        				 	 			<p><small class="text-muted"><%-data.accountNumberMasked%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
	        			     		</label>
	        			     	<% idxf++ }); %>
	        			     	<%}else{%>
												<h4><%-$.i18n.t('app.product.investment.nodata')%></h4>
				                 <%}%>
	                     </div>
	                    <div id="errorFromAct" style="display:none">
	                    	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
	                    </div>
         <!-- End From account  -->
         
        </br>
        <div class="form-group required">
    		<div role="alert" class="alert  alert-info">
				<input type="number" autocomplete='off'  class="form-control lenthcontrol" id="sharespersubscriber" name="sharespersubscriber" maxlength="10" onfocus="(this.type='tel')"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"  placeholder="<%-$.i18n.t('app.more.investmentipo.sharespersubscriber')%>">
				<br/>
       			<p><small class="pull-left"><%-$.i18n.t('app.more.investmentipo.shareamtval')%></small><span id="shareamtval" class="pull-right"><span>KWD</span>&nbsp;0</span></p>
       			<div class="clearfix"></div>
       			<!--<p><small class="pull-left"><%-$.i18n.t('app.more.investmentipo.convamt')%></small><span id="convamt" class="pull-right"><span>KWD</span>&nbsp;0</span></p>-->
       			<div class="clearfix"></div>
    		</div>
  		</div>   
  		
  		<div id="errorshares" style="display:none">
                 <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.investmentipo.errorsharespersub')%></font></p>
		</div>
		<div id="errorshareamt" style="display:none">
                 <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.investmentipo.errorshareamount')%></font></p>
		</div>
					  
  		<h6><b><%-$.i18n.t('app.more.investmentipo.listofdep')%></b></h6>
  		
  		<div id="dependentList">
  			<table class="table">
	
	                  <thead>
	                   <tr>
	                    <th width="60%"><%-$.i18n.t('app.more.investmentipo.name')%></th>
	                    <th width="30%"><%-$.i18n.t('app.more.investmentipo.relationship')%></th>
	                  </tr>
	                  </thead>
	   
	                  <tbody>
							<% if (ipoDependentListDTO.length > 0 ) { %>
						  			<% _.each(ipoDependentListDTO,function(data){ %>
						                  <tr  id="selrel" name="selrel" value="<%-data.dependtName%>~<%-data.relationship%>">
						                    <td id="relname"><%-data.dependtName%></td>
						                    <td id="relationship"><%-data.relationship%></td>
						                  </tr>
									<%});%>
							<% }else{ %>
									    <tr>
							           		<td><span class="msg"><%-$.i18n.t('app.more.investmentipo.noresult')%></span></td>
									    </tr> 
					       	<% } %>
	       			</tbody>
	       </table>
	     
  		</div>
  		
  		
       <input type="hidden" name="relname" id="relname" />
       <input type="hidden" name="relationship" id="relationship" />
  		  <p class="help-block error-message label label-danger" id="chkboxid" style="display: none;"><%-$.i18n.t('app.more.investmentipo.relcheck')%></p>
  		  </br> 
  		  </br>       
	  		 <div>      
         <input type="button" class="btn btn-success btn-block" id="submit" name="submit" value="<%-$.i18n.t('app.more.estatement.submit')%>"/>
         <a href="#/ipo" class="btn btn-primary btn-block" id="cancel" name="cancel"><%-$.i18n.t('app.more.estatement.cancel')%></a>
	         </div>
         </br>    
</div>               
      </form>
<%} else{%>
	<div class="alert alert-info">
    	<span class="msg"><%-$.i18n.t('exception.common.norecordsfound')%></span>
    </div>
<% } %>
<!--Content Ends Here-->
<%} else{%>
<div class="alert alert-info">
                <span class="msg"><%-$.i18n.t('app.more.investmentipo.nationalityerrmsg')%></span>
            </div>
<% } %>
<script>
  $(document).ready(function(){
  		$(".dropselect").dropselect();
        $('.stepcontrols').hide();
        <% if ( ipoDetailsListDTO.length == 1 ) {%>
        	$('.ipodetails').show();
        <% }else{ %>
        	$('.ipodetails').hide();
        <% } %>
    });
</script>               

<script>
function amountFormat(){
	var sharespersubscriber = $('#sharespersubscriber').val();
}
</script>
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>

<script>
function validateFloatKeyPress(el, evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    var number = el.value.split('.');
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    //get the carat position
    var caratPos = getSelectionStart(el);
    var dotPos = el.value.indexOf(".");
    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 1)){
        return false;
    }    
    return true;
}


function getSelectionStart(o) {
	if (o.createTextRange) {
		var r = document.selection.createRange().duplicate()
		r.moveEnd('character', o.value.length)
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
	} else return o.selectionStart
}
</script>                 
</script>
<script type="text/javascript">
function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9])/g,"");
  $("#ownaccounttransfersubmit").attr('disabled','disabled');
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
  }
}
</script>
<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
</script>