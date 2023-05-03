<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = getAccountDTO(); 
	//var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
	//var transHistoryDetail = els.get("tranDetails");
	var ccListDTO = els.get("ccListDTO");
	var pcListDTO = els.get("pcListDTO");
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
			<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.wealth.transactions')%></h4>	
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
	</header>
	<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">

	<div class="contact_sticky_search">
      <div class="form-group m0">
        <div class="input-group">
          <span class="input-group-addon glyphicon glyphicon-search"></span>
		  <input type="text" placeholder="Search Transactions" id="trans_search_box" class="form-control">
		  <span class="search_clear"></span>
        </div>
      </div>
    </div>

	<div class="transferHis" id="trans_history">

		
	</div>
	<div style="text-align:center; font-weight:bold; padding-top:20px;display:none;" class="nocontacts">No Data Found</div>
	<br>
	<div class="spacer20"></div>
	<input type='hidden' id='current_page' />
				<input type='hidden' id='currentpageno' />
				<input type='hidden' id='show_per_page' />
	<nav class="stat_page" aria-label="Page navigation">
		<ul class="pagination" id="page_navigation"></ul>
	</nav>
	
	<div class="spacer20"></div>
	<div class="spacer20"></div>

	<a href="javascript:void(0);" alt="Search" class="add_btn_float" data-toggle="modal" id="transHistory_filterBtn">
		<i class="fa fa-filter" aria-hidden="true"></i>
		<span id="filterBtn">Filter</span>
	</a>

			</section>


            <!-- Modal -->
<div class="modal fade trans_popup" id="transSearch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
		  <div class="trans_search">
		  <h4><%-$.i18n.t('app.more.transhistory.fltr')%></h4>
			<form>


              <div class="form-group">
				<label><%-$.i18n.t('app.more.transhistory.selecttranstype')%></label>
                <div class="custRadio_pass custRadio_medium">
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="transType" id="A" value="A" checked>
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="small">All</span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="transType" id="F" value="F">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="small"><%-$.i18n.t('app.more.transhistory.fundtransfer')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="transType" id="B" value="B">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="small"><%-$.i18n.t('app.more.transhistory.billpayments')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                </div>
              </div>
			  <!-- / form-group-->
			  
			  
			  
				<div class="form-group">
					<label><%-$.i18n.t('app.more.transhistory.selectchannel')%></label>
					<div class="custRadio_pass custRadio_medium">
						<div class="box">
							<div class="radio">
								<label>
									<input type="radio" name="channel" id="Channel_ALL" value="ALL" checked>
									<div class="row bg">
										<div class="col-xs-12 p0">
											<span class="small">All</span>
										</div>
									</div>
								</label>
							</div>
						</div>
						<div class="box">
							<div class="radio">
								<label>
									<input type="radio" name="channel" id="Channel_WEB" value="WEB">
									<div class="row bg">
										<div class="col-xs-12 p0">
											<span class="small">Web</span>
										</div>
									</div>
								</label>
							</div>
						</div>
						<div class="box">
							<div class="radio">
								<label>
									<input type="radio" name="channel" id="Channel_MOB" value="MOB">
									<div class="row bg">
										<div class="col-xs-12 p0">
											<span class="small">Mobile</span>
										</div>
									</div>
								</label>
							</div>
						</div>
					</div>
				</div>
				<!-- / form-group-->

				<div class="form-group">
				  <label><%-$.i18n.t('app.more.transhistory.selectbenetype')%></label>
                  <div class="custRadio_pass transfer_bene" id="beneficiaryType_Id">
                    
                        
                            
                   
                  </div>
                </div>
			    <!-- / form-group-->			

				<div class="form-group beneficiary_Iddisp">
				  <label>Select Beneficiary</label>
				  <select class="form-control " name="beneficiary"  id="beneficiary_Id">
					
				  </select>
				</div>
				<div class='form-group' id='beneErrorDiv' style="display:none;">
					<p class='help-block error-message has-error' style='color:#a94442' id='beneError'></p>
				</div>
				<div class="form-group">
				  <label><%-$.i18n.t('app.more.transhistory.fromacnt')%></label>
				  <select name="fromaccnum" id="From_historyAccount" class="form-control">
                        	
                        </select>
				</div>

			    <!-- <div class="row">
				  <div class="col-xs-6">
					<div class="form-group">
					  <label>From Date</label>
					  <input type="date" name="ftdate" class="form-control">
					</div>
				  </div>
				  <div class="col-xs-6">
					<div class="form-group">
					  <label>To Date</label>
					  <input type="date" name="ftdate" class="form-control">
					</div>
				  </div>
			    </div> -->

				<div class="form-group">
				  <label>Duration</label>
                  <div class="custRadio_pass transfer_bene">
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="duration" id="today" value="today" checked>
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
										<span class="small">Today</span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="duration" id="last7" value="last7">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
										<span class="small">Last Seven Days</span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="duration" id="lastMonth" value="lastMonth">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
										<span class="small">Last Month</span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="duration" id="last3Month" value="last3Month">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
										<span class="small">Last Three month</span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="duration" id="last6Month" value="last6Month">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
										<span class="small">Last Six month</span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="duration" id="last1year" value="last1year">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
										<span class="small">Last One Year</span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
				  </div>
				  <!-- <span class="small">(Select any 3 months from last 1 Year)</span> -->
                </div>
			    <!-- / form-group-->


				

	


			</form>
			<div class="clearfix"></div>  
			<div class="spacer20"></div>

			<div class="row">
				<div class="col-xs-6 pr5">
					<button type="button" class="btn btn-default btn-block" data-dismiss="modal">Cancel</button>
				</div>
				<div class="col-xs-6 pl5">
					<button type="button" id="view_trans_btn" class="btn btn-primary btn-block" data-dismiss="modal">Filter</button>
				</div>
			</div>
			
		</div>
      </div>
    </div>
  </div>
