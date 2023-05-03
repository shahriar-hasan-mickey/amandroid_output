<script src="js/libs/security/crypto-js/aes.js"></script>
<script src="js/libs/security/crypto-js/sha512.js"></script>
<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%> 
<body>
	<div class="container">
         <div  class="pagewrapper">
			<div class="row ">
               <div class="col-sm-6">
                <h1 class="lgn-logo"><span></span></h1>
            		<div class="panel panel-default">
        			  	
        			  	<div class="panel-body">
        			    	<form>
                            <fieldset>
        			    	  	<div class="control-group">
									<div class="form-group">
										<div class="controls">
										<% if ( devicePlatform == "Android" ) { %>
        			    		    <input class="form-control restrictCpyPst input-lg" autocomplete='off' name="userName" id="userName"  type="text"  value="<%-userName%>" readOnly>
        			    		    <%}else{%>
        			    		    <input class="form-control restrictCpyPst input-lg lenthcontrol" autocomplete='off'  name="userName" id="userName"  type="text"  value="<%-userName%>" readOnly>
        			    		    <%}%>
        			    				</div>
        			    			</div>
        			    		</div>
        			    		<div class="control-group">
									<div class="form-group">
										<div class="controls">
										<% if ( devicePlatform == "Android" ) { %>
        			    			<input class="form-control restrictCpyPst input-lg" autocomplete='off' name="password" id="password" type="password" value="">
        			    			<%}else{%>
        			    			<input class="form-control restrictCpyPst input-lg lenthcontrol" autocomplete='off'  name="password" id="password" type="password" value="">
        			    		    <%}%>
        			    				</div>
        			    			</div>
        			    		</div>
								<div class="showsimage">
									<fieldset>
		                       <% 
		                       var i=-1;
		                       _.each(secureimage,function(data){                        
		                       		i++;
		                       %>
		                        <label><img src="data:image/jpg;base64,<%- data %>"><input type="checkbox" value="<%-usersecureimageid%>" name="secureImg" id="secureImg"></label>
		                       <% });%>
	                    </fieldset>
	            </div>
								
								
        			    		<input type="submit" class="btn btn-lg btn-primary"  value="<%-$.i18n.t('button.login.cancel')%>"/>
        			    	 	<input type="submit" class="btn btn-lg btn-success"  value="<%-$.i18n.t('button.login.submitbt')%>" />
        			    	</fieldset>
        			      	</form>
        			    </div>
        			</div>
        		</div>
             </div><!-- row ends here-->

             

        </div>
    </div>
</body>
<script>
	for(i=0; i<secureimageid.length; i++){
		for(j=0; j<usersecureimageid.length; j++){
			if(secureimageid[i] == usersecureimageid[j]){
				$('#chk'+i).prop('checked', true);
			}
		}	}
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

<script>
$(document).ready(function()
		{
			DisableCopyPaste();
			$('input').keypress(function(e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if ( (code==13) || (code==10))
            {
            $(this).blur();
            return false;
            }
    });
		});

</script>
