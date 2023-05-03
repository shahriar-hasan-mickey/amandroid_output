<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = getAccountDTO(); 
	var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
%>

<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
	  <div class="headerLeft">
	    <a href="javascript:void(0);" id="transferbackbtn"  class="bacArr">
	      <i class="fa fa-angle-left" aria-hidden="true"></i>
	    </a>
	  </div>
	  <h4><%-$.i18n.t('app.transferss.bblcard')%><p class="small"><%-$.i18n.t('app.transferss.pay')%></p></h4>
	  <span class="step-badge">1/3</span>
	  <ul class="step-progress">
	    <li class="done"></li>
	    <li></li>
	    <li></li>
	  </ul>	
    </header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
	        <h4>Select Beneficiary</h4>
	        <form method="post" action="#">
	            <div class="radio-list">
	                <div class="radio">
	                    <label>
	                        <input type="radio" name="choice" checked>
	                        <div class="radio-wrap">
	                            <div class="row">
	                                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
	                                    <img src="images/common/user_default1.png" class="radiothumb">
	                                    <div class="radiobody">
	                                        <p>Card Name</p>
	                                        <p class="small text-muted acno">AN4242942874827428</p>
	                                    </div>
	                                </div>
	                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-right small">
	                                    <p class="text-success text-uppercase">
	                                        <strong>Active</strong>
	                                    </p>
	                                </div>
	                            </div>
	                        </div>
	                    </label>
	                </div>
	                <div class="radio">
	                    <label>
	                        <input type="radio" name="choice">
	                        <div class="radio-wrap">
	                            <div class="row">
	                                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
	                                    <img src="images/common/user_default1.png" class="radiothumb">
	                                    <div class="radiobody">
	                                        <p>Card Name</p>
	                                        <p class="small text-muted acno">5842942428747428</p>
	                                    </div>
	                                </div>
	                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-right small">
	                                    <p class="text-success text-uppercase">
	                                        <strong>Active</strong>
	                                    </p>
	                                </div>
	                            </div>
	                        </div>
	                    </label>
	                </div>
		            </div><div class="clearfix"></div>
	               <div class="row">
		                <div class="col-xs-12">
		                    <button type="button" class="btn btn-primary btn-block" onClick="location.href='#/transfertodetail'"><%-$.i18n.t('app.transferss.next')%></button>
		                </div>
	           	  </div>    
	         </form>
	      </section>	
	  </div>
	</div>
</div>