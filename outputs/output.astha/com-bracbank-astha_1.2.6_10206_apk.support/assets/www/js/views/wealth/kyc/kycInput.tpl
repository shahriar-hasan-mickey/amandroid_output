<%
			var els = new EncryptedLocalStorage('secret'); 
			var iqamamaskNumber  = els.get("iqamamask_Number ");
			var iqamaNumber  = els.get("iqama_number");
			console.log("iqamaNumber",iqamaNumber);
			var id = els.get("iqnumid");//els.get("iqama_id");
			var idcheck  = els.get("iqnumid");//els.get("iqama_id");
			console.log("iqama_id",id);
			var maskNumber = els.get("maskNumber");
			 var devicePlatform = els.get("device.platform");
			 var langchange = els.get('lang_id');
			 var idexpdate = els.get("idexpdatekycc");
						var idexpyear  = idexpdate.substring(0, 4);
						var idexpmonth  = idexpdate.substring(4, 6);
						var idexpday  = idexpdate.substring(6, 8);
						//idexpdate = idexpyear +"-"+idexpmonth+"-"+idexpday;
						idexpdate = idexpday +"/"+idexpmonth+"/"+idexpyear;
						var noOfDays = els.get("noOfDays");
						var sel_lang_id = els.get("lang_id");
%> 	
	<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>
	
	<h3><%-$.i18n.t('app.notification.idexpire')%></h3>
                        
	<div class="newWiz">
		<div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
		<div class="steps"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
		<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
	</div>

	<div class="alert alert-info"><%-$.i18n.t('app.notification.kycalert')%></div>
	<table class="table table-bordered table-striped">
	
		<tr>
			<%if(id=="1"){%>
				<td><%-$.i18n.t('app.moi.moipayments.nationalid')%></td>
			<%}else{%>
				<td><%-$.i18n.t('app.moi.moipayments.iqamano1')%></td>
			<%}%>
			
			<%if(noOfDays <= 90 && noOfDays >= 0){%>
				<td><span><%-maskNumber%>&nbsp;<small style="font-size:9px;color:#A94442;">(<%-$.i18n.t('app.notification.approachexp')%>)</small></span></td>
			<%}else{%>
				<td><span><%-maskNumber%>&nbsp;<small style="font-size:9px;color:#A94442;">(<%-$.i18n.t('app.notification.expired')%>)</small></span></td>
			<%}%>
		</tr>
	
		<tr>
			<td><%-$.i18n.t('app.notification.idexpdate')%></td>
			<td><%-idexpdate%></td>
		</tr>
	
	</table>
                   
	<label for="Expiry date of ID"><%-$.i18n.t('app.notification.dob')%><span class="text-danger">*</span></label>
                                
	<div class="row">
		<div class="form-group col-xs-3">
		<% var datelist = getDays(); %>
            <select required="" placeholder="DD" id="DD" class="form-control day">
               <% _.each(datelist,function(data){%>
                      <option value="<%-data%>"> <%-data%></option>
               <%});%>
            </select>	
						
		</div>
		<div class="form-group col-xs-3">
			<select required="" placeholder="MM" id="MM" class="form-control month">
			<option value=""></option>
			</select>
		</div>
		<div class="form-group col-xs-6">
		<%if(id==1){%>
		<% var yeardoblist = gethijiriyeardob();%>
            <select required="" placeholder="YYYY" id="YYYY" class="form-control yearexp">
               <% _.each(yeardoblist,function(data){%>
                      <option value="<%-data%>"> <%-data%></option>
               <%});%>
            </select>
            <%}else{%>
			<select required="" placeholder="YYYY" id="YYYY" class="form-control year">
			</select>
			<%}%>
		</div>
	</div>
