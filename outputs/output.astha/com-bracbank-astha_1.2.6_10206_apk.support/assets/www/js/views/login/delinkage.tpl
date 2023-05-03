<script src="js/libs/security/crypto-js/md5.js"></script>
<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%> 
<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						<div class="panel panel-default">
		        			  		<!--<div class="panel-heading">
		        			    		<h3 class="panel-title"><%-$.i18n.t('app.login.welcomebank')%></h3>
		        			 		</div>-->

					<div class="panel panel-default"> <!-- Panel Starts here-->

                    <div class="panel-body">
                        <form method="post" action="delinkagesuccess.html"> <!-- form Starts here-->
                          <fieldset> <!-- fieldset Starts here-->
                             <div class="alert alert-info alert-sm">
                                <p>About Delinkage </p>
                             </div>
                             <div class="form-group">
                             <% if ( devicePlatform == "Android" ) { %>
                              <input type="text" autocomplete='off' onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" class="form-control" id="" placeholder="Enter User Name">
                             <%}else{%>
                              <input type="text" autocomplete='off' onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)" class="form-control lenthcontrol" id="" placeholder="Enter User Name">
                             <%}%>
                             </div>

                                  <div class="form-group">
                              <% if ( devicePlatform == "Android" ) { %>
                              <input type="password" autocomplete='off' class="form-control" id="" placeholder="Enter Password">
                              <%}else{%>
                              <input type="password" autocomplete='off' class="form-control lenthcontrol" id="" placeholder="Enter Password">
                              <%}%>
                             </div>


                              <input type="button" id="delinkageclick" class="btn btn-success btn-block"  value="Submit" />
                              <a href="#/backtohome" class="btn btn-primary btn-block">Cancel</a>
                            </fieldset><!-- Fieldset Ends here-->
                          </form><!-- form ends here-->
                      </div>
                 </div>
                 </div>
             	</div><!-- row ends here-->
        	</div>
    	</div>
  <script src="js/pollyfills/jquery.placeholder.min.js"></script>
	<script>
		$(document).ready(function()
		{
			$(".check-hidden:checked").parents(".checkinput").addClass("active");
			$(".loginopt").on("change",function()
			{
				if($(".loginopt").attr("checked"))
				{
					url=$(this).attr("data-url");
					location.href=url;
				}
			});
			$('input[placeholder], textarea[placeholder]').placeholder();
		});
	</script>
	<script type="text/javascript">
function f(o){
  o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
  }
}
</script>

<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
</script>
</body>