<%
	var els = new EncryptedLocalStorage('secret');
	var location_latitude = els.get("location_latitude");
	var location_longitude = els.get("location_longitude");
	var index = els.get("index");
	var mname = els.get("entry.merchant_name");
	var cnumber = els.get("entry.contact_no");
	var moutlet = els.get("entry.merchant_outlet");
	var ovaliity = els.get("entry.offer_validity");
	var btiming = els.get("entry.business_timing");
	btiming=btiming.split("|");
	var mlogo = els.get("entry.merchant_logo");
	var ladde1=els.get("entry.location_addr1");
	var ladde2=els.get("entry.location_addr2");
	var laddecity=els.get("entry.location_city");
	var laddecountry=els.get("entry.location_country");
	var offtxt=els.get("entry.offer_text");
	var idx = els.get("index");
	var indx = parseInt(idx);
	var ResultsAtmList;
/*if(indx>="0"){
	ResultsAtmList = els.get("offersListDTO");
		//data = els.get("futureTxn_transactionsDTO");
	}*/
	var disvalue=els.get("distanceval");
	var distiming=els.get("distancetiming");
	
%>


<a class="pull-left btn btn-default btn-sm back-btn" href="#/offers"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/offers"><%-$.i18n.t('app.offers.offers')%></a></li>
                     <li class="active"><%-$.i18n.t('app.offers.offersdetpage')%></li>
</ol>
<div class="clearfix"></div>

				<div class="boxheader">
                      <h3><%- mname%></h3>
                      <p class="valid"><%- ovaliity%></p>
                    </div>
                    <div class="boxborderd">

                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-xs-1">
                                     <span class="glyphicon glyphicon-road"></span>
                                </div>
                                <div class="col-xs-10">
                                   <p><%- disvalue %> <span class="text-muted small"><%- distiming %></span></p>
                                </div>
                            </div>

                            <!-- address -->
                            <div class="row">
                                <div class="col-xs-1">
                                     <span class="glyphicon glyphicon-map-marker"></span>
                                </div>
                                <div class="col-xs-10">
                                    <div class="pull-left">
                                    <!--<img src="images/common/merchantlogo.png" width="60" height="60" alt="" />
                                    <img src="data:image/jpg;base64,'+tmp.merchant_logo+'" width="40" height="40"/>-->
                                    <img src="data:image/jpg;base64,<%- mlogo %>" width="60" height="60">&nbsp;&nbsp;
                                      </div>
                                   <address>
                                   <strong><%- offtxt%></strong><br/>
                                   <span class="text-muted">
                                    <%- mname%> <%- ladde1%> <%- ladde2%> <%- laddecity%> 
                                    <%- laddecountry%>                                    
                                   </span>
                                  </address>
                                </div>
                            </div>



                           <!-- Phone -->
                            <div class="row">
                                <div class="col-xs-1">
                                     <span class="glyphicon glyphicon-earphone"></span>
                                </div>
                                <div class="col-xs-10">
                                   <p class="contactNumAr"><%- cnumber%> </p>
                                </div>
                            </div>

                            <!-- time -->
                            <div class="row">
                                <div class="col-xs-1">
                                     <span class="glyphicon glyphicon-time"></span>
                                </div>
                                <div class="col-xs-10">
                                   <p><%- btiming[0]%></p>
                                   <p><%- btiming[1]%></p>
                                </div>
                            </div>
                      </div>
                    </div>
<br/>
<div id="map_canvas" style="width:100%;height:300px">

</div>
<div id="directions"></div>

 <br/>
                    <a href="#/offersdirection/<%-index%>/<%-lat%>/<%-lng%>" class="btn btn-success btn-block"><span class="glyphicon glyphicon-fullscreen"></span><%-$.i18n.t('app.offers.viewdir')%></a>

                  <br/>
                   <br/>