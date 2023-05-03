        <a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                 <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.general.sweepstitle')%></li>
                  </ol>


                  <div class="clearfix"></div>

                  <!-- Breadcrumb Ends Here -->

                  <!--Step Control Starts Here-->
                   <div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.transfer.ownaccount.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.transfer.ownaccount.verify')%></P></div></div>
                  <div class="steps done"><span ></span><div>3<p><%-$.i18n.t('app.transfer.ownaccount.confirm')%></p> </div></div>
                  </div>
      <!--Verify Starts Here-->
                  <form role="form">			  				  
                     <div class="alert alert-success text-center">
                        <p><%-$.i18n.t('app.more.sweep.successdelmsg')%></p>
                    </div>

                    <a href="#/sweepsview" class="btn btn-success btn-block" id="submit"><%-$.i18n.t('button.tools.done')%></a>
                             </form>