<%if(id==1){%>
	<!--<div class="panel panel-default cust_panel">
		<div class="panel-heading" data-target="#casa_accounts" data-toggle="collapse">
			<p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;
			<%-$.i18n.t('app.notification.viewsampleid')%>
			</p>
		</div>
		<div id="casa_accounts" class="collapsePanel panel-collapse collapse">
			<div class="panel-body">
				<p class="text-center">
				<br/>
				<img src="images/common/preview_id.png">
				</p>
			</div>
		</div>
	</div>-->
<%}else{%>	
	<!--<div class="panel panel-default cust_panel">
		<div class="panel-heading" data-target="#casa_accounts" data-toggle="collapse">
			<p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;
			<%-$.i18n.t('app.notification.viewsampleid')%>
			</p>
		</div>
		<div id="casa_accounts" class="collapsePanel panel-collapse collapse">
			<div class="panel-body">
				<p class="text-center">
				<br/>
				<img src="images/common/preview_id1.png">
				</p>
			</div>
		</div>
	</div>-->
<%}%>                            
	<!-- <label for="uploadfile"><%-$.i18n.t('app.notification.uploadid')%></label>                    
	<div class="form-group required"> <input type="file" id="uploadfile" class="form-control">  </div> -->  
<br/>
    
	<div class="form-group">
	                        <label class="checkinput small  pull-left">
		                        <input type="checkbox" class="check-hidden" id="iagreee" name="iagreee" /><%-$.i18n.t('app.notification.t&cmsgg')%>
		                       <!-- <a href="javascript:void(0);" id="termandcondition" name="termandcondition"><%-$.i18n.t('app.registration.termscond')%></a>-->
								<a  data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" >
								  <%-$.i18n.t('app.registration.termscond')%>
								  </a>
		                        
	                        </label>
	                      </div>
	                      <%if(sel_lang_id=="en-US"){%>   
	                      <div class="collapse" id="collapseExample">
						  <div class="well">
						    <img src="images/common/idupdate_Terms_en.jpg" width="100%">
						  </div>
						</div>
				<%}else if(sel_lang_id=="en-AR"){%>	
						<div class="collapse" id="collapseExample">
						  <div class="well">
						    <img src="images/common/idupdate_Terms_ar.jpg" width="100%">
						  </div>
						</div>
				<%}%>
	                      <div class="clearfix"></div>
						  <!--<div id="errortermscond" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.newregistration.iagreee')%></font></p>
                          </div>-->
                          <div id="errortermscond" style="display:none">
								<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.newregistration.iagreee')%></font></p>
                          </div>
<br/><br/>

		
		<a id="kycverifysubmit" class="btn btn-success btn-block" ><%-$.i18n.t('app.tedallalrewards.submit')%></a>
		<a href="#/wealth"  class="btn btn-primary btn-block"><%-$.i18n.t('app.tedallalrewards.cancel')%></a>
<br/>
<script>
$(function(){
    var $select = $(".day");
    var daylist = getDays();
    
    for (i=1;i<=daylist;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});
/*$(function(){
    var $select = $(".month");
    var daylist =getLastMonths();
    for (i=1;i<=12;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});*/
$(function(){
    var $select = $(".year");
    var d = new Date();
    var n = d.getFullYear();
    for (i=1900;i<=n;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});
</script>
<script type="text/javascript">
var d = new Date();
var monthArray = new Array();
monthArray[0] = "01";
monthArray[1] = "02";
monthArray[2] = "03";
monthArray[3] = "04";
monthArray[4] = "05";
monthArray[5] = "06";
monthArray[6] = "07";
monthArray[7] = "08";
monthArray[8] = "09";
monthArray[9] = "10";
monthArray[10] = "11";
monthArray[11] = "12";
for(m = 0; m <= 11; m++) {
    var optn = document.createElement("OPTION");
    optn.text = monthArray[m];
    // server side month start from one
    optn.value = (m+1);
 
    // if june selected
    if ( m == 5) {
        optn.selected = true;
    }
 
    document.getElementById('MM').options.add(optn);
}
</script>
<script type="text/javascript">
$(function(){
    var $select = $(".yearexp");
    var d = new Date();
    var n = d.getFullYear();
    n=n-100;
    for (i=n;i<=n;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});
</script>