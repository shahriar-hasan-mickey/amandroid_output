<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
	var email = els.get("emailId");
%>
	<body>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="backbutton" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.accounts.chequehistory')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">
    <h3 class="tab-head"><%-$.i18n.t('app.accounts.chequehistory')%>

    <div class="dropdown pull-right">
          <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
            <span class="glyphicon glyphicon-option-vertical"></span>
          </button>
          <ul class="dropdown-menu">
            <li>
              <a href="javascript:void(0);" data-toggle="modal" data-target="#shareme">Share</a>
            </li>
            <li>
              <a href="javascript:void(0);"><a href="#"><%-$.i18n.t('app.creditcardstmt.do1')%></a>
            </li>
            <li>
              <a href="javascript:void(0);"><a href="#"><%-$.i18n.t('app.creditcardstmt.do2')%></a>
            </li>
          </ul>
        </div>
    </h3>
    <ul class="list-group state-list txnSum">
        <li class="list-group-item">
          <a href="javascript:void(0);" id="getdetailstmtview">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt neg text-right">
                <span class="num">5,000.
                    <span class="deci">00</span>
                </span>
            </div>
          </a>
        </li>
        <li class="list-group-item">
          <a href="#">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt pos text-right">
                <span class="num">7,000.
                    <span class="deci">00</span>
                </span>
            </div>
          </a>
        </li>
        <li class="list-group-item">
          <a href="#">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt neg text-right">
                <span class="num">5,000.
                    <span class="deci">00</span>
                </span>
            </div>
          </a>
        </li>
        <li class="list-group-item">
          <a href="#">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt pos text-right">
                <span class="num">7,000.
                    <span class="deci">00</span>
                </span>
            </div>
          </a>
        </li>
        <li class="list-group-item">
          <a href="#">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt neg text-right">
                <span class="num">5,000.
                    <span class="deci">00</span>
                </span>
            </div>
          </a>
        </li>
        <li class="list-group-item">
          <a href="#">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt pos text-right">
                <span class="num">7,000.
                    <span class="deci">00</span>
                </span>
            </div>
          </a>
        </li>
        <li class="list-group-item">
          <a href="#">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt neg text-right">
                <span class="num">5,000.
                    <span class="deci">00</span>
                </span>
            </div>
         </a>
        </li>
        <li class="list-group-item">
          <a href="#">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Lorem Ipsum</p>
            <p class="text-muted small">Chq#12312</p>
            <div class="amt pos text-right">
                <span class="num">7,000.
                    <span class="deci">00</span>
                </span>
            </div>
          </a>
        </li>
    </ul>
</section>
<!-- shareme -->
<div class="modal fade modernPOP shareme" id="shareme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
          <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
              <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.creditcardstmt.sendto')%></h4>
          </div>
          <div class="modal-body">
              <div class="form-group custRadio_small">
                  <label for="username">Send To</label>
                  <div class="custRadio_pass modal-radio">
                      <div class="box">
                          <div class="radio">
                              <label>
                                  <input type="radio" name="optionsRadios" id="optionsRadios1" value="My Mail" checked="">
                                  <div class="row bg">
                                      <div class="col-xs-12 p0">
                                          <span class="menu_icon ico-xs mail"></span>
                                          <span class="small"><%-$.i18n.t('app.creditcardstmt.mymail')%>My Mail</span>
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
                      <input type="text" autocomplete='off'  name="email" class="form-control" />
                  </div>
                  <div class="form-group">
                      <label><%-$.i18n.t('app.creditcardstmt.setpassword')%></label><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-dismiss="modal" data-toggle="modal" data-target="#usernameTips"></i>
                      <input type="password" autocomplete='off'  name="pass" class="form-control" />
                  </div>
              </div>
          </div>
          <div class="modal-footer">
              <button type="button" data-toggle="modal" data-target="#mailSent" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('app.creditcardstmt.send')%></button>
          </div>
      </div>
  </div>
</div>
<!-- / shareme-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
<script src="js/library/bootstrap.min.js"></script>
<script src="js/library/slip.js"></script>
<script src="js/library/cardStack.js"></script>
<script src="js/common.js"></script>
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
