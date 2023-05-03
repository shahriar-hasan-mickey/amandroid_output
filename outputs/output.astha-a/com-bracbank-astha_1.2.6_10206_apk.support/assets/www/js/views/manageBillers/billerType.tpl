<%
	var els = new EncryptedLocalStorage('secret');
	var menuList = els.get("menuList");
%>
<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
			<a href="#/wealth" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4>Bill Payments</h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="biller_type">                      
          		<form>
            		<div class="radiobox">
            			<%if(menuList.length > 0) { %>
            				<% _.each(menuList,function(data,index){ %>
		                		<div class="radio">
		                  			<label>
		                    			<input type="radio" name="choice" id="<%- data.id%>" dataval="<%- data.dataLabel%>" value="<%- data.description%>" data="<%- data.code%>">
		                				<div class="box">
		                					<% var code = data.code; %>
		                					<%if(code == "PHN") { %>
		                    					<span class="menu_icon mobile"></span>
		                    				<% } else if(code == "UTILITY") { %>
		                    					<span class="menu_icon utilities"></span>
		                    				<% } else if(code == "INTERNET") { %>
		                    					<span class="menu_icon internet"></span>
		                    				<% } else if(code == "INSURANCE") { %>
		                    					<span class="menu_icon insurance"></span>
		                    				<% } else if(code == "TUITIONFEES") { %>
		                    					<span class="menu_icon tutionfee"></span>
		                    				<% } %>
		                    				<span class="small"><%- data.description%></span>
		                  				</div>
		                  			</label>
		      					</div>
		      				<% }); %>
            			<% } %>				
			  		</div>			  
			 		<div class="clearfix"></div><br>
       				<div class="row">
         				<div class="col-xs-8 col-xs-offset-2">
             				<input type="button" id="manageBillerTypeNextBtn" class="btn btn-primary btn-block" value="Next">
         				</div>
       				</div>
        		</form>                        
     		</section>	
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$(".radiobox .radio:first-child input:first-child").attr("checked",true);
	});
</script>