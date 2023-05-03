<%
var preLoginFlag = "Y";
var loginflag = "Y";
%>

	<div class="appwrapper" id="appwrapper">
	
		<!-- Header area starts-->
		<header class="appheader">
			<div class="row">
				<div class="col-xs-2">
			        <button type="button" id="mnutoggle" class="btn btn-default pull-left mnutoggle">
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			        </button>
	      		</div>
				<div class="col-xs-8">
	        		<h1>
	            		<a href="javascript:void(0);"><%-$.i18n.t('app.menu.Brandlogo')%></a>
	        		</h1>
				</div>
				<div class="col-xs-2">
	          		<a href="#/backtohome" id="prebacktohome" class="btn btn-success pull-right"><span class="glyphicon glyphicon-home"></span></a>
	      		</div>
	 		</div>
		</header>
		<!-- Header area ends-->

		<div class="bodywrapper" >
		
			<!-- Left side main navigation area starts-->
			    <aside class="mainnav prelogin-nav prelogshow" id="preloginmenuwrapper">
					<nav>
		        		<ul>
							<%if(loginflag=='Y'){%>
			                    <li id="loginapp">
			                     	<a href="#/login"><span class="glyphicon glyphicon-lock" ></span><%-$.i18n.t('app.login.applogin')%></a>
			                    </li>
		                    <%}%>
							<%if(preLoginFlag=='Y'){%>
		                     	<li id="locator">
		                     		<a href="#/locator"><span class="glyphicon glyphicon-pushpin" ></span><%-$.i18n.t('app.landing.locator')%></a>
		                     	</li>
		                    <%}%>
		                    
							<!--<%if(preLoginFlag=='Y'){%>
			                    <li id="offers">
			                     	<a href="#/showpromotions"><span class="glyphicon glyphicon-gift"></span><%-$.i18n.t('app.landing.offers')%></a>
			                    </li>
		                    <%}%>-->
		
							<%if(preLoginFlag=='Y'){%>
			                    <li id="registration">
			                     	<a href="#/registration"><span class="glyphicon glyphicon-pencil"></span><%-$.i18n.t('app.login.registration')%></a>
			                    </li>
		                    <%}%>
		                     
							<!--<%if(preLoginFlag=='Y'){%>
			                    <li id="tools">
			                     	<a href="#/tools"><span class="glyphicon glyphicon-wrench"></span><%-$.i18n.t('app.landing.tools')%></a>
			                    </li>
		                    <%}%>-->
		                     
							<%if(preLoginFlag=='Y'){%>
			                    <li id="contactus">
			                     	<!--<a href="#/contactus"><span class="glyphicon glyphicon-earphone"></span><%-$.i18n.t('app.landing.contactus')%></a>-->
			                     	<a onclick= "openUrl(this); return false;" ><span class="glyphicon glyphicon-earphone"></span><%-$.i18n.t('app.landing.contactus')%></a>
			                    </li>
		                    <%}%>
		                    <!--<%if(preLoginFlag=='Y'){%>
			                    <li id="pushnotification">
			                     	<a href="#/pushnotifications"><span class="glyphicon glyphicon-bell"></span><%-$.i18n.t('app.more.pushNotification.pushNotifyTitle')%></a>
			                    </li>
		                    <%}%>-->
		                </ul>
					</nav>
				</aside>
		    <!-- Left side main navigation area ends-->
		    
		    <!-- Actual content area starts-->
				<div class="contentwrap">
					<section class="content">
						<div id="preloginmobcontent">
						</div>
					</section>
				</div>
		    <!-- Actual content area starts-->
	</div>

<script>
  $(document).ready(function()
		{
		$('html').removeClass('loginbg');
		$('html').removeClass('logoutbg');
		});
		
</script>

<script>
	$('li').on('click', function(){
	    $(this).siblings().removeClass('active');
	    $(this).addClass('active');
	    $("#appwrapper").toggleClass("mnuactive");
	    $(".subnav-overlay").remove();
	});
	/*$('#mnutoggle').click(function () {
    	$('.prelogshow').toggleClass('mnuactive')
  		});*/
	
</script>

<script>
$('#mnutoggle').on('click', function(){
$('#preloginmenuwrapper').show();
});
function openUrl(url) {
		var els = new EncryptedLocalStorage('secret');
		var responseurlContactData = els.get("responseurlContactData");
		var i=0;
		_.each(responseurlContactData,function(datalink,index){
		var codelink = datalink.code;
	    
	    if(codelink=="CONTACTUS"){
	    	
		    	if($.i18n.lng() == 'en-US'){
					url = datalink.description;
			}else if($.i18n.lng() == 'en-AR'){
					url = datalink.descriptionAr;
			}
	    	}
	    });
	      //alert("open url: " + url);
	    
      window.open(url, '_system', 'location=yes');
    }
</script>
<script src="js/libs/jquery/bootstrap.min.js"></script>
<script src="js/library/progressbar.min.js"></script>
