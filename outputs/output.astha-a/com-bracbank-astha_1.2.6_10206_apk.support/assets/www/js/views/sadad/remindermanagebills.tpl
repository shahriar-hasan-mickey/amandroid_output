 <a href="#/managebills" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.sadad.general.managebills')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->

                  <form role="form">
                  <input type="hidden" id="customernumber" name="customernumber" value="<%-id%>"/>
                       <div class="form-group" placeholder="<%-$.i18n.t('app.sadad.managebills.billercompany')%>" id="billercompany" name="billercompany">
                          <select class="form-control" id="transferType">
                            <option><%-$.i18n.t('app.sadad.managebills.billercompany')%></option>
                            <option>STC</option>
                            <option>Zain</option>
                            <option>Airtel</option>
                          </select>
                        </div>
                        <div class="form-group" placeholder="<%-$.i18n.t('app.sadad.managebills.servicetype')%>" id="servicetype" name="servicetype">
                          <select class="form-control">
                            <option><%-$.i18n.t('app.sadad.managebills.servicetype')%></option>
                            <option>Prepaid</option>
                            <option>Postpaid</option>
                          </select>
                        </div>

                      <div class="form-group  has-feedback">
                          <input type="date" value="01/06/2015" class="form-control" id="payDate" name="payDate" placeholder="<%-$.i18n.t('app.sadad.managebills.reminderdate')%>">
                          <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                      </div>

                       <div class="form-group">
                           <input type="text"  autocomplete='off'  class="form-control" id="remindDes" name="remindDes" placeholder="<%-$.i18n.t('app.sadad.managebills.reminddescription')%>">
                      </div>


                       <div class="form-group">
                          <input type="text" autocomplete='off'  class="form-control" id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.sadad.managebills.amount')%>">
                       </div>
                    <a id="verify" name="verify" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.managebills.submit')%></a>
                    <a href="#/managebills" id="back" name="back" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.managebills.cancel')%></a>
                  </form>
                  <br/>