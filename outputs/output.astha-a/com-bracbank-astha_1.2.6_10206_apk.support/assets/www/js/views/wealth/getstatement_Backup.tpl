
<%
	var els = new EncryptedLocalStorage('secret');
%>
	<!-- Actual content area -->
    <a href="#/statement/<%-accountNumber%>" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
	       <ol class="breadcrumb cust_breadcrumb pull-left">
	            <!--Breadcrumb Starts Here-->
	 			<li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	            <li><a href="#/statement/<%-accountNumber%>"><%-$.i18n.t('app.product.general.statement')%></a></li>
	            <li class="active"><%-$.i18n.t('app.product.general.detailstatement')%></li>
	        </ol>
<form name="paginationoptions">
<input type='hidden' id='current_page' />
<input type='hidden' id='currentpageno' />
<input type='hidden' id='show_per_page' />

    <div class="clearfix"></div><br/>
            
		<div class="clearfix"></div>
			
			<div class="accStmt" id='pagenationcontent' >
              <ul id="page-content">
                  <% _.each(ministatement,function(data){ %>
                     
                       <li class="cr" >
                        	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
                        		<% if( (data.bankReferenceNumber).substring(0,2)=="FT"){ %>
	                        		<a href="#/ftstmttransdetails/<%-data.bankReferenceNumber%>" id="ftrefnum" name="ftrefnum">
	                        	<%}%>	
		                            <div class="d_msg" >
			                                <p class="date"><%-data.transactionDate%></p>
			                                <%if(data.transactionType!=""){%>
						                         <p><%-data.transactionType%></p>
			                            	<%}else{%>
				                            	 <p><%if((data.narration).indexOf("-")!=-1){%>  <%-(data.narration).substring(0,(data.narration).indexOf("-"))%> 
				                            	 <%}else{%><%-data.narration%><%}%>
				                            	 </p>
						                    <%}%>
						                     <% if( (data.bankReferenceNumber).substring(0,2)=="FT"){ %>
							                    <p class="ref">
							                     <input type="hidden" id="ftno" name="ftno" value="<%-data.bankReferenceNumber%>">
					    		                   	<%-data.bankReferenceNumber%>
					    		                </p>
				    		                <%}%>   
		                            </div>
		                            <div class="amt">
		                              	<span class="cur"> 
		                              			<%-accdetail.currency.code%>
		                              	</span>
		                              	<span class="type">
		                              			
		                              	</span>
											<%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
		                            </div>
		                          	<div class="amt1">
		                          		<span class="hdr">
		                          				<%-$.i18n.t('app.product.general.availablebalance')%>
		                          		</span>
		                          		<span class="cur">
		                          				<%-accdetail.currency.code%>
		                          		</span>
		                          				<%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%>
		                          	</div>
	                          	</a>
                       </li>
                  <% }); %>
	              <% if(_.size(ministatement) == 0){%> 
						<h1><%-$.i18n.t('exception.common.nostatement')%></h1>
	              <%}%>
              </ul>
           </div></br>

			
            <input type="hidden" id="accountno" name="accountno" value="<%-account.accountNumber%>">
            <div id='page_navigation' class='pageincontentview pull-right' ></div>
            </br></br>
		    <div class="form-group pull-right">
				<label><%-$.i18n.t('app.product.general.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
				<div class="btn-group">
 					 <button type="button" id="pdfdownload" name="pdfdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></button>
 					 <button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></button>
 					 <button type="button" id="csvdownload" name="csvdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.csv')%></button>
				</div>
			</div>
			<% if(_.size(ministatement) > 0){%>
	  			<input type="button" id="emailadvice" name="emailadvice"  class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%> "> 
	    		<!-- <a href="#/statement/1" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a> -->
	    	<% } %>
             <br/>
              
             <div id="showNextPage" style="display:none;">
             	<input type="button" id="buttonclick" name="buttonclick">
             </div>

</form>


<script type="text/javascript">

	
	//how much items per page to show
	var show_per_page = 5; 
	var els = new EncryptedLocalStorage('secret');
	
	var totpage=els.get("lastpage");
	
	var currentpage=els.get("currentpage");
	currentpage = parseInt(currentpage);
	
	totpage=parseInt(totpage);
	//getting the amount of elements inside content div
	var number_of_items = $('#pagenationcontent').children().size();
	//calculate the number of pages we are going to have
	var number_of_pages = parseInt(totpage); //Math.ceil(number_of_items/show_per_page);
	
	var crossingpage = 1; 
	//set the value of our hidden input fields
	$('#current_page').val(0);
	$('#show_per_page').val(show_per_page);


function showPage(show_per_page,loadtype){
	//now when we got all we need for the navigation let's make it '
	
	/* 
	what are we going to have in the navigation?
		- link to previous page
		- links to specific pages
		- link to next page
	*/
	var navigation_html = '<a class="previous_link" href="javascript:previous();"><</a>';
	var current_link = parseInt($('#current_page').val());
	//var current_link = els.get("currentpage");
	if(loadtype=='N'){
		current_link=current_link+1;
	}
	var count = 1;
	while(number_of_pages > current_link){
		if(count<6){
			navigation_html += '<a class="page_link" href="javascript:go_to_page(' + current_link +')" longdesc="' + current_link +'">'+ (current_link+1) +'</a>';
		}
		current_link++;
		count++;
	}
	navigation_html += '<a class="next_link" href="javascript:next();">></a>';

	
	$('#page_navigation').html(navigation_html);
	var thispage = currentpage-1;
	$('.page_link[longdesc=' + thispage +']').addClass('active_page');
	
	
	//alert("currentpage : "+thispage + " : loadtype : "+loadtype);
	
	if(loadtype=='P'){
		//add active_page class to the first page link
		//$('#page_navigation .page_link:last').addClass('active_page');
	}else{
		//add active_page class to the first page link
		//$('#page_navigation .page_link:first').addClass('active_page');
		
		//hide all the elements inside content div
		//$('#pagenationcontent').children().css('display', 'none');
		
		//and show the first n (show_per_page) elements
		//$('#pagenationcontent').children().slice(0, show_per_page).css('display', 'block');
	}
	
	
}


function previous(){
	new_page = parseInt($('#current_page').val()) - 1;
	if(new_page<=0){
		new_page=0;
	}
	 if(new_page>0){
		if( (5 * crossingpage) == (new_page+6) ){
			if(crossingpage>0){
				crossingpage = crossingpage - 1;
			}else{
				crossingpage = 1;
			}
			$('#current_page').val( (new_page-4) );
			showPage(show_per_page,'P');
		}
	} 
	
	//if there is an item before the current active link run the function
	if($('.active_page').prev('.page_link').length==true){
		go_to_page(new_page);
	}
}

function next(){
	new_page = parseInt($('#current_page').val()) + 1;
	if(number_of_pages>new_page){
		if( (5 * crossingpage) == new_page ){
			new_page = parseInt($('#current_page').val()) + 1;
			showPage(show_per_page,'N');
			crossingpage++;
		}
	}
	//if there is an item after the current active link run the function
	if($('.active_page').next('.page_link').length==true){
		go_to_page(new_page);
	}
	
}

function go_to_page(page_num){
	
	var pagen = parseInt(page_num)+1;
	pagen = pagen +"";
	$('#currentpageno').val(pagen);

	//get the number of items shown per page
	var show_per_page = parseInt($('#show_per_page').val());
	//var show_per_page = parseInt($('.pagecontent').val());
	
	//get the element number where to start the slice from
	start_from = page_num * show_per_page;
	
	//get the element number where to end the slice
	end_on = start_from + show_per_page;
	
	//hide all children elements of content div, get specific items and show them
	//$('#pagenationcontent').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');
	
	/*get the page link that has longdesc attribute of the current page and add active_page class to it
	and remove that class from previously active page link*/
	$('.page_link[longdesc=' + page_num +']').addClass('active_page').siblings('.active_page').removeClass('active_page');
	
	//var currentpagenoshow= page_num+1
	//update the current page input field
	
		
	$('#buttonclick').trigger("click");

           
}

showPage(show_per_page,'F');
</script>
<style>
#page_navigation a{
	padding:3px;
	border:1px solid #00AB96;
	margin:2px;
	color:black;
	text-decoration:none
}
.active_page{
	background:#00AB96;
	color:white !important;
}
</style>

