<!-- Breadcrumb Starts Here -->
 <a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
       <li class="active"><%-$.i18n.t('app.more.general.viewestatement')%></li>
    </ol>
        <div class="clearfix"></div>
        <br/>
    	<h3><%-$.i18n.t('app.more.general.viewestatement')%></h3>
<!-- Breadcrumb Ends Here -->

<div class="newWiz">
      <div class="steps done"><div>1 <p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
      <div class="steps "><span></span><div>2<p><%-$.i18n.t('app.more.preference.verify')%></p></div></div>
      <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p> </div></div>
</div>

<!--Content Starts Here-->

<div class="form-group">
     <label class="checkinput small active pull-left">
     	<input type="checkbox" name="iagreee" id="iagreee" checked="checked" class="check-hidden"><%-$.i18n.t('app.more.estatement.estatementmsg2')%><br/> <br/><%-$.i18n.t('app.more.estatement.estatementmsg3')%> 
     </label>
     <div id="errorCheckBox" style="display:none">
         <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.estatement.checkbox')%></font></p>
	 </div>
	 <br/>
</div>

<div class="row"></div>
     <input type="button" class="btn btn-success btn-block" id="submit" name="submit" value="<%-$.i18n.t('app.more.estatement.submit')%>"/>
     <input type="button" class="btn btn-primary btn-block" id="cancel" name="cancel" value="<%-$.i18n.t('app.more.estatement.cancel')%>"/>

<!--Content Ends Here-->
              
                 
