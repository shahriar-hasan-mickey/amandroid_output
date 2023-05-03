<%
	var els=new EncryptedLocalStorage('secret');
	var errorCode = els.get("errorcode");
%>
<a href="#/ipo" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/ipo"><%-$.i18n.t('app.more.general.ipo')%></a></li>
       <li class="active"><%-$.i18n.t('app.more.investmentipo.ipoenquiry')%></li>
    </ol>
        <div class="clearfix"></div>
<!-- Breadcrumb Ends Here -->

 <% if ( _.size(ipoDetailsListDTO) > 0 ) { %>               
 <!--Content Starts Here-->
     <form role="form">
         <div class="form-group">
         				  <label><b><%-$.i18n.t('app.more.investmentipo.iponame')%></b></label>
                          <select name="iponame" id="iponame" class="form-control">
                          <% if ( _.size(ipoDetailsListDTO) > 1 ) { %>
                           		<option value="" selected><%-$.i18n.t('app.more.investmentipo.select')%></option>
			        			<% _.each(ipoDetailsListDTO,function(data){ %>
			        				<p>
												<option value="<%-data.ipoName%>~<%-data.noOfShares%>~<%-data.sharePrice%>~<%-data.minimum%>~<%-data.maximum%>~<%-data.startDate%>~<%-data.endDate%>~<%-data.ipoCompCode%>"><%-data.ipoName%></option>
									</p>
						        <% });%>
					        <%}else if (_.size(ipoDetailsListDTO)== 1 ) {%>
					        	<% _.each(ipoDetailsListDTO,function(data){ %>
			        				<p>
										<option  value="<%-data.ipoName%>~<%-data.noOfShares%>~<%-data.sharePrice%>~<%-data.minimum%>~<%-data.maximum%>~<%-data.startDate%>~<%-data.endDate%>~<%-data.ipoCompCode%>" selected><%-data.ipoName%></option>
									</p>
						        <% });%>
					       <% }%>
					       </select>
                     </div>
      <!--<input type="button" class="btn btn-success btn-block" id="submit" name="submit" value="<%-$.i18n.t('app.more.estatement.submit')%>"/>-->
   <div id="errorinlist" style="display:none">
               		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.investmentipo.noresult')%></font></p>
	</div>  
       <div class="ipodetailsview" id="ipodetailsview" >
      <div class="dtl_view">

                       <table class="table table-bordered table-striped">
                      <tbody>
 			<% if ( ipoDetailsListDTO.length > 0 ) { %>
                       <tr>
                          <td><%-$.i18n.t('app.more.investmentipo.noofshares')%></td>
                          <td id="noofshares"><%-ipoDetailsListDTO[0].noOfShares%></td>
                      </tr>

                      <tr>
                          <td><%-$.i18n.t('app.more.investmentipo.shareprice')%></td>
                          <td id="shareprice">KWD&nbsp; <%- checkAmount($.formatNumber(ipoDetailsListDTO[0].sharePrice, {format:"#,###.000", locale:"us"}))%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.more.investmentipo.minimum')%></td>
                          <td id="minimum"><%-ipoDetailsListDTO[0].minimum%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.more.investmentipo.maximum')%></td>
                          <td id="maximum"><%-ipoDetailsListDTO[0].maximum%></td>
                      </tr>
                     <tr>
                          <td><%-$.i18n.t('app.more.investmentipo.startdate')%></td>
                          <td id="startdate"><%-ipoDetailsListDTO[0].startDate%></td>
                      </tr>
                     <tr>
                          <td><%-$.i18n.t('app.more.investmentipo.enddate')%></td>
                          <td id="enddate"><%-ipoDetailsListDTO[0].endDate%></td>
                      </tr>
 			<%}%>
                    </tbody></table>

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
	      


  		

       
	   
	 
<div>	 
       <a href="#/wealth" class="btn btn-success btn-block" id="home" name="home"><%-$.i18n.t('app.more.investmentipo.home')%></a>
 </div>   
       </div>     
       </br>     
      </form>
<!--Content Ends Here-->
<%} else{%>
	<div class="alert alert-info">
    	<span class="msg"><%-$.i18n.t('exception.common.norecordsfound')%></span>
    </div>
<% } %>

<script>
  $(document).ready(function(){
  		$(".dropselect").dropselect();
      	<% if ( _.size(ipoDetailsListDTO) == 1 ) {%>
        	$('.ipodetailsview').show();
        <% }else{ %>
        	$('.ipodetailsview').hide();
        <% } %>
      	
    });
</script>                
 <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>               
