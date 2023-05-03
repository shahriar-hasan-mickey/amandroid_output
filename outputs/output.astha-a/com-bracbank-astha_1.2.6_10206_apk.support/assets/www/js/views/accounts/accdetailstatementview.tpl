<%
	var els = new EncryptedLocalStorage('secret'); 
	var id = els.get("cardId");
	var email = els.get("emailId");
		var pwdpolicy = els.get("pwdpolicy");
		var Stype=els.get("Stype");
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
			<% if(els.get("isFromStatementDwld") == "true") { %>
				<a href="#/stmtdwlddetailstatement" id="acccbackbutton" class="bacArr">
			<% } else { %>
				<a href="#/detailedstatement/<%- id %>" id="acccbackbutton" class="bacArr">			
			<% } %>
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
			<h4 class="p10"><%-$.i18n.t('app.accounts.detailedstatement')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
    			<h3 class="tab-head"><%-$.i18n.t('app.accounts.detailedstatements')%>
    				<div class="dropdown pull-right">
				        	<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            					<span class="glyphicon glyphicon-option-vertical" aria-hidden="true"></span>
          					</button>
          					<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
          					<%if(Stype != "B" ){%>
	        					<li><a href="javascript:void(0);" id="shareHistory"><%-$.i18n.t('app.accounts.sharehistory')%></a></li>
	            				<%}else{%>
	            				<li><a href="javascript:void(0);" id="shareBtn"><%-$.i18n.t('app.accounts.share')%></a></li>
	            				<li><a href="javascript:void(0);" id="shareHistory"><%-$.i18n.t('app.accounts.sharehistory')%></a></li>
	            				<li><a href="javascript:void(0);" id="dwldDetailPDF"><%-$.i18n.t('app.accounts.dwldpdf')%></a></li>
	            				<%}%>
	            				<!--<li><a href="javascript:void(0);"><%-$.i18n.t('app.accounts.dwldexcel')%></a></li>-->
          					</ul>
        				</div>
    			</h3>
				<input type='hidden' id='current_page' />
				<input type='hidden' id='currentpageno' />
				<input type='hidden' id='show_per_page' />
				<div id="pagingcontent"></div>
				<nav class="stat_page" aria-label="Page navigation">
					<ul class="pagination" id="page_navigation"></ul>
				</nav>
				<br/>
			</section>
			<div class="modal fade modernPOP shareme" id="shareme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  				<div class="modal-dialog modal-lg" role="document">
      				<div class="modal-content">
          				<div class="modal-header">
              				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  				<span aria-hidden="true">&times;</span>
              				</button>
              				<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.accounts.sharestmt')%></h4>
      					</div>
          				<div class="modal-body">
          					<div class="form-group custRadio_small">
                  				<label for="username"><%-$.i18n.t('app.accounts.sendto')%></label>
              					<div class="custRadio_pass modal-radio">
                  					<div class="box">
                      					<div class="radio">
                          					<label>
                              					<input type="radio" name="mailOptions" id="myMail" value="myMail">
                              					<div class="row bg">
                                  					<div class="col-xs-12 p0">
                                      					<span class="menu_icon ico-xs mail"></span>
                                      					<span class="small"><%-$.i18n.t('app.accounts.mymail')%></span>
                                  					</div>
                              					</div>
                          					</label>
                      					</div>
                  					</div>
                      				<div class="box">
                          				<div class="radio">
                              				<label>
                                  				<input type="radio" name="mailOptions" id="otherMail" value="otherMail">
                              					<div class="row bg">
                                      				<div class="col-xs-12 p0">
                                          				<span class="menu_icon ico-xs mail"></span>
                                          				<span class="small"><%-$.i18n.t('app.accounts.othermail')%></span>
                                      				</div>
                                  				</div>
                              				</label>
                          				</div>
                      				</div>
              					</div>
              				</div>
              				<div class="clearfix"></div>
              				<div class="mymail" id="myMailDiv">
                  				<div class="alert alert-info small">
                      				<small><%-$.i18n.t('app.accounts.mymailinfo')%></small> <%- email%>
                      			</div>
                  			</div>
              				<div class="othermail" id="otherMailDiv">
                  				<div class="form-group">
                  					<label><%-$.i18n.t('app.accounts.emailaddress')%></label>
                      				<input type="text" autocomplete='off' id="emailId" name="emailId" style="text-indent: 10px;" class="form-control" />
              					</div>
              					<div class="form-group has-error" id="emailNullErrorDiv" style="display:none">
									<p class="help-block error-message has-error" style="color:#a94442" id="emailNullError"></p>
				 				</div>
                  				<div class="form-group">
                  					<label><%-$.i18n.t('app.accounts.setpassword')%></label>
                      				<i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" id="usernametip"></i>
                      				<input type="password" autocomplete='off' id="passwd" name="passwd" style="text-indent: 10px;" class="form-control restrictCpyPst" minlength="8" maxlength="20"/>
                  				</div>
                  				<div class="form-group has-error" id="PwdNullErrorDiv" style="display:none;">
									<p class="help-block error-message has-error" style="color:#a94442" id="PwdNullError"></p>
				 				</div>
              				</div>
          				</div>
          				<div class="modal-footer">
              				<button type="button" class="btn btn-default btn-block" id="DS_sendBtn1"><%-$.i18n.t('app.accounts.send')%></button>
          				</div>
      				</div>
  				</div>
			</div>

			<div class="modal fade modernPOP" id="usernameTips" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    			<div class="modal-dialog" role="document">
    				<form>
            			<div class="modal-content">
                			<div class="modal-body">
                    			<p class="text-center">
                        			<span class="ico-circle center-block">
                        				<span class="menu_icon ico-2x alert"></span>
                    				</span>
                    			</p>
                    			<!--<h4 class="text-center"><%-$.i18n.t('app.registration.passwordtiplabel')%></h4>-->
                				<ul class="list-unstyled checkstyle">
									<li class="list-group-item"><%-$.i18n.t('app.registration.passwordtiptext')%></li>
                    			</ul>
                			</div>
                			<div class="modal-footer">
                    			<button type="button" class="btn btn-default btn-block" id="ok"><%-$.i18n.t('app.accounts.ok')%></button>
                			</div>
        				</div>
        			</form>
    			</div>
			</div>

			<div class="modal fade modernPOP" id="mailSent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  				<div class="modal-dialog" role="document">
      				<div class="modal-content">
          				<div class="modal-body clearfix text-center">
              				<br />
              				<p class="text-center">
                  				<span class="ico-circle center-block">
                      				<span class="menu_icon ico-2x check"></span>
                  				</span>
              				</p>
              				<h3><%-$.i18n.t('app.accounts.mailsent')%>!</h3>
              				<p class="text-center"><%-$.i18n.t('app.accounts.mailsuccmsg')%></p>
              				<button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('app.accounts.ok')%></button>
          				</div>
      				</div>
  				</div>
			</div>
		</div>
	</div>
</div>

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
		Backbone.history.navigate("#/showotherpages/"+pagen);
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
<script>
	$(document).ready(function(){
		DisableCopyPaste();
	});
</script>

