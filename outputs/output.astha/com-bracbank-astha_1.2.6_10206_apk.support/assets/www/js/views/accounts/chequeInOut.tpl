<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = els.get("casaAccountDetail");
	var category = els.get("accountCategory");
	var id = els.get("cardId");
	var email = els.get("emailId");
	var status = els.get("casaStatus");
	var chequeInOutDTO = els.get("chequeTransactionDetailDTO");
%>
<div class="pagewrapper" id="appwrapper" >
	<aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
              <img src="images/common/user_default1.png" class="profPic img-circle"> 
            </div>
            <div>
              <p class="profilename"></p>
              <p class="small info" >Last login: <span id="lastlogin"></span></p>
			<p class="small info fail" >Last failure login: <span id="lastfaillogin"></span></p>
            </div>            
        </div>
		<nav>
			<ul>
      			<li class="active"><a href="#/wealth" id="dashboard"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%></a></li>
      			<li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="javascript:void(0);"><span class="ico account"></span><%-$.i18n.t('app.menu.products')%></a></li>        
      			<ul class="collapse" id="accounts">
        			<li><a href="javascript:void(0);" id="slide_out_savings"><%-$.i18n.t('app.wealth.accounts')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_deposits"><%-$.i18n.t('app.wealth.termdeposit')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_creditcard"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
				<li><a href="javascript:void(0);" id="slide_out_prepaidcard"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_loan"><%-$.i18n.t('app.wealth.loans')%></a></li>
      			</ul>
      			<li><a href="javascript:void(0);" id="slide_out_statementCertificate"><span class="ico statement_cert"></span>Statement &amp; Certificates</a></li>
      			<li><a href="javascript:void(0);" id="slide_out_transfers"><span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a></li>
      			<li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode"><a href="javascript:void(0);"><span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_positivePay"><span class="ico positive_pay"></span>Positive Pay</a></li>
			<li><a href="javascript:void(0);" id="slide_out_billpay"><span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_managebene"><span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transactions"><span class="ico transactions"></span><%-$.i18n.t('app.wealth.transactions')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transferlimit"><span class="ico transferLimit"></span><%-$.i18n.t('app.more.general.transferlimit')%></a></li>
      			<!--<li><a href="javascript:void(0);" id="manage_biller"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slide_out_services"><span class="ico service"></span><%-$.i18n.t('app.wealth.servicereq')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_user_settings"><span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%></a></li>
      			<!--<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.payreminder')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slideout_more"><span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%></a></li>
			<li><a href="javascript:void(0);" id="slideout_contact" onclick="postLogRedir()"><span class="ico contacts"></span>Contact Us</a></li>   
      			<li><a href="javascript:void(0);" id="logout" class="btn-logout"><span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%></a></li>
			</ul>
    	</nav>
	</aside>
	<div id="ovrlay"></div>
	<header class="appheader">
		<div class="headerLeft">
			<button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="javascript:void(0);" id="incBackBtn" class="bacArr">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
    		<% if(els.get("chqType") == "IN") { %>
  				<h4 class="p10"><%-$.i18n.t('app.accounts.inccomingcheque')%></h4>
			<%  }  else if(els.get("chqType") == "OUT") { %>
				<h4 class="p10"><%-$.i18n.t('app.accounts.outgoingcheque')%></h4>
			<% } %>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="account">
    			<div class="dashTab accDet">
      				<div class="vc-card">
        				<ul class="list-unstyled">
  							<li>
    							<a href="#/accountstatement/<%- id %>" id="getcardstmt1">
      								<div class="card card-default acc">
    									<p class="text-right m0">
      										<span class="logo-xs"></span>
        								</p>
										<p class="name"><%- els.get("cardHolderName")%></p>
        								<% if( category == "SBA" ) { %>
        									<p class="numb small text-muted"><%- myaccounts.accountNumber%> | Savings Account </p>
        								<% } else if(category == "CAA") { %>
        									<p class="numb small text-muted"><%- myaccounts.accountNumber%> | Current Account </p>
        								<% } %>
        								<!--<div class="amt">
                                			<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>                                		
											
                                			<span class="num"><%- checkAmount($.formatNumber(myaccounts.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- myaccounts.currencyCode %></span> 
											
                            			</div>-->

										<% if(els.get("avlBalance") >= 0) { %>
										<div class="amt pos">
											<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>                                		
										<% if(status != "D"){ %>
                                			<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 
										<% }else{ %>
											<span class="num zer"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 	
										<% } %>
										</div>	
										<% } else if( els.get("avlBalance") < 0){ %>
										<div class="amt neg">
											<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>                                		
											<% if(status != "D"){ %>
                                			<span class="num neg"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 
											<% }else{ %>
											<span class="num zer"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 	
											<% } %>
										</div>	
											
										<% } %>
									<% if(status == "I" ) { %>
                        				<div class="corner-ribbon top-right small label-danger">Inactive</div>
                        			<% } else if(status == "A") {  %>
                        				<div class="corner-ribbon top-right small label-success">Active</div>
                        			<% } else if(status == "D"){ %>
										<div class="corner-ribbon top-right small label-default">DORMANT</div>
									<% } %>	
                            			<div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                            		</div>
    							</a>
							</li>
        				</ul>
      				</div>
    			</div>
    			<div class="links">
      				<a href="#/detailedstatement/<%- id %>" id="detailstmt"><%-$.i18n.t('app.accounts.detailedstatement')%></a>
      				<!--<a href="javascript:void(0);" id="expensesummary"><%-$.i18n.t('app.accounts.expensesummary')%></a>-->
      				<a href="javascript:void(0);" id="incomingChqBtn"><%-$.i18n.t('app.accounts.inccomingcheque')%> <span class="badge"><%- els.get("incomingchequeCount")%></a>
      				<a href="javascript:void(0);" id="outgoingChqBtn"><%-$.i18n.t('app.accounts.outgoingcheque')%> <span class="badge"><%- els.get("outgoingchequeCount")%></a>
      				<a href="javascript:void(0);" id="chqbtn"><%-$.i18n.t('app.accounts.chequehistory')%></a>
				</div>
    			<div class="state-wrap">
    				<% if(els.get("chqType") == "IN") { %>
	      				<h3 class="tab-head"><%-$.i18n.t('app.accounts.inccomingcheque')%></h3>
      				<%  }  else if(els.get("chqType") == "OUT") { %>
      					<h3 class="tab-head"><%-$.i18n.t('app.accounts.outgoingcheque')%></h3>
      				<% } %>
      				
      				<input type='hidden' id='current_page' />
					<input type='hidden' id='currentpageno' />
					<input type='hidden' id='show_per_page' />
					<div id="pagingcontent"></div>
					<nav class="stat_page" aria-label="Page navigation">
						<ul class="pagination" id="page_navigation"></ul>
					</nav>				
					<br/>
				</div>
	  		</section>
		</div>
	</div>
</div>

<script>
	$(document).ready(function(){
		DisableCopyPaste();
	});
</script>
<script type="text/javascript">
	var show_per_page = 5; 
	var els = new EncryptedLocalStorage('secret');
	var tranback=els.get("tranback");
	var totpage= els.get("lastpage");
	
	var currentpage= els.get("currentpage");
	currentpage = parseInt(currentpage);
	var pageno=els.get("pageno");
	page_no=parseInt(pageno)-1;
	
	totpage=parseInt(totpage);
	var number_of_items = $('#pagenationcontent').children().length;
	var number_of_pages = parseInt(totpage); //Math.ceil(number_of_items/show_per_page);
	
	var currentPage=Math.floor((page_no+1)/5);
	var setPage=currentPage*5;
	$('#current_page').val(setPage);
	var crossingpage = 1;
	$('#show_per_page').val(show_per_page);

	function showPage(show_per_page,loadtype){
		var current_link = parseInt($('#current_page').val());
	  
		$('#current_page').val(page_no);
		var navigation_html ='';
		
		navigation_html = '<li>'
				+'<a href="javascript:first();" aria-label="first">'
					+'<span aria-hidden="true"><i class="fa fa-step-backward" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>'
			+'<li>'
				+'<a href="javascript:previous();" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span></a>'
			+'</li>';

		var count = 1;
		while(number_of_pages > current_link) {
			if(count<6) {
				navigation_html += '<li class="page_link" longdesc="' + current_link +'"><a href="javascript:onPageClick(' + current_link +')">'+(current_link+1)+'</a></li>';
			}
			current_link++;
			count++;
		}
		navigation_html += '<li>'
				+'<a href="javascript:next();" aria-label="Next">'
					+'<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>'
			+'<li>'
				+'<a href="javascript:last();" aria-label="Last">'
					+'<span aria-hidden="true"><i class="fa fa-step-forward" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>';
		$('#page_navigation').html(navigation_html);
		$("#page_navigation").show();
		var thispage = currentpage-1;
		if(thispage==0) {
				$('.page_link[longdesc=' + thispage +']').addClass('active');
		} else {
			if(loadtype=="N") {
				thispage = thispage+1;
				$('#current_page').val(thispage);
				go_to_page(thispage);
			} else if(loadtype=="P") {
				thispage = thispage-1;
				$('#current_page').val(thispage);
				go_to_page(thispage);
			}
		}
	}

	function first() {
		var navigation_html ='';
		var current_link = 0;
		$('#current_page').val(0);
		onPageClick(0);
		go_to_page(0);
		navigation_html = '<li>'
				+'<a href="javascript:first();" aria-label="first">'
					+'<span aria-hidden="true"><i class="fa fa-step-backward" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>'
			+'<li>'
				+'<a href="javascript:previous();" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span></a>'
			+'</li>';
		var count = 1;
		while(number_of_pages > current_link) {
			if(count<6) {
				navigation_html += '<li class="page_link" longdesc="' + current_link +'"><a href="javascript:onPageClick(' + current_link +')">'+(current_link+1)+'</a></li>';
			}
			current_link++;
			count++;
		}
		navigation_html += '<li>'
				+'<a href="javascript:next();" aria-label="Next">'
					+'<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>'
			+'<li>'
				+'<a href="javascript:last();" aria-label="Last">'
					+'<span aria-hidden="true"><i class="fa fa-step-forward" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>';
		$('#page_navigation').html(navigation_html);
		$("#page_navigation").show();
		var thispage = 0;
		if(thispage == 0) {
			$('.page_link[longdesc=' + thispage +']').addClass('active');
		}
	}
	
	function last() {
		var navigation_html ='';
		$('#current_page').val((els.get("lastpage")-1));
		//var current_link = els.get("lastpage") - 5;
		var current_link = parseInt($('#current_page').val());
		onPageClick(els.get("lastpage")-1);
		go_to_page(els.get("lastpage")-1);
		navigation_html = '<li>'
				+'<a href="javascript:first();" aria-label="first">'
					+'<span aria-hidden="true"><i class="fa fa-step-backward" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>'
			+'<li>'
				+'<a href="javascript:previous();" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span></a>'
			+'</li>';
		var count = 1;
		while(number_of_pages > current_link) {
			if(count<6) {
				navigation_html += '<li class="page_link" longdesc="' + current_link +'"><a href="javascript:onPageClick(' + current_link +')">'+(current_link+1)+'</a></li>';
			}
			current_link++;
			count++;
		}
		navigation_html += '<li>'
				+'<a href="javascript:next();" aria-label="Next">'
					+'<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>'
			+'<li>'
				+'<a href="javascript:last();" aria-label="Last">'
					+'<span aria-hidden="true"><i class="fa fa-step-forward" aria-hidden="true"></i></span>'
				+'</a>'
			+'</li>';
		$('#page_navigation').html(navigation_html);
		$("#page_navigation").show();
		var thispage = els.get("lastpage") -1;
		if(thispage==els.get("lastpage") - 1) {
			$('.page_link[longdesc=' + thispage +']').addClass('active');
		}
	}
	
	function previous() {
		var new_page = parseInt($('#current_page').val()) - 1;
		if(new_page>=0) {
			$('#current_page').val(new_page);
			var xx = 0;
			if(new_page>0) {
				if((5 * crossingpage) == (new_page+6)) {
					if(crossingpage>0) {
						crossingpage = crossingpage - 1;
					} else {
						crossingpage = 1;
					}
					$('#current_page').val( (new_page-4));
					showPage(show_per_page,'P');
					currentpage--;
					xx = 1;
				} else if(tranback=="9") {
					showPage(show_per_page,'P');
					onPageClick(new_page);
				}
			} 
			if(xx==0) {
				if($('.active').prev('.page_link').length==true) {
					go_to_page(new_page);
					currentpage--;
				} else {
					var navigation_html ='';
					var current_link = parseInt($('#current_page').val());
					go_to_page(new_page);
					navigation_html = '<li>'
							+'<a href="javascript:first();" aria-label="first">'
								+'<span aria-hidden="true"><i class="fa fa-step-backward" aria-hidden="true"></i></span>'
							+'</a>'
						+'</li>'
						+'<li>'
							+'<a href="javascript:previous();" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span></a>'
						+'</li>';
					var count = 1;
					while(number_of_pages > current_link) {
						if(count<6 ) {
							navigation_html += '<li class="page_link" longdesc="' + current_link +'"><a href="javascript:onPageClick(' + current_link +')">'+(current_link+1)+'</a></li>';
						}
						current_link++;
						count++;
					}
					navigation_html += '<li>'
							+'<a href="javascript:next();" aria-label="Next">'
								+'<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>'
							+'</a>'
						+'</li>'
						+'<li>'
							+'<a href="javascript:last();" aria-label="Last">'
								+'<span aria-hidden="true"><i class="fa fa-step-forward" aria-hidden="true"></i></span>'
							+'</a>'
						+'</li>';
					$('#page_navigation').html(navigation_html);
					$("#page_navigation").show();
					var thispage = new_page;
					if(thispage == new_page) {
						$('.page_link[longdesc=' + thispage +']').addClass('active');
					}
				}
			}
		}
	}

	function next() {
		var new_page = parseInt($('#current_page').val()) + 1;
		if(new_page < totpage) {
			$('#current_page').val(new_page);
			var xx = 0;
			if(number_of_pages>new_page) {
				if( (5 * crossingpage) == new_page ){
					new_page = parseInt($('#current_page').val())-1;
					$('#current_page').val(new_page);
					showPage(show_per_page,'N');
					crossingpage++;
					currentpage++;
					xx = 1;
				} else if(tranback=="9") {
					showPage(show_per_page,'N');
					onPageClick(new_page);
				}
			}
			if(xx==0) {
				if($('.active').next('.page_link').length==true) {
					go_to_page(new_page);
					currentpage++;
				} else {
					var navigation_html ='';
					var current_link = parseInt($('#current_page').val());
					go_to_page(new_page);
					navigation_html = '<li>'
							+'<a href="javascript:first();" aria-label="first">'
								+'<span aria-hidden="true"><i class="fa fa-step-backward" aria-hidden="true"></i></span>'
							+'</a>'
						+'</li>'
						+'<li>'
							+'<a href="javascript:previous();" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span></a>'
						+'</li>';
					var count = 1;
					while(number_of_pages > current_link) {
						if(count<6) {
							navigation_html += '<li class="page_link" longdesc="' + current_link +'"><a href="javascript:onPageClick(' + current_link +')">'+(current_link+1)+'</a></li>';
						}
						current_link++;
						count++;
					}
					navigation_html += '<li>'
							+'<a href="javascript:next();" aria-label="Next">'
								+'<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>'
							+'</a>'
						+'</li>'
						+'<li>'
							+'<a href="javascript:last();" aria-label="Last">'
								+'<span aria-hidden="true"><i class="fa fa-step-forward" aria-hidden="true"></i></span>'
							+'</a>'
						+'</li>';
					$('#page_navigation').html(navigation_html);
					$("#page_navigation").show();
					var thispage = new_page;
					if(thispage == new_page) {
						$('.page_link[longdesc=' + thispage +']').addClass('active');
					}
				}
			}
		}
	}
	
	function go_to_page(page_num){
		var pagen = parseInt(page_num)+1;
		pagen = pagen +"";
		$('#currentpageno').val(pagen);
		var show_per_page = parseInt($('#show_per_page').val());
		start_from = page_num * show_per_page;
		end_on = start_from + show_per_page;
		$('.page_link[longdesc=' + page_num +']').addClass('active').siblings('.active').removeClass('active');
		Backbone.history.navigate("#/chqueinoutpagination/"+pagen);
	}

	function onPageClick(page_num){
		if(!$('.page_link[longdesc=' + page_num +']').hasClass("active")) {
			currentpage = page_num;
			$('#current_page').val(page_num);
			currentpage++;
			go_to_page(page_num);
		}
	}
	showPage(show_per_page,'F');
</script>
