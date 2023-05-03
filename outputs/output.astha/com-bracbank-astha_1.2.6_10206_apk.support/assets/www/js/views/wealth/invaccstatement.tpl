<%
var els = new EncryptedLocalStorage('secret');
var emailIdCheck = els.get("emailid");
var devicePlatform = els.get("device.platform");
%>
<script src="js/libs/common/appcommon.js"></script>

  <!-- Actual content area -->
	<a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	    <li class="active"><%-$.i18n.t('app.product.general.investmentaccounts')%></li>
	</ol>
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
            <div class="panel panel-default cust_panel">
		               <div class="panel-heading collapsed" id="account" data-toggle="collapse" data-target="#datepanel">
		                   <p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;  <a data-toggle="collapse" data-parent="#accordion" href="#beneficiary">
						    	<%-$.i18n.t('app.product.general.details')%></a>
		                   </p>
		               </div>
			           <div id="datepanel" class="collapsePanel panel-collapse collapse ">
				            <div class="panel-body detailsStmt">
				                <ul class="list-group">
				                
									<!--Earlier Nick name code starts-->
										<!--<li class="list-group-item">
											<div class="edit" id="searchby">
				        						<small><%-$.i18n.t('app.product.accounts.accountnickname')%></small>
				        						<span class="pull-right"><span class="userName"><%-customerName%></span>
										 		<a href="#" class="btn btn-sm btn-success editNick" id="name">
										 		<span class="glyphicon glyphicon-pencil"></span></a></span>
											</div>				
						   						
											</div>
											<div class="update row" id="datepanel1">
												<form role="form" id="editname">
	                                            <div class="col-xs-7"><span class="nickName"><input type="text" class="form-control input-sm" value="Simon" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>" id="nickname"></span></div>
	                                            <div class="col-xs-5 "><div class="btn-group btn-group-sm"><a href="#" class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a><a href="#" class="btn btn-primary cancelNick"><span class="glyphicon glyphicon-remove"></span></a></div></div>
												<input type="hidden" value="18063926" class="form-control"  name="custno" id="custno"/>
												<input type="hidden" value="<%-accid%>" class="form-control"  name="accno" id="accno"/>
												<input type="hidden" value="NickNameAdd" class="form-control"  name="servicename" id="servicename"/>
												<input type="hidden" value="EN" class="form-control"  name="lang" id="lang"/>
												<a href="#" class="btn btn-block btn-success" id="savenickname"><%-$.i18n.t('app.product.general.save')%></a>
											     </form>
	                                        </div>
						         		</li>-->
					         		<!--Earlier Nick name code ends-->
					         		
					         		<li class="list-group-item">
                                        <div class="edit" id="searchby">
                                            <small><%-$.i18n.t('app.product.accounts.accountnickname')%></small>
                                            <span class="pull-right"><span class="userName"><%-customerName%></span>
	                                            <a class="btn btn-sm btn-success editNick" id="name">
	                                            	<span class="glyphicon glyphicon-pencil"></span>
	                                            </a>
                                            </span>
                                        </div>
                                        <div class="update row" id="datepanel1">
                                            <div class="col-xs-7">
                                            <% if ( devicePlatform == "Android" ) { %>
                                            	<span class="nickName"><input type="text" vmaxlength="15" class="form-control input-sm" value="" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            <%}else{%>
                                            	<span class="nickName"><input type="text" autocomplete='off'  maxlength="15" class="form-control input-sm lenthcontrol" value="" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            <%}%>
                                            </div>
                                            <div class="col-xs-5">
	                                            <div class="btn-group btn-group-sm">
		                                           	<a  class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a>
	                                            	<a  class="btn btn-primary cancelNick"><span class="glyphicon glyphicon-remove"></span></a>
	                                            </div>
                                            </div>
                                        </div>
                                     </li>
							 		<%if(typeof(accdetail.accountNumberMasked)!="undefined"&&accdetail.accountNumberMasked!=null&&accdetail.accountNumberMasked!=''){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.accounts.accountnumber')%>
						               			</small>
						               			<span class="pull-right">
						               				<%-accdetail.accountNumber%>
						               			</span>
					               		</li>
					        		 <%}%>
					               
					                <% if (typeof(accdetail.acctProduct.productType.code) != "undefined"&&accdetail.acctProduct.productType.code!=null&&accdetail.acctProduct.productType.code!='') { %>
						               	 <li class="list-group-item">
								               	 <small>
								               	 		<%-$.i18n.t('app.product.accounts.accounttype')%>
								               	 </small>
								               	 <span class="pull-right">
								               	 		<%-accdetail.acctProduct.productType.code%>
								               	 </span>
						               	 </li>
					                <%}%>
					               
					                <% if (typeof(reservedBalance) != "undefined"&&reservedBalance!=null&&reservedBalance!='') { %>
					                	<li class="list-group-item hilit">
						                	<small>
						                	    <%-$.i18n.t('app.product.accounts.book')%>      
						                	</small>
						                	<span class="pull-right amt">
						                	  	<%- checkAmount($.formatNumber(reservedBalance, {format:"#,###.000", locale:"us"}))%>
						                		
						                	</span>
					                	</li>
					                <%}%>
					                
					                <% if (typeof(availableBalance) != "undefined"&&availableBalance!=null&&availableBalance!='') { %>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.availablebalance')%>
						                	</small>
						                	<span class="pull-right amt">
						                			<%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%>
						                	</span>
					                	</li>
					                <%}%>
					                
					                <% if (typeof(accdetail.currency.code) != "undefined"&&accdetail.currency.code!=null&&accdetail.currency.code!='') { %>
					               	 <li class="list-group-item">
						               	 <small>
						               	 		<%-$.i18n.t('app.product.accounts.currency')%>
						               	 </small>
						               	 <span class="pull-right">
						               	 		<%-accdetail.currency.code%>
						               	 </span>
					               	 </li>
					                 <%}%>
							  		<% if (typeof(accdetail.acctProduct.productType.description) != "undefined" && accdetail.acctProduct.productType.description!=null && accdetail.acctProduct.productType.description!='') { %>
					              	  <li class="list-group-item">
						              	  <small>
						              	  		<%-$.i18n.t('app.product.accounts.productname')%>
						              	  
						              	  <span class="pull-right">
						              	  		<%-accdetail.acctProduct.productType.description%>
						              	  </span></small>
					              	  </li>
					                <%}%>
				             </ul>
				            </div>
			       </div>
           </div>
           
	       <div class="panel panel-default cust_panel">
		            <div class="panel-heading" data-toggle="collapse" data-target="#graph">
		              <p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;
			              <a data-toggle="collapse" data-parent="#accordion" href="#graph">
			                   <%-$.i18n.t('app.product.creditcard.graph')%>
			              </a>
		              </p>
		            </div>
		            <div id="graph" class="collapsePanel panel-collapse">
			              <div class="panel-body">
			                 <div id="chartdiv"  align="left"></div>
			              </div>
		            </div>
	       </div>

		  <div class="row" id="searchby">
	      		<div class="col-xs-12">
		          		<div class="col-xs-4"><%-$.i18n.t('app.product.accounts.searchby')%></div>
		          		<div class="col-xs-8">
		                    <button data-target="#filter-cont" data-toggle="collapse" type="button" class="btn btn-default pull-right" id="search"><%-$.i18n.t('app.product.accounts.searchh')%></button>
		          		</div>
	     	    </div>
		 </div>

		<div id="datepanel2" style="display:none;" class="panel hilit panel-collapse collapse">
		    <form role="form" id="searchby">
					<input type="hidden" value="<%-accid%>" class="form-control"  name="accno" id="accno"/>
		    		 <div class="row">
				        <div class="col-xs-6">
					            <div class="form-group  has-feedback">
									
		    		                <!--<input type="test" class="nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" readonly />
					                <span class="glyphicon glyphicon-calendar form-control-feedback"></span>-->
					                <input type="text"  autocomplete='off' class="form-control nativedatepicker" id="startDate" placeholder="From Date" readonly>
									<span class="glyphicon glyphicon-calendar form-control-feedback nativedatepicker"></span>
					            </div>
					            <div class="form-group">
					            <% if ( devicePlatform == "Android" ) { %>
					              <input type="text" autocomplete='off'  maxlength="16" class="form-control  input-sm" id="frmtxnfromamount" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>"/>
					             <%}else{%>
					              <input type="text" autocomplete='off'  maxlength="16" class="form-control input-sm lenthcontrol" id="frmtxnfromamount" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>"/>
					             <%}%>
					            </div>
				        </div>
			
				       <div class="col-xs-6">
				       			<div class="form-group  has-feedback">
									<input type="text" autocomplete='off'  class="form-control nativedatepicker"  id="endtDate" placeholder="To Date" readonly>
									<span class="glyphicon glyphicon-calendar form-control-feedback nativedatepicker"></span>
								</div>
					           <!--<div class="form-group  has-feedback">
					                <input type="test" class="nativedatepicker" id="endtDate" placeholder="<%-$.i18n.t('app.product.general.enddate')%>" readonly />
					                <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
					           </div>-->
					           <div class="form-group">
					           <% if ( devicePlatform == "Android" ) { %>
					              <input type="text" autocomplete='off'  maxlength="16" class="form-control input-sm" id="frmtxntoamount" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>"/>
					            <%}else{%>
					              <input type="text"  autocomplete='off' maxlength="16" class="form-control input-sm lenthcontrol" id="frmtxntoamount" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>"/>
					            <%}%>
					           </div>
				       </div>
			    </div>
			    <div class="form-group">
				        <select class="form-control" placeholder=<%-$.i18n.t('app.product.accounts.channel')%> id="channel"> 
					        <option selected="selected"><%-$.i18n.t('app.product.accounts.all')%></option>
					        <option><%-$.i18n.t('app.product.accounts.mobile')%></option>
					        <option><%-$.i18n.t('app.product.accounts.web')%></option>
					        <option><%-$.i18n.t('app.product.accounts.tablet')%></option>
				        </select>
			    </div>
		    	<a href="#" id="getstatement" class="btn btn-block btn-success"><%-$.i18n.t('app.product.accounts.getstatement')%></a>
		    	
		    	
		  </form>
		</div>

        <div class="clearfix"></div>
        <div class="accStmt">
           <ul>
            	<%var i=1;%>
             	<% _.each(ministatement,function(data){ %>
	               	<%if(i++<ministatement.length){%> 
		            	<li class="cr">
		                   	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
		                     <a href="#/fttransdetails/<%-data.bankReferenceNumber%>" id="ftrefnum">
		                        <div class="d_msg">
			                            <p class="date"><%-data.transactionDate%></p>
			                            
			                            <%if(data.transactionType!=""){%>
			                               	<p><%-data.transactionType%></p>
			                            <%}else{%>
			                            	 <p><%if((data.narration).indexOf("-")!=-1){%>  <%-(data.narration).substring(0,(data.narration).indexOf("-"))%> 
			                            	 <%}else{%><%-data.narration%><%}%>
			                            	 </p>
			                            <%}%>
			                            <p class="ref">
			                      	   		<%-data.bankReferenceNumber%>
			                            </p>
		                        </div>
		                        <div class="amt">
			                          	<span class="cur">
			                          		 <%-accdetail.currency.code%>
			                          	</span>
			                          	<span class="type">
			                          		
										</span>
										<%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
			                         	
		                        </div>
		                        <div class="amt1">
			                           	<span class="hdr">
			                          		<%-$.i18n.t('app.product.accounts.availablebalance')%>
			                         	 </span>
			                         	 <span class="cur">
			                          		<%-accdetail.currency.code%> 
			                          	</span> 
			                          	<%- checkAmount($.formatNumber(availableBalance, {format:"#,###.000", locale:"us"}))%>
		                        </div>
		                        </a>
		                 </li>
	                <%}%>
              <% }); %>
              <% if(_.size(ministatement) == 0){%> 
  					<h1><%-$.i18n.t('exception.common.nostatement')%></h1>
              <% } %>
          </ul>
     </div>

     <div class="form-group pull-right">
      			  <label>Downloads&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
			      <div class="btn-group">
				        <button type="button" class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></button>
				        <button type="button" class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></button>
			      </div>
     </div>
		          <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
						<input type="button" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.sendtoemail')%>">
				  <%}%>
		          <a href="#/wealth" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
     <br/>

