<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
     <li class="active"><%-$.i18n.t('app.requests.blkdebitcard.blkdebitcard')%></li>
</ol>

<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->

                  
<!--Step Control Starts Here-->
<div class="newWiz">
	  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.blkdebitcard.input')%></p></div></div>
	  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.blkdebitcard.verify')%></P></div></div>
	  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.requests.blkdebitcard.confirm')%></p></div></div>
</div>
                  
<!--Step Control Ends Here-->
	<div class="dtl_view">
	<!--Verify Starts Here-->
    	<form role="form">
        	<div class="alert alert-success text-center" role="alert">
            	<p><%-$.i18n.t('app.requests.blkdebitcard.success')%></p>
                	<h4><%-$.i18n.t('app.requests.blkdebitcard.transrefno')%> -<%-referenceNumber%> </h4>
			</div>
            <a href="#/servicerequestmenu" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.blkdebitcard.blkanothercard')%></a>
            <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.blkdebitcard.home')%></a>
		</form>
        </div>
        <!--Transfers Ends Here-->
<br/>
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>   