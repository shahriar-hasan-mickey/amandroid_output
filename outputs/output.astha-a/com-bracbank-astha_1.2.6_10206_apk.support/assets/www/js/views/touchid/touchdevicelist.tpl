 <%
	var els = new EncryptedLocalStorage('secret');
	var deviceList=els.get("bioMetricDetailsDTO");
	var totalCount = els.get("touchAllowedCount");
	var bioFlag=els.get("BiometricType");
	%>
<body class="loginbg">
    <div  class="pagewrapper"><!--pagewrapper Starts here-->
      <div class="container"><!--Container Starts here-->
        <div class="row"><!-- Row Starts here-->
          <div class="col-sm-6"><!-- Coloumn Starts here-->
            <h1 class="lgn-logo">
              <span>
              </span>
            </h1>
            <div class="panel panel-default"> <!-- Panel Starts here-->
              <div class="panel-heading"><!-- Panel head Starts here-->
              	<% if(bioFlag=="TID"){ %>
              	<h3 class="panel-title"><%-$.i18n.t('app.touchid.touchRegTitle')%></h3>
	 			<% }else if(bioFlag=="FID"){ %>
	 				<h3 class="panel-title"><%-$.i18n.t('app.faceid.faceRegTitle')%></h3>
	 			<% } %>
              </div><!-- Panel head ends here-->
              <div class="panel-body">
                <form >
                	<!-- form Starts here-->
                  <fieldset> <!-- fieldset Starts here-->
                    <div>
                    <div class="alert alert-info text-center">
                    <%-$.i18n.t('app.touchid.touchDeactivateMsg1')%>
                    <%-totalCount%>
                    <%-$.i18n.t('app.touchid.touchDeactivateMsg2')%>
						<span class="msg"></span>
					</div>
	                   <ul class="list-group">
	                   	<% _.each(deviceList,function(data,index) { %>
                                 <li class="list-group-item">
                               		<div class="row">
                     					<div class="col-xs-3"> <span>
                     						<% if(data.biometric_type_flag == "FID") { %>
												<img src="images/common/newicons/light_theme/faceid-icon.png">
											<% } else { %>
												<img src="images/common/newicons/light_theme/touchid-icon.png">
											<% } %>
      									</span></div>
      									<div class="col-xs-9">
         									<h4 class="media-heading"><%-$.i18n.t('app.touchid.model')%></h4>
    										<p>    											
    											<% if(data.deviceName != null && data.deviceName != "") { %>
                                					<span><%- data.deviceName %></span>
                                				<% } else if(data.deviceModel != null && data.deviceModel != "") { %>
                                					<span><%- data.deviceModel %></span>
                                				<% } else if(data.deviceID != null && data.deviceID != "") { %>
                                					<span class="uuid"><%- data.deviceID %></span>
                                				<% } %>
                                			</p>
      									</div>
                     				</div>
                     				<div class="row">
                     					<div class="col-xs-12 text-right">
                     						<input type="button" id="deviceListSubmit<%- index %>" name="deviceListSubmit" class="btn btn-danger"  value="<%-$.i18n.t('app.touchid.touchDeactivate')%>" />
                     					</div>
                     				</div>
                                 </li>
                             <% }) %>
                        </ul>
                  	</div>
                  	
                  	 <input type="button" id="deviceListCancel" name="deviceListCancel" class="btn btn-primary btn-block"  value="<%-$.i18n.t('app.mpin.cancel')%>" />
                    </fieldset><!-- Fieldset Ends here-->
                          </form><!-- form ends here-->
                      </div>
                 </div><!-- Coloumn Ends here-->
              </div><!-- Coloumn Ends here-->
           </div><!-- row ends here-->
      </div><!--Container Ends here-->
  </div><!--pagewrapper Ends here-->


  
  </body>
  
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
