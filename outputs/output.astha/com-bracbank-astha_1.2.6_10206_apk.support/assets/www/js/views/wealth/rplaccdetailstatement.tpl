 <%
	var els = new EncryptedLocalStorage('secret');
	var emailidd = els.get("emailid");
	var emailIdCheck = els.get("emailid");
	var accoutDetailType=els.get("accoutDetailType");
	var key = els.get('graphKey_det_stmt');
%>
 
 <a href="#/rpldetails" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
	<!--Breadcrumb Starts Here-->
	<li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	<li><a href="#/rpldetails/-1"><%-$.i18n.t('app.product.general.readycashstatement')%></a></li>
	<li class="active"><%-$.i18n.t('app.product.general.detailstatement')%></li>
</ol>   
<div class="clearfix"></div>
  <div class="accStmt">
           <ul>
            	<%var i=0;%>
            	<%var k=0;%>
             	<% _.each(ministatement,function(data){ %>
	               	<%if(i++<ministatement.length){%> 
	               		<% if ( (data.transactionAmount).substring(0,1)=='-' ) { %>
			            	<li class="dr">
								  <div class="d_msg">
								      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
								      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
								      <p>&nbsp;</p>
								      <p><%-data.narration%></p>
								  </div>
								  <div class="amt">
								      <span class="cur">&nbsp;<%-data.valueDate%></span>
								      <span class="cur">&nbsp;<%-data.transactionDate%></span>
								      <span class="cur"><%-data.currencyCode%></span>
								      <%- checkAmount($.formatNumber((data.transactionAmount).substring(1), {format:"#,###.000", locale:"us"}))%>
								  </div>
							</li>
  						<%}else{%>   
							<li class="cr">
							  <div class="d_msg">
							      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
							      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
							      <p>&nbsp;</p>
							      <p><%-data.narration%></p>
							  </div>
							  <div class="amt">
							      <span class="cur">&nbsp;<%-data.valueDate%></span>
							      <span class="cur">&nbsp;<%-data.transactionDate%></span>
							      <span class="cur"><%-data.currencyCode%></span>
							      <%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
							  </div>
							</li>
			    	<%}%> 
			    <%}%> 
              <% }); %>
              <%k=k+1;%>	
              <% if(_.size(ministatement) == 0){%>
              		<div class="alert alert-info alert-sm">
  						<%-$.i18n.t('exception.common.nostatement')%>
  					</div>
              <% } %>
          </ul>
     </div>
	 <input type="hidden" id="transfertype" name="transfertype">
	 
	<input type='hidden' id='current_page' />
	<input type='hidden' id='currentpageno' />
	<input type='hidden' id='show_per_page' />
	<div id="pagingcontent">
			
	</div>
	
	
	<% if(_.size(ministatement) > 0){%> 
		<div id='page_navigation' class='pageincontentview pull-right' ></div>
	<br/>
	<br/>
	<div class="form-group pull-right">
			<label><%-$.i18n.t('app.product.general.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
			<div class="btn-group">
				<a href="#/rplpdfdownload"   class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></a>
				<a href="#/rplxlsdownload"  class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></a>
			</div>
	</div><div class="clearfix"></div>
	 <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
			<button type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block"><%-$.i18n.t('app.product.accounts.emailadvice')%></button>
	<%}%>
	
	<div id="showNextPage" style="display:none;">
		<button type="button" id="buttonclick" name="buttonclick" >Button Click Event</button>
	</div>
	<% } %>
	
	
	
	<script type="text/javascript">
	var show_per_page = 5; 
	var els = new EncryptedLocalStorage('secret');
	
	var totpage= els.get("lastpage");
	
	var currentpage= els.get("currentpage");
	currentpage = parseInt(currentpage);
	
	totpage=parseInt(totpage);
	var number_of_items = $('#pagenationcontent').children().size();
	var number_of_pages = parseInt(totpage); //Math.ceil(number_of_items/show_per_page);
	
	var crossingpage = 1;
	$('#current_page').val("0");
	$('#show_per_page').val(show_per_page);


	function showPage(show_per_page,loadtype){
			var current_link = parseInt($('#current_page').val());
			
	
			var navigation_html ='';
			
			navigation_html = '<a class="previous_link" href="javascript:previous();"><</a>';
	
			//var current_link = els.get("currentpage");
			if(loadtype=='N'){
				current_link=current_link+1;
			}
			var count = 1;
			while(number_of_pages > current_link){
				if(count<6){
					navigation_html += '<a class="page_link" href="javascript:onPageClick(' + current_link +')" longdesc="' + current_link +'">'+ (current_link+1) +'</a>';
				}
				current_link++;
				count++;
			}
	
			navigation_html += '<a class="next_link" href="javascript:next();">></a>';
			
			$('#page_navigation').html(navigation_html);
			var thispage = currentpage-1;
			if(thispage==0){
					$('.page_link[longdesc=' + thispage +']').addClass('active_page');
			}else{
					if(loadtype=="N"){
						thispage = thispage+1;
						$('#current_page').val(thispage);
						go_to_page(thispage);
					}else if(loadtype=="P"){
						thispage = thispage-1;
						$('#current_page').val(thispage);
						go_to_page(thispage);
					}
			}
			//currentpage++;
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
		var new_page = parseInt($('#current_page').val()) - 1;
		if(new_page>=0){
				$('#current_page').val(new_page);
				var xx = 0;
				 if(new_page>0){
					if( (5 * crossingpage) == (new_page+6) ){
						if(crossingpage>0){
							crossingpage = crossingpage - 1;
						}else{
							crossingpage = 1;
						}
						$('#current_page').val( (new_page-4) );
						showPage(show_per_page,'P');
						currentpage--;
						xx = 1;
					}
				} 
				if(xx==0){
					if($('.active_page').prev('.page_link').length==true){
						go_to_page(new_page);
						currentpage--;
					}
				}
		}
	}

	function next(){
		var new_page = parseInt($('#current_page').val()) + 1;
		
		if(new_page<=totpage){
				$('#current_page').val(new_page);
				var xx = 0;
				if(number_of_pages>new_page){
					if( (5 * crossingpage) == new_page ){
						new_page = parseInt($('#current_page').val())-1;
						$('#current_page').val(new_page);
						showPage(show_per_page,'N');
						crossingpage++;
						currentpage++;
						xx = 1;
					}
				}
				if(xx==0){
					if($('.active_page').next('.page_link').length==true){
						go_to_page(new_page);
						currentpage++;
					}
				}
		}

	}

	function go_to_page(page_num){
$(".accStmt").empty();
		var pagen = parseInt(page_num)+1;
		pagen = pagen +"";
		$('#currentpageno').val(pagen);
		var show_per_page = parseInt($('#show_per_page').val());
		
		start_from = page_num * show_per_page;
		
		end_on = start_from + show_per_page;
		
		//$('#pagenationcontent').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');
		
		$('.page_link[longdesc=' + page_num +']').addClass('active_page').siblings('.active_page').removeClass('active_page');

		Backbone.history.navigate("#/rplshowotherpages/"+pagen);
	}

	function onPageClick(page_num){
		currentpage = page_num;
		$('#current_page').val(page_num);
		currentpage++;
		go_to_page(page_num);
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

	