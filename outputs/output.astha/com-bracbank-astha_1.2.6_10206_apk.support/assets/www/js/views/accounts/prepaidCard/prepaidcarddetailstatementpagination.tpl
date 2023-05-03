<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccountslist;
	try{
	    myaccountslist = els.get("myaccountsaccdetaillist");
	}catch(e){
		myaccountslist = "";
	}
	console.log("myaccountslist",myaccountslist);
	var email = els.get("emailId");
%>
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="prepaidstmt" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.prepaidcard.prepaidcard')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content" id="prepaid">
    <!--Content Starts Here-->
    <div class="dashTab">
        <div class="vc-card">
            <ul class="list-unstyled">
           
                <li>
                    <a href="javascript:void(0);" id="prepaidview">
                        <div class="card card-default acc card-CC card-CC-gold visa-CC">
                            <p class="m0"><%- myaccountslist.productName%>
                                <span class="logo-xs pull-right"></span>
                            </p>
                            <span class="menu_icon chip pull-left"></span>
                            <br/>
                            <strong><%- myaccountslist.cardHolderName%></strong>
                            <div class="clearfix"></div>
                            <h4 class="ac-num text-muted text-center">
                                <%- myaccountslist.accountNumber%>
                            </h4>
                            <div class="amt">
                                <p class="small m0 text-muted">Outstanding Balance</p>
                                <span class="num"><%- myaccountslist.availableBalance %>
                                 
                                </span>
                                <span class="small cur dCur text-muted"><%- myaccountslist.currencyCode %></span>
                            </div>
                            <div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                        </div>
                    </a>
                </li>
                
            </ul>
        </div>
    </div>
    <div class="links">
        <a href="" data-toggle="modal" data-target="#expenseSum"><%-$.i18n.t('app.ccstatement.financialsummary')%></a>
    </div>    
    <div class="state-wrap">    
        <!-- statement-->
        <!-- Nav tabs -->
        <!-- Tab panes -->
        <!-- Tab panes -->
        <h3 class="dropdown tab-head">
            <button class="billedStm" id="unbill" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <%- $.i18n.t('button.prepaidcard.currentmonth') %>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="unbill">
                <li>
                    <a href="prepaidCard.html"><%- $.i18n.t('button.prepaidcard.currentmonth') %></a>
                </li>
                <li>
                    <a href="prepaidCardRecharge.html"><%-$.i18n.t('app.prepaidcard.recharges')%></a>
                </li>
            </ul>
            <div class="dropdown pull-right">
                <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-option-vertical"></span>
                </button>
                <ul class="dropdown-menu">
                            <li>
                            <a href="javascript:void(0);"><%-$.i18n.t('app.creditcardstmt.do1')%></a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><%-$.i18n.t('app.creditcardstmt.do2')%></a>
                    </li>
                </ul>
            </div>
        </h3>    
        <ul class="list-group state-list txnSum">
            <li class="list-group-item">
                <div class="dater small text-muted">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
                <p>Wordsworth Book Store</p>
                <p class="text-muted small">A23FG0008</p>
                <div class="amt neg text-right">
                    <span class="type">Dr </span>
                    <span class="num">5,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="cur">BDT</span>
                </div>
            </li>
            <li class="list-group-item">
                <div class="dater small text-muted">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
                <p>Wordsworth Book Store</p>
                <p class="text-muted small">ATBP8810</p>
                <div class="amt neg text-right">
                    <span class="type">Dr </span>
                    <span class="num">5,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="cur">BDT</span>
                </div>
            </li>
            <li class="list-group-item">
                <div class="dater small text-muted">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
                <p>Prepaid card payment</p>
                <p class="text-muted small">CCP0021408</p>
                <div class="amt pos text-right">
                    <span class="type">Cr </span>
                    <span class="num">5,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="cur">BDT</span>
                </div>
            </li>
            <li class="list-group-item">
                <div class="dater small text-muted">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
                <p>Prepaid card payment</p>
                <p class="text-muted small">CCP0021132</p>
                <div class="amt pos text-right">
                    <span class="type">Cr </span>
                    <span class="num">5,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="cur">BDT</span>
                </div>
            </li>
        </ul>
        <!-- / statement-->
    </div>
    <!-- / state-wrap-->