</div>	

<input type = "hidden" id="trigerModaddisClik"/>

<input type = "hidden" id="from_date"/>
<input type = "hidden" id="to_date"/>
		</div>
	</div>
</div>
<script >
function clearError(){
		$("#Fromdateerror").html("");
            $("#todateError").html("");
}

    $('#transSearch').on('shown.bs.modal', function() {
        // do something when the modal is shown
		//alert("testing");
		//$('#trigerModaddisClik').click();

    });

</script>


<script type="text/javascript">
	var show_per_page = 5; 
	var els = new EncryptedLocalStorage('secret');
	var tranback=els.get("tranback");
	console.log("tranback",tranback)
	var totpage= els.get("no_of_pagesTH");
	//var totInPge = els.get("codeNoOFdata")
	//totpage = els.get("no_of_pagesTH");
	console.log("totpage",totpage)

	
	var currentpage= els.get("currentpage");
	currentpage = parseInt(currentpage);
	console.log("currentpage",currentpage)
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
		$('#current_page').val((els.get("no_of_pagesTH")-1));
		//var current_link = els.get("lastpage") - 5;
		var current_link = parseInt($('#current_page').val());
		onPageClick(els.get("no_of_pagesTH")-1);
		go_to_page(els.get("no_of_pagesTH")-1);
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
		var thispage = els.get("no_of_pagesTH") -1;
		if(thispage==els.get("no_of_pagesTH") - 1) {
			$('.page_link[longdesc=' + thispage +']').addClass('active');
		}
	}
	
	function previous() {
		var new_page = parseInt($('#current_page').val()) - 1;
		console.log(new_page)
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
		console.log(new_page)
		if(new_page < els.get("no_of_pagesTH")) {
			console.log(totpage)
			$('#current_page').val(new_page);
			var xx = 0;
			if(number_of_pages>new_page) {
				console.log(number_of_pages)
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
		els.set("pgno",pagen);
		$('#currentpageno').val(pagen);
		var show_per_page = parseInt($('#show_per_page').val());
		start_from = page_num * show_per_page;
		end_on = start_from + show_per_page;
		$('.page_link[longdesc=' + page_num +']').addClass('active').siblings('.active').removeClass('active');
		Backbone.history.navigate("#/showotherpagesTranHistry/"+pagen);
		
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
