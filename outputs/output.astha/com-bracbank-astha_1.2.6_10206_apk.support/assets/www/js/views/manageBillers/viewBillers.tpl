<%
	var els = new EncryptedLocalStorage('secret');
	var billerInstruction = els.get("billerInstruction");
	var selectedBillerTypeName = els.get("selectedBillerTypeName");
	var selectedBillerListId = els.get("selectedBillerListId");
	var selectedBillerListCode = els.get("selectedBillerListCode");
	var selectedBillerListName = els.get("selectedBillerListName");
	var selectedBillerDateLabel = els.get("selectedBillerDateLabel");
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
  			<%if(els.get("isTransfer") == "true") { %>
  				<a href="#/selectbillpayPage" class="bacArr">
  			<%} else {%>
  				<a href="#/viewbillerlist" class="bacArr">
  			<% } %>
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4>Pay <%- els.get("selectedBillerListName")%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
				<%if(billerInstruction.length > 0) { %>
	        		<h4>Select Biller</h4>
	    			<form>    
		        		<div class="radio-list">
		        			<% _.each(billerInstruction,function(data,index){ %>
			            		<div class="radio">
			                		<label>
			                			<input type="radio" class="selectBiller" data="<%- index%>" code="<%- data.code%>" name="<%- data.shortName%>" value="<%- data.mobileNumber%>" id="<%- data.id%>"/>
			                			<div class="radio-wrap">
			                    			<div class="row">
			                        			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			                            			<img src="images/brand/biller/<%- selectedBillerListCode%>.png" class="radiothumb">
			                            			<div class="radiobody">
			                                			<p class="title_txt"><%- selectedBillerListName%></p>
			                                			<p><span class="small text-muted"><%- selectedBillerDateLabel%>: </span><span><%- data.mobileNumber%></span></p>
			                            			</div>
			                        			</div>
			                    			</div>
			                			</div>
			            			</label>
			        			</div>
		        			<% }); %>
		    			</div>
					</form> 
				<% } else { %>
					<br>
		            <br>
		            <br>
		            <span class="menu_icon2 ico1x verify"></span>
		            <br>
		            <p class="text-center">Your registered billers will get displayed here</p>
		            <p class="text-center">To register for a new biller,</p>
		            <p class="text-center">click <b>‘Add Biller’</b></p>
		            <br>
		            <br>
		            <br>
		            <br>
				<% } %>   
    			<div class="clearfix"></div>
    			<div class="row">
      				<div class="col-xs-8 col-xs-offset-2">
          				<a href="javascript:void(0);" class="btn btn-primary btn-block" id="addBillerBtn_Manage">Add <%- selectedBillerDateLabel%></a>    
      				</div>
    			</div>
			</section>	
		</div>
	</div>
</div>
