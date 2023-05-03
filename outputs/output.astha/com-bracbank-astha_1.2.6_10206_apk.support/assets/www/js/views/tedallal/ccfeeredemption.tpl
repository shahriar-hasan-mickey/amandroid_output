                 <%
	var els = new EncryptedLocalStorage('secret');
	var pointsEarnedSinceEnrollment = els.get("pointsEarnedSinceEnrollment");
	var ccdescription =  els.get("ccdescription");
%>
                                 <a href="#/redemofpoints" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.tedallalrewards')%></a></li>
                     <li class="active"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></li>                  </ol>

                    <div class="clearfix"></div>
                  <!-- Breadcrumb Ends Here -->
                          <h3><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></h3>
                                    <br/>


                   <!--Step Control Starts Here-->
                   <div class="newWiz">
	                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.tedallalrewards.input')%></p></div></div>
	                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.tedallalrewards.verify')%></P></div></div>
	                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>
                  </div>
                              <form>
                                <% if ( mycreditcards.length > 0 ) { %>   
                              	<div class="form-group">
                               		<h6><b><%-$.i18n.t('app.tedallalrewards.availablerewards')%>  
                               		<% if(totalCurrentPoints!="0") { %>
         									<%- checkAmount($.formatNumber(totalCurrentPoints, {format:"#,###", locale:"us"}))%>
        							<% } else { %>
         									<%-totalCurrentPoints%>
         							<% }%>
        							</b></h6>
                               	</div>

                         
                           <div class="dropselect" data-title="<%-$.i18n.t('app.tedallalrewards.selectcredit')%>" >
                           <% _.each(mycreditcards,function(data){ %>
                           		<label class="list-group-item">
                                        <input type="radio" value="<%-data.accountNumber%>~<%-data.creditCardNoMasked%>~<%-data.cctypecode%>" name="fromactno"  id="fromactno" checked/>
										<p><span class="nme"><%-data.shortName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
										<p><small class="text-muted"><%- data.creditCardNoMasked %></small><span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span></p>
								</label>
								<% }); %>
                           </div>
                             

                      <div class="infoCont">
                         <ul>
                          <li class="dl">
                                  <p class="lbl"><%-$.i18n.t('app.tedallalrewards.availablerewards')%></p>
                                  <p class="text-right"><% if(totalCurrentPoints!="0") { %>
         									<%- checkAmount($.formatNumber(totalCurrentPoints, {format:"#,###", locale:"us"}))%>
        							<% } else { %>
         									<%-totalCurrentPoints%>
         							<% }%></p>
                          </li>
                          <li class="dl" id="crcode">
                		<p class="amt" id="cccode">
                	<% if ( creditCardCodeDescDTO.length > 0) { %>
                		<p class="lbl"><%-$.i18n.t('app.tedallalrewards.ptsforccfee')%></p>&nbsp&nbsp
                        <span id="cccode"></span>
	             	<% }else{%>
	             		<span class="nme"></span>
	            	<%}%>
            	</p>
			</li>
                         </ul>
                         <div style="display:none" id="pointOveralert" role="alert" class="alert alert-sm alert-danger"><%-$.i18n.t('app.tedallalrewards.pointsmaxvalidationcc')%></div>
                     </div>


  <a class="btn btn-success btn-block" id="submit" name="submit"><%-$.i18n.t('app.tedallalrewards.submit')%></a>
  <a class="btn btn-primary btn-block" href="#/redemofpoints"><%-$.i18n.t('app.tedallalrewards.cancel')%></a>
 <%}else{%>
									<div>
                       					<span class="msg"><%-$.i18n.t('app.tedallalrewards.nocardfound')%></span>
                       				</div>
				             <%}%>     
  </form>
  <script>
	$(document).ready(function()
    {
    	$(".dropselect").dropselect();
        $(".update").hide();
    	$(".editNick").on("click",function()
		{
        	$(".edit").hide();
        	$(".update").show();
        	var nickname =$(".userName span").text();
        	if(nickname!=''){
	    		$('#nicknameid').val(nickname);
		    }
    	});
		$(".updateNick").on("click",function()
     	{
        	var username =$(".nickName input").val();
        	if(username!=""){
		        $('.userName').text(username);
		        $(".update").hide();
		        $('.edit').show();
		        $('#nickerror').hide();
	    	}
     	});
     	$('.cancelNick').on("click",function()
     	{
	        $(".edit").show();
	        $(".update").hide();
	        var nickname =$(".userName span").text();
	        $('#nickerror').hide();
	        if(nickname!=''){
		    	$('#nicknameid').val(nickname);
		    }else{
		    	$('#nicknameid').val('');
		    }
     	});
	});
</script>