</section>
<!-- shareme -->
<div class="modal fade modernPOP shareme" id="shareme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document" style="min-width:90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.creditcardstmt.sharestatement')%></h4>
            </div>
            <div class="modal-body">
                <div class="form-group custRadio_small">
                    <label for="username"><%-$.i18n.t('app.creditcardstmt.sendto')%></label>
                    <div class="custRadio_pass modal-radio">
                        <div class="box">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="My Mail" checked="">
                                    <div class="row bg">
                                        <div class="col-xs-12 p0">
                                            <span class="menu_icon ico-xs mail"></span>
                                            <span class="small"><%-$.i18n.t('app.creditcardstmt.mymail')%></span>
                                        </div>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="box">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="Other Mail">
                                    <div class="row bg">
                                        <div class="col-xs-12 p0">
                                            <span class="menu_icon ico-xs mail"></span>
                                            <span class="small"><%-$.i18n.t('app.creditcardstmt.othermail')%></span>
                                        </div>
                                    </div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="mymail">
                    <div class="alert alert-info small">
                        <small><%-$.i18n.t('app.creditcardstmt.mail')%></small> <%- email%></div>
                </div>
                <div class="othermail" style="display: none">
                    <div class="form-group">
                        <label><%-$.i18n.t('app.creditcardstmt.emailaddress')%></label>
                        <input type="text" autocomplete='off' name="email" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label><%-$.i18n.t('app.creditcardstmt.setpassword')%></label>
                        <input type="password" autocomplete='off' name="pass" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" data-toggle="modal" data-target="#mailSent" class="btn btn-default btn-block" data-dismiss="modal">Send</button>
            </div>
        </div>

    </div>
</div>
<!-- / shareme-->
<!-- Financial Summary -->
<div class="modal fade modernPOP" id="expenseSum" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <form method="post" action="info.html">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.ccstatement.financialsummary')%></h4>
                </div>
           
             <div class="modal-body clearfix">
                  <div id="canvas-holder" style="position: relative; height:200px;width:200px; margin:0 auto;margin-top:35px;">
                      <canvas id="chart-area" style="display: block; width: 200px; height: 200px;" height="200" width="200"></canvas>
                  </div>
                  <div id="oneLegend" class="chart-legend-container"></div>
                           <div id="oneLegend" class="chart-legend-container"><ul classs="row"><li class="pie-chart-label-list-item col-xs-4"><span class="color" style="background-color:#7b1f25"></span><span class="label-container"><span class="text">Food<br></span><span class="value">4500</span></span></li><li class="pie-chart-label-list-item col-xs-4"><span class="color" style="background-color:#7aa69c"></span><span class="label-container"><span class="text">Insurance<br></span><span class="value">1200</span></span></li><li class="pie-chart-label-list-item col-xs-4"><span class="color" style="background-color:#2E8B57"></span><span class="label-container"><span class="text">Travelling<br></span><span class="value">5000</span></span></li><li class="pie-chart-label-list-item col-xs-4"><span class="color" style="background-color:#f2cf66"></span><span class="label-container"><span class="text">Housing<br></span><span class="value">8000</span></span></li><li class="pie-chart-label-list-item col-xs-4"><span class="color" style="background-color:#dca046"></span><span class="label-container"><span class="text">Education<br></span><span class="value">1500</span></span></li><li class="pie-chart-label-list-item col-xs-4"><span class="color" style="background-color:#bf6262"></span><span class="label-container"><span class="text">Shopping<br></span><span class="value">1500</span></span></li></ul></div>
              </div>
              </div>
          </div>
      </form>
    </div>
</div>
<!-- / Financial Summary -->
<!-- success -->
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
              <h3><%-$.i18n.t('app.creditcardstmt.mailsent')%></h3>
              <p class="text-center"><%-$.i18n.t('app.creditcardstmt.mail3')%></p>
              <button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('app.creditcardstmt.ok')%></button>
            </div>
        </div>
    </div>
</div>
<!-- / success-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
	<script>
	
	$('.sett').click(function(event){
    //event.stopPropagation();
    
	});
		function ccard(i){
	var ccno=$('#ccno'+i).val();
	var cc_nick_name = $('#cc_nick_name'+i).val();
	var eppeligiblecardflagg = $('#eppeligiblecardflagg'+i).val();
	var creditmask = $('#creditmask'+i).val();
	var els=new EncryptedLocalStorage('secret');
	els.set("ccardno","");
	els.set("ccardno",ccno);
	els.set("cc_nick_name","");
	els.set("cc_nick_name",cc_nick_name);
	
	var ccaccno=$('#ccaccno'+i).val();
	els.set("ccardaccno","");
	els.set("ccardaccno",ccaccno);
	
	
	els.set("eppeligiblecardflagg","");
	els.set("eppeligiblecardflagg",eppeligiblecardflagg);
	els.set("creditmask","");
	els.set("acctnomaskk",creditmask);
	Backbone.history.navigate("#/ccstatement");
	}
</script>