<link rel="stylesheet" type="text/css" href="js/libs/jqplot-master/jquery.jqplot.css" />
<script src="js/libs/jqplot-master/jquery.jqplot.min.js"></script>
<script src="js/libs/jqplot-master/plugins/jqplot.pieRenderer.min.js"></script>


<script>
$(document).ready(function(){
	var pieRenderer = function() {
		var els = new EncryptedLocalStorage('secret');
		var key = els.get('graphKey');
		var per = els.get('graphVal');
		var data = [[]];
		for(k=0;k<key.length;k++){
			data[0].push([key[k],per[k]]);
		}
	    return data;
  	};
  	var plot;
  	var renderGraph = function() {
	    plot = jQuery.jqplot('chartdiv', [], {
	    	seriesColors:["#D6AE01","#6C4675","#EA899A","#2271B3","#57A639","#5D9B9B","#3F888F",'#f2fa00', '#ff9500', '#001dfa', '#ff00a2', '#00ff2f', '#953579', '#4b5de4', '#d8b83f', '#ff5800', '#0085cc', '#c747a3', '#cddf54', '#FBD178', '#26B4E3', '#bd70c7', '#f2fa00'],
	    	title : '',
	      	dataRenderer: pieRenderer,
		  	grid:{borderColor: 'white',  shadow: false},
	      	seriesDefaults:
	      	{
				shadow : false,
				renderer : jQuery.jqplot.PieRenderer,
				rendererOptions : {
					showDataLabels: true,
		               dataLabels: 'percent',       
		               dataLabelFormatString: '%.2f%%',
		               dataLabelPositionFactor: 1.15,
		               shadow: false,
		               dataLabelThreshold:0,
		               sliceMargin: 5,
		               startAngle: 0,
		               dataLabelCenterOn:true
				}
		  	}, 
	      	legend: {
	      		rendererOptions: {
	                numberRows: 2
	            },
				show : true,
				location : 's'
			}
	    });
	}
	
	renderGraph();

    var resizeGraph = function() {
        if (plot)
            plot.destroy();
        renderGraph();
    }

    $(window).resize(function() {
        resizeGraph();
    });
});
// legend: {show:true, rendererOptions: { numberRows: 1}, location:'e' }
</script>

