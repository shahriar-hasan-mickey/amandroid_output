<body>
    <div  class="pagewrapper"><!--pagewrapper Starts here-->
      <div class="container"><!--Container Starts here-->
        <div class="row"><!-- Row Starts here-->
          <div class="col-sm-6"><!-- Coloumn Starts here-->
            <h1 class="lgn-logo">
              <span>
              </span>
            </h1>
            <div class="panel panel-default"> <!-- Panel Starts here-->
              <div class="panel-heading"><!-- Panel head Starts here-->
                <h3 class="panel-title"><%-$.i18n.t('app.login.welcomebank')%></h3>
              </div><!-- Panel head ends here-->
              <div class="panel-body">
                <form> <!-- form Starts here-->
                  <fieldset> <!-- fieldset Starts here-->

                    <div class="alert alert-warning ">
                        <p><%-$.i18n.t('app.mpin.mpincreationmsg')%></p>
                    </div>

                        <input type="button" class="btn btn-success btn-block" id="loginaskyes" value="<%-$.i18n.t('app.mpin.yes')%>" />
                        <input type="button" id="loginaskno" class="btn btn-primary btn-block" value="<%-$.i18n.t('app.mpin.no')%>"/>

                              </fieldset><!-- Fieldset Ends here-->
                          </form><!-- form ends here-->
                      </div>
                 </div><!-- Coloumn Ends here-->
              </div><!-- Coloumn Ends here-->
           </div><!-- row ends here-->
      </div><!--Container Ends here-->
  </div><!--pagewrapper Ends here-->



  </body>
