<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="#/servicerequest" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.service.requestforstatement')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						       <section class="content" id="stat_reqe">
        <form method="post" action="#">
           <div class="form-group">
             <label for="acc"><%-$.i18n.t('app.service.producttype')%></label>
             <select id="acc" class="form-control">
                <option>Current and Savings Accounts</option>
                <option>Credit Cards</option>
             </select>             
           </div><!-- / form-group-->
           <div class="form-group">
             <label for="acc"><%-$.i18n.t('app.service.accountcardnumber')%></label>
             <select id="acc" class="form-control">
                <option>87541254863</option>
                <option>85962136541</option>
             </select>             
           </div><!-- / form-group-->
           <div class="row">
              <div class="col-xs-6 form-group">
                <label for="fd"><%-$.i18n.t('app.service.fromdate')%></label>
                <input type="date" class="form-control">
              </div><!-- / form-group-->
              <div class="col-xs-6 form-group">
                <label for="td"><%-$.i18n.t('app.service.todate')%></label>
                <input type="date" class="form-control">
              </div><!-- / form-group-->
            </div>

            <div class="clearfix"></div>
            



           
           <div class="clearfix"></div>
             <div class="alert alert-info small" role="alert">
              <small><i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.service.smartnote')%></small>
           </div>	
           
           <div class="clearfix"></div>
           <div class="row">
             <div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" onClick="location.href='#/servicerequest'"><%-$.i18n.t('app.service.cancel')%></button></div>
             <div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" onClick="location.href='#/statementreqverify'"><%-$.i18n.t('app.service.submit')%></button></div>
           </div>
       </form>                            
       </section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->