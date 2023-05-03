<%
var els = new EncryptedLocalStorage('secret'); 
var profileupdateverifylist = els.get("profileupdateverifylist");
var firstName=profileupdateverifylist[0];
var mobilemaskup="";
var mobile=profileupdateverifylist[1];
for(var x=0;x<mobile.length;x++){
     				if(x<mobile.length-3){
     					mobilemaskup += "X";
     				}else{
     					mobilemaskup += mobile[x];
     				}
     			}
var poboxnumber=profileupdateverifylist[2];
var postalnumber=profileupdateverifylist[3];
var town=profileupdateverifylist[4];
var homephone=profileupdateverifylist[5];
var offphone=profileupdateverifylist[6];
var emailid=profileupdateverifylist[7];
var buildingnumber = profileupdateverifylist[8];
var street = profileupdateverifylist[9];
var district = profileupdateverifylist[10];
var unitnumber = profileupdateverifylist[11];
var city = profileupdateverifylist[12];
var postalcode = profileupdateverifylist[13];
var additionalnumber = profileupdateverifylist[14];

var fromAddAcc=els.get("fromAddAccOpening");
%>
<!--Content Starts Here-->
                  <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.profileupdation')%></li>
                  </ol>
                  
                  <div class="clearfix"></div>
                  
                  
                  <!--Step Control Starts Here-->
                 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.more.preference.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
  </div> 
                  <!--Step Control Ends Here-->

                    <div class="clearfix"></div>
  <br/>
                    <div class="col-sm-9">
                    <div class="dtl_view">
                    <table class="table table-bordered table-striped ">
                    <tr>
                    <td><%-$.i18n.t('app.more.preference.name')%></td>
                    <td><%-firstName%></td>
                    </tr>
                    
                    <tr>
                    <td><%-$.i18n.t('app.more.preference.mobilenumber')%></td>
                    <td><%-mobilemaskup%></td>
                    </tr>
                    
                    <tr>
                    <td><%-$.i18n.t('app.more.preference.email')%></td>
                    <td><%-emailid%></td>
                    </tr>
                    
                    <tr>
                    <td><%-$.i18n.t('app.more.preference.homephonenumber')%></td>
                    <td><%-homephone%></td>
                    </tr>


                    <tr>
                    <td><%-$.i18n.t('app.more.preference.officetelephonenumber')%></td>
                    <td><%-offphone%></td>
                    </tr>

                    <tr>
                    <td><%-$.i18n.t('app.more.preference.pobox')%></td>
                    <td><%-poboxnumber%></td>
                    </tr>

                    <tr>
                    <td><%-$.i18n.t('app.more.preference.postalcode')%></td>
                    <td><%-postalnumber%></td>
                    </tr>

                      <tr>
                    <td><%-$.i18n.t('app.more.preference.city')%></td>
                    <td><%-town%></td>
                    </tr>

					<tr>
                    <td><%-$.i18n.t('app.more.preference.buildnum')%></td>
                    <td><%-buildingnumber%></td>
                    </tr>
                    
                    <tr>
                    <td><%-$.i18n.t('app.more.preference.street')%></td>
                    <td><%-street%></td>
                    </tr>


                    <tr>
                    <td><%-$.i18n.t('app.more.preference.district')%></td>
                    <td><%-district%></td>
                    </tr>

                    <tr>
                    <td><%-$.i18n.t('app.more.preference.unitnum')%></td>
                    <td><%-unitnumber%></td>
                    </tr>
                    
                    <tr>
                    <td><%-$.i18n.t('app.more.preference.city')%></td>
                    <td><%-city%></td>
                    </tr> 

                    <tr>
                    <td><%-$.i18n.t('app.more.preference.postcode')%></td>
                    <td><%-postalcode%></td>
                    </tr>

                    <tr>
                    <td><%-$.i18n.t('app.more.preference.addnum')%></td>
                    <td><%-additionalnumber%></td>
                    </tr>                    

                    
                    
                    </table>
                    </div>
                    <form>
                    <div id="secError">
						<label><strong><font color="red"><span id="showError"></span></font></strong></label>
					</div>
                  <!--  <div class="form-group">
                         <label><%-$.i18n.t('app.more.preference.enterotp')%></label>
                         <input type="password" maxlength="6" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.more.preference.enteronetimepass')%>" class="form-control">
                    </div>-->
                   
                    <a id="confirm" name="confirm" class="btn btn-success btn-block"><%-$.i18n.t('app.more.preference.confirm')%></a>
					 <% if(fromAddAcc) { %>
                    	<a href="#/addaccopeningrequest"  class="btn btn-primary btn-block" ><%-$.i18n.t('app.more.preference.cancel')%></a>
                    <% } else { %>
                    	<a href="#/preference"  class="btn btn-primary btn-block" ><%-$.i18n.t('app.more.preference.cancel')%></a>
                    <% } %>  
                         
                    </form>
                    </div>