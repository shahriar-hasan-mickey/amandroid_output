 <a href="#/estatementsubscription" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
       <li class="active"><%-$.i18n.t('app.more.general.viewestatement')%></li>
    </ol>
        <div class="clearfix"></div>
        <br/>
        <h3><%-$.i18n.t('app.more.general.viewestatement')%></h3>
<!-- Breadcrumb Ends Here -->
                  
 <!--Content Starts Here-->
 
 <div class="newWiz">
      <div class="steps done"><div>1 <p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
      <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.more.preference.verify')%></p></div></div>
      <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p> </div></div>
</div>
<br/>
 
     <form role="form">
         <div class="form-group">
    		 <h6><b><%-$.i18n.t('app.more.estatement.estatementmsg4')%></b></h6>
        	 <div class="alert alert-warning" role="alert">
            	<p><%-$.i18n.t('app.more.estatement.estatementmsg5')%></p>
             </div>
		</div>
		
	    <div class="row"></div>
     		<input type="button" class="btn btn-success btn-block" id="confirm" name="confirm" value="<%-$.i18n.t('app.more.estatement.confirm')%>"/>
     		<input type="button" class="btn btn-primary btn-block" id="cancel" name="cancel" value="<%-$.i18n.t('app.more.estatement.cancel')%>"/>
      </form>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>              
                 