<script>
	 $("#name").on("click",function(){
	        $("#datepanel1").slideToggle();
	 });
	 $("#search").on("click",function(){
	        $("#datepanel2").slideToggle();
	 });
</script>
<script>
        $(document).ready(function()
        {
         $(".update").hide();

         $(".editNick").on("click",function()
         {
            $(".edit").hide();
            $(".update").show();
         });
         $(".updateNick").on("click",function()
         {
            var username =$(".nickName input").val();
            $('.userName').text(username);
            $(".update").hide();
            $('.edit').show();
         });
         $('.cancelNick').on("click",function()
         {
            $(".edit").show();
            $(".update").hide();
         });
        });
        </script>
        		<script>
       /* $(function(){
        $("#endtDate").datepicker({ dateFormat: 'dd/mm/yyyy' });
        $("startDate").datepicker({ dateFormat: 'dd/mm/yyyy' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("dd/mm/yyyy", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#endtDate").datepicker( "option", "minDate", minValue );
        })
    });
    
    $(".nativedatepicker").focus(function(event) {
  					event.preventDefault();
  					var currentField = $(this);
			        var myNewDate;
			        if (currentField.val() !== ''){
			        	var isval=currentField.val();
			        	//var tempval=/(\d+)\/(\d+)\/(\d+)/.exec(isval);//extracting "DD" into tempval(1),"MM" into tempval(2), "YYYYY" into tempval(3)
			        	var tempval=/(\d+)-(\d+)-(\d+)/.exec(isval);
			        	var parval=new Date(+tempval[3],+tempval[2]-1,+tempval[1]);// Defining tempval values into iso standard date (yyyy/mm/dd);
			        	myNewDate =Date.parse(parval);// parsing into date
			        }
			        else{
			        	event.preventDefault();
			        	myNewDate = new Date();
			        }
			        if(typeof myNewDate === "number"){ myNewDate = new Date (myNewDate); }
						// Same handling for iPhone and Android
			        	window.plugins.datePicker.show({
				            date : myNewDate,
				            mode : 'date', // date or time or blank for both
				            allowOldDates : true
					        }, 
					        function(returnDate) {
							if(returnDate) {
					           	var newDate = new Date(returnDate);
					          	// alert(newDate);
					          	var d = newDate.getDate();
								var m = newDate.getMonth()+1;
								var y = newDate.getFullYear();
								var myDate = '' + (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
								currentField.val(myDate);
								}
								// This fixes the problem not working a second/third time around, because it is in focus.
			            		currentField.blur();
			        	});
			    });// end of date plugin*/
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
