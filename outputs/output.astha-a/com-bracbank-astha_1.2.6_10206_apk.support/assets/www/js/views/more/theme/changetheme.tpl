<%
var els = new EncryptedLocalStorage('secret');
//var language_id = els.get("language_id");
%> 

<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
     <li class="active"><%-$.i18n.t('app.more.preference.changetheme')%></li>
</ol>

<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->


<div class="alert alert-info" role="alert">
<small>
	<%-$.i18n.t('app.more.preference.selecttheme')%>	
</small>
</div>

	<input type="hidden" name="hidthemetype" id="hidthemetype" />
	<div class="themesCust">
		<div class="row">
			<div class="col-sm-6 col-md-4">
            	<label class="thumbnail">
	               	<input type="radio" name="theme" class="preSel" id="DEF">
	               	<img src="images/common/shb_default_theme.png" alt="...">
	               	<div class="caption">
	                	<h4><%-$.i18n.t('app.more.preference.defaulttheme')%>
	               			<button id="setDefaultTheme" name="setDefaultTheme" class="btn btn-primary pull-right" role="button"><%-$.i18n.t('button.general.apply')%></button>
	                  	</h4>
					</div>
                                                      <div class="selectedLbl"><!--<%-$.i18n.t('app.more.preference.themeSelected')%>--></div>
				</label>
				<!--
            	<label class="thumbnail">
	               	<input type="radio" name="theme" class="preSel" id="LIT">
	               	<img src="images/common/shb_light_theme.png" alt="...">
					<div class="caption">
	                	<h4><%-$.i18n.t('app.more.preference.lighttheme')%>
	                  		<button id="setLightTheme" name="setLightTheme" class="btn btn-primary pull-right" role="button"><%-$.i18n.t('button.general.apply')%></button>
	                  	</h4>
               		</div>
                                                      <div class="selectedLbl"></div>
            	</label>
            	--><!--<%-$.i18n.t('app.more.preference.themeSelected')%>-->
            	<label class="thumbnail">
	               	<input type="radio" name="theme" class="preSel" id="DRK">
	               	<img src="images/common/shb_dark_theme.png" alt="...">
               		<div class="caption">
						<h4><%-$.i18n.t('app.more.preference.darktheme')%>
                     		<button id="setDarkTheme" name="setDarkTheme" class="btn btn-primary pull-right" role="button"><%-$.i18n.t('button.general.apply')%></button>
                  		</h4>
               		</div>
                           <div class="selectedLbl"><!--<%-$.i18n.t('app.more.preference.themeSelected')%>--></div>
            	</label>
         	</div>
      	</div>
  		<br/> <br/>
	</div>


<script>
/*
	$(function(){
		$(".preSel:checked").parents(".thumbnail").addClass("active");
     	$("body").on("click",".preSel",function(e){
	        e.stopPropagation();
	        $(".preSel").parents(".thumbnail").removeClass("active");
		    if($(this).is(':checked'))
		    {
				$(this).parents(".thumbnail").addClass("active");
		    }
	     	else{
	         $(this).parents(".thumbnail").removeClass("active");
	        }
     	});
	});
*/
</script>