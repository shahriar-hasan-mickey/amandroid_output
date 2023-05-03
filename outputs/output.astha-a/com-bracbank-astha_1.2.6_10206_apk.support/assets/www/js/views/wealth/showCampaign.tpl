<%
	var els = new EncryptedLocalStorage('secret');
	var crossSellingDTO = els.get("crossSellingList");
	var crossSellingDetailListDTO = els.get("crossSellingDetailListDTO");
	var indexcal = parseInt(index);
	var indexDetail = 0;
	var remindmecount=parseInt(els.get("remindmecount"));
	var promoid=els.get("promoid");
	var campaigntype=els.get("campaigntype");
	console.log("campaigntype",campaigntype);
	var topUpAmount=els.get("topUpAmount");
	var topUpAmountval;
	if(topUpAmount!=null && topUpAmount !=""){
	topUpAmountval = topUpAmount.replace(/\,/g,'');
	}
	var cclimitincrease=els.get("cclimitincrease");
	var ccnumber= els.get("ccnumber");
	var loanAccountNumber=els.get("loanAccountNumber");
	var totalCampign=els.get("totalCampign");
	var devicePlatform = els.get("device.platform");
	var sel_lang_id = els.get("lang_id");
	var validtodate = parseInt(els.get("validtodate"));
%>
<!-- Actual content area -->
				
                    
                    
                    
                    
                    
					<div class="offpro">
                    <ol class="breadcrumb cust_breadcrumb pull-left">
                  	<% if(totalCampign =="1"){%>
                  		<li><a href="#/wealth" ><%-$.i18n.t('app.product.general.myoffers')%></a></li>
                     	<li class="active"><%-$.i18n.t('app.notification.showcampaign')%></li>
                    <%}else{%>
                     	<li><a href="#/campaignsummary" ><%-$.i18n.t('app.product.general.myoffers')%></a></li>
                     	<li class="active"><%-$.i18n.t('app.notification.showcampaign')%></li>
                   <%}%>  
                  </ol>
                        <div class="clearfix"></div>
                    
                    
                    
                    <div class="panel panel-default"> <!-- Panel Starts here-->              
              <div class="panel-body">
                <form method="post" action=""> <!-- form Starts here-->

                    <fieldset class="intermediate"> <!-- fieldset Starts here-->
                    <% if(campaigntype!="GENCAMP"){%>
                        <div class="text-center">
                            <h3 class="text-danger"><%-validtodate%></h3>
                            <small class="text-center off_remain"> <%-$.i18n.t('app.notification.daysrem')%> </small>
                        </div>  
                      <%}%>                      
                       <!-- <h4 ><%-$.i18n.t('app.notification.showcmptit')%>	</h4>   -->
                        
			<img src="data:image/jpg;base64,<%- crossSellingDetailListDTO[indexDetail].large_banner %>" class="img-responsive img-thumbnail">
                        <br>                        
                       <!--  <div>
                      <div class="alert alert-info text-center">
                          <h4 class="im_title"><%- crossSellingDetailListDTO[indexDetail].text 				 %>	</h4>
                          <p><label><%- crossSellingDetailListDTO[indexDetail].detail_desc %></label></p>-->
                          <% if(campaigntype =="CCLTINC"){%>
			<div class="alert alert-info text-center">
			    <div class="infolbl row">
			    	<div class="col-xs-6">
                		<label>
                    		<%-$.i18n.t( 'app.requests.newcc.ccnumber')%>
                		</label>
                	</div>
                	<div class="col-xs-6">
                		<%-ccnumber%>
                	</div>
            </div>
            
            <div class="infolbl row">
             	<div class="col-xs-6">
                	<label>
                   	 <%-$.i18n.t( 'app.requests.newcc.cclmtamt')%>
                	</label>
                </div>
                <div class="col-xs-6">
              	 	<%-cclimitincrease%>
              	 </div> 
            </div>
            <%}%>
            
            <% if(campaigntype =="TOPUPPL"){%>
			
			    <div class="infolbl row">
			    	<div class="col-xs-6">
                		<label>
                    		<%-$.i18n.t( 'app.requests.newcc.loanaccno')%>
                		</label>
                	</div>
                	<div class="col-xs-6">
               			<%-loanAccountNumber%>
            		</div>
            	</div>
            
            <div class="infolbl row">
            	<div class="col-xs-6">
                	<label>
                    	<%-$.i18n.t( 'app.requests.newcc.topupamt')%>
                	</label>
                </div>
                	<div class="col-xs-6">
					<%if(topUpAmount!=null && topUpAmount !=""){%>
            			KWD <%- checkAmount($.formatNumber(topUpAmountval, {format:"#,###.000", locale:"us"}))%>
					<%}else{%>
						KWD 0.00
					<%}%>
           			 </div>
           	</div>
            <%}%>
                       </div>
                        <% if(campaigntype=="GENCAMP"){%>
							<input type="button" id="dismiss" name="dismiss" class="btn btn-primary btn-block"  value="<%-$.i18n.t('app.dateline.dismiss')%>"></button>
						<%}else{%>
							<input type="button" id="accept" name="accept" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.dateline.accept')%>"/>
							<% if(campaigntype !="TOPUPPL"){%>
						 	<% if (( !(remindmecount >=2 ) )) { %>
				                <input type="button" id="remindmelater" name="remindmelater" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.dateline.remindmelater')%>"/>    
							<%}%>
							<% } %>
							<input type="button" id="decline" name="decline" class="btn btn-primary btn-block"  value="<%-$.i18n.t('app.dateline.decline')%>"></button>
						<%}%>
                    </fieldset>

                 </form><!-- form ends here-->
                 <br/>
                 <% if(campaigntype!="GENCAMP"&& campaigntype !="TOPUPPL" && campaigntype !="ESTATMNT"){%>
			   <% if(devicePlatform=="Android"){%>
			   		  	
			   <%}else{%>
			   		  	
			   <%}%>	
<%}%>
                      </div>
                 </div><!-- Coloumn Ends here-->

					</div>
					<!--Content Ends Here-->
<script>	
$(".content").animate({ scrollTop: 0 }, "fast");
</script>

<script type="text/javascript">
    function openUrl(url) {
      window.open(url, '_system', 'location=no');
    }
 </script>				