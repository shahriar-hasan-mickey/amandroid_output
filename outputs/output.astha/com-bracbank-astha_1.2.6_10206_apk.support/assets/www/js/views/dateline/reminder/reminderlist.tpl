<%
var els = new EncryptedLocalStorage('secret');
var remindersListDTO = els.get("remindersListDTO");

%>

<a href="#/dateline" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/dateline"><%-$.i18n.t('app.menu.dateline')%></a></li>
	<li class="active"><%-$.i18n.t('app.reminders.remindershistory')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->
<h3 class="header">
<%-$.i18n.t('app.dateline.reminders')%>
<button type="button" name="addReminder" id="addReminder" class="btn btn-success addBene btn-sm pull-right"><%-$.i18n.t('app.reminders.addreminder')%></button>
</h3>
	<br/><br/>
	<div class="clearfix"></div>
	 <% if ( remindersListDTO.length > 0 ) 
	 { var i=0; %>	
	<div class="cust_panel">
		<div class="list-group">
		<% _.each(remindersListDTO,function(data){ %>
			<label class="list-group-item activeswipelable">				
			<p><span class="nme">
			<%
				 var remainderDate= data.reminderDate;
				 remainderDate=remainderDate.split(" ");			
			%>
			<%- remainderDate[0] %>
			<span class="pull-right"><%- remainderDate[1] %></span>
			</span></p>
			<p><%-data.reminderText%></p>	
			<input type="hidden" id="Reminders"  name="Reminders"  value="<%-data.reminderID%>"/>				
			 <input type="hidden" id="RemindersDate"  name="RemindersDate"  value="<%-data.reminderDate%>"/>
			 <input type="hidden" id="RemindersText"  name="RemindersText"  value="<%-data.reminderText%>"/>  						 				
			</label>   
			<% }); %>
			</div>
	</div>
			
 <%}else{%>
				<h4><%-$.i18n.t('app.reminders.nodata')%></h4>
			<%}%>

		<div class="overlay  text-center activeswipe" style="display:none">
			<p>
				<button type="button" id="delete" name="delete" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span><%-$.i18n.t('app.transfer.managebeneficiary.delete')%></button>&nbsp;&nbsp;
		 	</p>
		</div>	
<script>
function swipeactiveReady(){
	$(".activeswipelable").swipe( {
		allowPageScroll: 'vertical',
		swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
			
				if ($('.activeswipe').css('display') == 'none' || $('.activeswipe').css('display') == 'undefind') {
					if(direction=="left" || direction=="right"){
						$(this).append($(".activeswipe").css("position", "absolute"));
						//$(".activeswipe").show();
						$(this).find(".activeswipe").show();
                       /********* align the buttons vertically middle programatically ************/
                        var overlayheight=$(this).find(".overlay").height();
                        console.log("overlayheight",overlayheight);
                        var btnheight=	$(this).find(".overlay p").height();
                           console.log("btnheight",btnheight);                        
                       $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", top: overlayheight/2 - btnheight/2});
                       /*****************************************************************/		
                        $("#Reminders").val($(this).find("#Reminders").val());
                        $("#RemindersDate").val($(this).find("#RemindersDate").val());
                        $("#RemindersText").val($(this).find("#RemindersText").val());					
						
						$(".swipeoverlay").hide();
					}else{
						event.stopPropagation();
						$(".swipeoverlay").hide();
					}
				}else{					
					$(".activeswipe").hide();
					$(".swipeoverlay").hide();
				}
		},
		//Default is 75px, set to 0 for demo so any distance triggers swipe
	   threshold:0
	});
}
swipeactiveReady();
</script>