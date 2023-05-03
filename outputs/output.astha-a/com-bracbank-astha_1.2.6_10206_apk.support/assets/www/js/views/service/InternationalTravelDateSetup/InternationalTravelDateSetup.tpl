<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="#/servicerequest" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.service.intertravsetup')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						       <section class="content">
        <form method="post" action="#">
           <div class="form-group">
             <label for="acc"><%-$.i18n.t('app.service.cardnumber')%></label>
             <select id="acc" class="form-control">
                <option>87541254863</option>
                <option>85962136541</option>
             </select>             
           </div><!-- / form-group-->

           <ul class="list-group">
            <li class="list-group-item">
              <p><strong><%-$.i18n.t('app.service.trip1')%></strong></p>
              <div class="row">
                <div class="col-xs-6 form-group">
                    <label for="contack"><%-$.i18n.t('app.service.contactnumber')%></label>
                    <input type="text"  autocomplete='off' class="form-control">
                </div><!-- / form-group-->
                <div class="col-xs-6 form-group">
                    <label for="country"><%-$.i18n.t('app.service.country')%></label>
                    <select id="country" class="form-control">
                    <option>India</option>
                    <option>USA</option>
                    <option>UK</option>
                    </select>             
                </div><!-- / form-group-->
              </div>

            
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
            </li>

            <li class="list-group-item">
              <p><strong><%-$.i18n.t('app.service.trip2')%></strong> <i class="fa fa-window-close pull-right" aria-hidden="true"></i></p>
              <div class="row">
                <div class="col-xs-6 form-group">
                    <label for="contack"><%-$.i18n.t('app.service.contactnumber')%></label>
                    <input type="text"  autocomplete='off' class="form-control">
                </div><!-- / form-group-->
                <div class="col-xs-6 form-group">
                    <label for="country"><%-$.i18n.t('app.service.country')%></label>
                    <select id="country" class="form-control">
                    <option>India</option>
                    <option>USA</option>
                    <option>UK</option>
                    </select>             
                </div><!-- / form-group-->
              </div>

            
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
            </li>


            </ul>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-xs-12 text-right"><button type="button" class="btn btn-primary"><%-$.i18n.t('app.service.addtrip')%></button></div>
            </div>
            <div class="clearfix"></div>




           <div class="form-group">
             <label><%-$.i18n.t('app.service.selectauthorisationmode')%></label>
             <div class="custRadio_pass">
               <div class="box">
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios1" value="option2" checked>
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs sms"></span>
                         <span class="small"><%-$.i18n.t('app.service.sms')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>
               </div>
               <div class="box">
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs mail"></span>
                         <span class="small"><%-$.i18n.t('app.service.mail')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>                      
               </div>
               <div class="box">
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios3" value="option2">
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs fScan"></span>
                         <span class="small"><%-$.i18n.t('app.service.token')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>
               </div>
               <div class="box">                      
                 <div class="radio">
                   <label>
                     <input type="radio" name="optionsRadios" id="optionsRadios4" value="option2">
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs esign"></span>
                         <span class="small"><%-$.i18n.t('app.service.esign')%></span>
                       </div>
                     </div>					  
                   </label>
                 </div>
               </div>
            </div>
           </div><!-- / form-group-->
           <div class="clearfix"></div>
           <div class="row">
             <div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" onClick="location.href='#/servicerequest'"><%-$.i18n.t('app.service.cancel')%></button></div>
             <div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="service_verify" onClick="location.href='javascript:void(0)'"><%-$.i18n.t('app.service.submit')%></button></div>
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