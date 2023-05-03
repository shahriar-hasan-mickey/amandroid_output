<%
	var els = new EncryptedLocalStorage('secret');
	var noOfDays = els.get("noOfDays");
	var legalStaus = els.get("legalStaus");
	var kyconetimeprocess = els.get('kyconetimeprocess');
	var id = els.get("iqnumid");
	var sel_lang_id = els.get("lang_id");
%>

<div class="clearfix"></div>
                        						


<body>
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
                <h3 class="panel-title"><%-$.i18n.t('app.notification.idexpalert')%></h3>
              </div>
              <div class="panel-body">
                <form> <!-- form Starts here-->

                    <fieldset class="intermediate"> <!-- fieldset Starts here-->
<% if(noOfDays <= 90 && noOfDays>=0){ %>
                        <div class="text-center">
                            <h3 class="text-danger"><%-noOfDays%></h3>
                            <small class="text-center">
                            <%if(sel_lang_id=="en-US"){%>
												<%if(noOfDays==1){%>
													<%-$.i18n.t('app.notification.days1ree')%>
												<%}else{%>
												 	<%-$.i18n.t('app.notification.daysree')%>
												 <%}%>
										 <%}else if(sel_lang_id=="en-AR"){%>
												 <%if(noOfDays>=3 && noOfDays<=10){%>
												 	<%-$.i18n.t('app.notification.days3to10ree')%>
												 <%}else{%>
												 	<%-$.i18n.t('app.notification.daysree')%>
												 <%}%> 
										 <%}%>                            
                             <%-$.i18n.t('app.notification.remin')%> 
                             </small>
                        </div>
<%}%>
                        <br>
                        <img src="images/common/id_card_1.gif" class="img-responsive img-thumbnail" />
                        <br>
                        <br>
                        
                       <div class="alert alert-info text-center">
                          <h4 class="im_title"><%-$.i18n.t('app.notification.immediateactionreq1')%></h4>
<% if(noOfDays <= 90 && noOfDays>=0){ %>

							<% if(legalStaus == "false"){ %>
									<%if(noOfDays <= 90 ){%>
										<%if(id==1){%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeronatt')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
										  <%}else{%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeroiqaa')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
										  <%}%>
									<%}else{%>
										<%if(id==1){%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeronatt')%><%-$.i18n.t('app.notification.idexpirezeroiqnat1')%></p>
										  <%}else{%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeroiqaa')%><%-$.i18n.t('app.notification.idexpirezeroiqnat1')%></p>
										  <%}%>
									<%}%>
								<%}else{%>
									<% if( noOfDays != "" || noOfDays != "0") { %>
										  <%if(id==1){%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeronatt')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
										  <%}else{%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeroiqaa')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
										  <%}%>
									<%}else if(noOfDays != "" || noOfDays == "0") { %>
										<%if(id==1){%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeronatt')%><%-$.i18n.t('app.notification.idexpirezeroiqnat1')%></p>
										  <%}else{%>
										  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeroiqaa')%><%-$.i18n.t('app.notification.idexpirezeroiqnat1')%></p>
										  <%}%>
									<%}else{%>
									<%}%> 
								<%}%>
								
<%}else if(kyconetimeprocess != "Y" && noOfDays <= 90 && noOfDays >= 0){%>

				<%if(id==1){%>
									  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeronatt')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
				<%}else{%>
									  <p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeroiqaa')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
				<%}%>
				
<%}else{%>
				<%if(id==1){%>
				<%if(noOfDays < 0){%>
				<p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeronatt')%><%-$.i18n.t('app.notification.idexpirezeroiqnat1')%></p>
				<%}else if(noOfDays > 90){%>
				<p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeronatt')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
				<%}%>
				<%}else{%>
				<%if(noOfDays < 0){%>
				<p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeroiqaa')%><%-$.i18n.t('app.notification.idexpirezeroiqnat1')%></p>
				<%}else if(noOfDays > 90){%>
				<p><%-$.i18n.t('app.notification.idexpirezeroiqnat')%><%-$.i18n.t('app.notification.idexpirezeroiqaa')%><%-$.i18n.t('app.notification.idexpirezeroiqnat2')%></p>
				<%}%>
				<%}%>
				
<%}%>
                    </div>
                 <a id="updatebtn" class="btn btn-success btn-block"><%-$.i18n.t('app.notification.update')%></a>
                        <a id="cancelbtn" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.later')%></a>
                    </fieldset>   
                    

                 </form><!-- form ends here-->
                      </div>
                 </div><!-- Coloumn Ends here-->
              </div><!-- Coloumn Ends here-->
           </div><!-- row ends here-->
      </div><!--Container Ends here-->
  </div><!--pagewrapper Ends here-->
  </body>