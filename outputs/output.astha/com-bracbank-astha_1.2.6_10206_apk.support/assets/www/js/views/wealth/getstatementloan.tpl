<%
	var els = new EncryptedLocalStorage('secret');
	var AcctSummaryArray = els.get("AcctSummaryArray");
	var accountNumber = AcctSummaryArray[0];
	var emailidd = els.get("emailid");
	var emailIdCheck = els.get("emailid");
	var accoutDetailType=els.get("accoutDetailType");
	var key = els.get('graphKey_det_stmt');
	var pageno=els.get("pageno");
	var acccid = els.get("loanid");
%>

<a href="#/statement/<%-acccid%>" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
	<!--Breadcrumb Starts Here-->
	<li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	<li><a href="#/loanstatement/<%-acccid%>"><%-$.i18n.t('app.product.general.statement')%></a></li>
	<li class="active"><%-$.i18n.t('app.product.general.detailstatement')%></li>
</ol>

<form name="paginationoptions">
	<input type='hidden' id='current_page' />
	<input type='hidden' id='currentpageno' />
	<input type='hidden' id='show_per_page' />

	<div class="clearfix"></div><br/>
	<div class="clearfix"></div>



	<!--  Details Statement Chart Starts   -->
	
	<%if(key!=null && key!="") { if(key.length>0){%>
	       <div class="panel panel-default cust_panel" id="gdfs" onClick="showGraph();">
		            <div class="panel-heading" data-toggle="collapse" data-target="#graphstmt">
		              <p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;
			                   <%-$.i18n.t('app.product.creditcard.graph')%>
		              </p>
		            </div>
		            <div id="graphstmt" class="collapsePanel panel-collapse collapse">
			              <div class="panel-body">
			                 <div id="stmtchartdiv"  align="left"></div>
			              </div>
		            </div>
	       </div>
	<%}}%>
	
	
	<!--  Details Statement Chart Ends   -->
	
	
	
	<div class="clearfix"></div><br/>
	<div class="clearfix"></div>
	
	<div id="pagingcontent">
			
	</div>
	
	<% if(_.size(ministatement) == 0){%> 
		<div class="alert alert-info alert-sm">
			<h4><%-$.i18n.t('exception.common.nostatement')%></h4>
		</div>
	<%}%>

	<input type="hidden" id="accountno" name="accountno" >
	
	<% if(_.size(ministatement) > 0){%> 
		<div id='page_navigation' class='pageincontentview pull-right' ></div>
	<% } %>

 	</br></br>
	
		<div class="form-group pull-right">
		
			<label><%-$.i18n.t('app.product.general.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
			<div class="btn-group">
				<button type="button" id="pdfdownload" name="pdfdownload" onclick="PDFDownload()" class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></button>
				<!--<button type="button" id="xlsdownload" name="xlsdownload" onclick="XLSdownload()" class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></button>
				<button type="button" id="csvdownload" name="csvdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.csv')%></button>-->
			</div>
			
		</div>

<% if(_.size(ministatement) > 0){%>
		<!-- <input type="button" id="emailadvice" name="emailadvice"  class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%> "> -->
		<!-- <%if(emailidd!=null&&emailidd!=''&&emailidd!=undefined&&emailidd!="undefined"){%>
		<a href="#/emailadvice" class="btn btn-block btn-success"><%-$.i18n.t('app.product.accounts.emailadvice')%></a> <br>
		 <% } %> -->
		 <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
			<input type="button" id="emailadvice" name="emailadvice"  onclick="sendEmail()"  class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%> ">
		<%}%>
		<br/>
	<% } %>
	<% if(_.size(ministatement) > 0){%>

	<div id="showNextPage" style="display:none;">
		<button type="button" id="buttonclick" name="buttonclick" >Button Click Event</button>
	</div>
	<% } %>

</form>



<link rel="stylesheet" type="text/css" href="js/libs/jqplot-master/jquery.jqplot.css" />
<script src="js/libs/jqplot-master/jquery.jqplot.min.js"></script>
<script src="js/libs/jqplot-master/plugins/jqplot.pieRenderer.min.js"></script>
<script>
	
		function showGraph(){
			$("#stmtchartdiv").empty();
			var pieRenderer = function() {
				var elss = new EncryptedLocalStorage('secret');
				var key = elss.get('graphKey_det_stmt');
				if(key!=null && key!="")
			{
				var per = els.get('graphVal_det_stmt');
				var data = [[]];
				for(k=0;k<key.length;k++){
					data[0].push([key[k], eval(per[k]) ]);
				}
			}
			    return data;
			};
		  	var plot;
		  	var renderGraphDEF = function() {
			    plot = jQuery.jqplot('stmtchartdiv', [], {
			    	seriesColors:["#D6AE01","#6C4675","#EA899A","#2271B3","#57A639","#5D9B9B","#3F888F",'#f2fa00', '#ff9500', '#001dfa', '#ff00a2', '#00ff2f', '#953579', '#4b5de4', '#d8b83f', '#ff5800', '#0085cc', '#c747a3', '#cddf54', '#FBD178', '#26B4E3', '#bd70c7', '#f2fa00'],
			    	title : '',
			      	dataRenderer: pieRenderer,
				  	grid: {
				  		drawBorder: false,
				  		drawGridlines: false,
				  		background: '#ffffff',
				  		shadow:false
				  	},
				  	axesDefaults: {
				  	},
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

			var renderGraphLIT = function() {
			    plot = jQuery.jqplot('stmtchartdiv', [], {
			    	seriesColors:["#D6AE01","#6C4675","#EA899A","#2271B3","#57A639","#5D9B9B","#3F888F",'#f2fa00', '#ff9500', '#001dfa', '#ff00a2', '#00ff2f', '#953579', '#4b5de4', '#d8b83f', '#ff5800', '#0085cc', '#c747a3', '#cddf54', '#FBD178', '#26B4E3', '#bd70c7', '#f2fa00'],
			    	title : '',
			      	dataRenderer: pieRenderer,
				  	grid: {
				  		drawBorder: false,
				  		drawGridlines: false,
				  		background: '#f2f2f2',
				  		shadow:false
				  	},
				  	axesDefaults: {
				  	},
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
			
			var renderGraphDRK = function() {
			    plot = jQuery.jqplot('stmtchartdiv', [], {
			    	seriesColors:["#D6AE01","#6C4675","#EA899A","#2271B3","#57A639","#5D9B9B","#3F888F",'#f2fa00', '#ff9500', '#001dfa', '#ff00a2', '#00ff2f', '#953579', '#4b5de4', '#d8b83f', '#ff5800', '#0085cc', '#c747a3', '#cddf54', '#FBD178', '#26B4E3', '#bd70c7', '#f2fa00'],
			    	title : '',
			      	dataRenderer: pieRenderer,
				  	grid: {
				  		drawBorder: false,
				  		drawGridlines: false,
				  		background: '#00ab96',
				  		shadow:false
				  	},
				  	axesDefaults: {
				  	},
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
		    var resizeGraph = function() {
		        if (plot)
		            plot.destroy();
		            
	        	var current_theme = getfromStorage("current_theme");
            	if(current_theme=="DEF" || current_theme == null){
            		renderGraphDEF();
            	}else if(current_theme=="LIT"){
            		renderGraphLIT();
            	}else if(current_theme=="DRK"){
            		renderGraphDRK();
            	}
		    }
			
			setTimeout(function() {
      			resizeGraph();
			}, 200);
			
		
		}
		// legend: {show:true, rendererOptions: { numberRows: 1}, location:'e' }
</script>








<script type="text/javascript">
	var show_per_page = 5; 
	var els = new EncryptedLocalStorage('secret');
	var tranback=els.get("tranback");
	var totpage= els.get("lastpage");
	
	var currentpage= els.get("currentpage");
	currentpage = parseInt(currentpage);
	var pageno=els.get("pageno");
	page_no=parseInt(pageno)-1;
	
	totpage=parseInt(totpage);
	var number_of_items = $('#pagenationcontent').children().size();
	var number_of_pages = parseInt(totpage); //Math.ceil(number_of_items/show_per_page);
	
	var currentPage=Math.floor((page_no+1)/5);
	var setPage=currentPage*5;
	$('#current_page').val(setPage);
	var crossingpage = 1;
	$('#show_per_page').val(show_per_page);

	function showPage(show_per_page,loadtype){
			var current_link = parseInt($('#current_page').val());
		  
			$('#current_page').val(page_no);
			var navigation_html ='';
			
			navigation_html = '<a class="previous_link" href="javascript:previous();"><</a>';
	
			if(loadtype=='N'){
				current_link=current_link+1;
			}
			
			if(tranback=="9"){
			current_link=parseInt(current_link)-1;
			if(current_link == -1)
			current_link =0;
			}
			var count = 1;
			while(number_of_pages > current_link){
				if(count<6){
					navigation_html += '<a class="page_link" href="javascript:onPageClick(' + current_link +')" longdesc="' + current_link +'">'+ (current_link+1) +'</a>';
				}
				current_link++;
				count++;
			}
	
			navigation_html += '<a class="next_link" href="javascript:next();">></a>';
			
			$('#page_navigation').html(navigation_html);
			var thispage = currentpage-1;
			if(thispage==0){
					$('.page_link[longdesc=' + thispage +']').addClass('active_page');
			}else{
					if(loadtype=="N"){
						thispage = thispage+1;
						$('#current_page').val(thispage);
						go_to_page(thispage);
					}else if(loadtype=="P"){
						thispage = thispage-1;
						$('#current_page').val(thispage);
						go_to_page(thispage);
					}
			}
			//currentpage++;
			if(loadtype=='P'){
					//add active_page class to the first page link
					//$('#page_navigation .page_link:last').addClass('active_page');
			}else{
					//add active_page class to the first page link
					//$('#page_navigation .page_link:first').addClass('active_page');
					
					//hide all the elements inside content div
					//$('#pagenationcontent').children().css('display', 'none');
					
					//and show the first n (show_per_page) elements
					//$('#pagenationcontent').children().slice(0, show_per_page).css('display', 'block');
			}
	}


	function previous(){
		var new_page = parseInt($('#current_page').val()) - 1;
		if(new_page>=0){
				$('#current_page').val(new_page);
				var xx = 0;
				 if(new_page>0){
					if( (5 * crossingpage) == (new_page+6) ){
						if(crossingpage>0){
							crossingpage = crossingpage - 1;
						}else{
							crossingpage = 1;
						}
						$('#current_page').val( (new_page-4) );
						showPage(show_per_page,'P');
						currentpage--;
						xx = 1;
					}else if(tranback=="9"){
					showPage(show_per_page,'P');
					onPageClick(new_page);
					}
				} 
				if(xx==0){
					if($('.active_page').prev('.page_link').length==true){
						go_to_page(new_page);
						currentpage--;
					}
				}
		}
	}

	function next(){
		var new_page = parseInt($('#current_page').val()) + 1;
		
		if(new_page<=totpage){
				$('#current_page').val(new_page);
				var xx = 0;
				if(number_of_pages>new_page){
					if( (5 * crossingpage) == new_page ){
						new_page = parseInt($('#current_page').val())-1;
						$('#current_page').val(new_page);
						showPage(show_per_page,'N');
						crossingpage++;
						currentpage++;
						xx = 1;
					}else if(tranback=="9"){
					showPage(show_per_page,'N');
					onPageClick(new_page);
					}
				}
				if(xx==0){
					if($('.active_page').next('.page_link').length==true){
						go_to_page(new_page);
						currentpage++;
					}
				}
		}

	}

	function go_to_page(page_num){

		var pagen = parseInt(page_num)+1;
		pagen = pagen +"";
		$('#currentpageno').val(pagen);
		var show_per_page = parseInt($('#show_per_page').val());
		
		start_from = page_num * show_per_page;
		
		end_on = start_from + show_per_page;
		
		//$('#pagenationcontent').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');
		
		$('.page_link[longdesc=' + page_num +']').addClass('active_page').siblings('.active_page').removeClass('active_page');

		Backbone.history.navigate("#/showotherloanpages/"+pagen);
	}

	function onPageClick(page_num){
		currentpage = page_num;
		$('#current_page').val(page_num);
		currentpage++;
		go_to_page(page_num);
	}
	showPage(show_per_page,'F');
</script>


<script>

function PDFDownload(){
		var els = new EncryptedLocalStorage('secret');
		var appurl = '';
	    //Retrieve application response mode from local cache
		       
		var appContextPath = els.get('app.context.path');
		       
		       	
		//Setting up application URL
	        	
	    appurl= appContextPath+'account/ministatement/download.pdf';
	    var access_token = els.get("access_token");
		        	var device_id= els.get('device_id');
		        	var lang_id= els.get("lang_id");
		        	var accountNumber= $("#accountno").val();
		        	console.log("access_token :" +access_token);
		        	var acccid = els.get("loanid");
		        	var myaccounts = els.get("myloans");
		        	var acctid = myaccounts[acccid].id;
	            	var cdbflag = els.get("cdbflag");
			        var fromamtt=els.get("frmamtprod");
			        var toamtt=els.get("toamtprod");
			        var lastnTxn=els.get("lastntrans");
			        var fromdate = els.get("fromdateacc");
	        		var todate = els.get("todateacc");
		        	var emailRequired ='';		
			     			if(fromamtt!=""){
			        			fromamtt = fromamtt;
			        		}else{
			        			fromamtt="";
			        		}
			        		
			        		if(toamtt!=""){
			        			toamtt = toamtt;
			        		}else{
			        			toamtt="";
			        		}
		
		/* Sensitive data hashing - PT issue fix - Starts */
		        		var my_device_id = getDeviceId();
		        		var appCheckSum = '';//accountNumber+""+my_device_id;
		        		//var hashing = CryptoJS.MD5(appCheckSum);
		        		//appCheckSum = hashing + "";
		
		        		// Note: New key and value as follows "appchecksum:appCheckSum" to be added as part of request param
        /* Sensitive data hashing - PT issue fix - Ends */
        		
		var pdfDownloadUrl = "accountID="+acctid+"&fromDate="+fromdate+"&toDate="+todate+"&fromAmount="+fromamtt+"&toAmount="+toamtt+"&lastnTxn="+lastnTxn+"&emailRequired="+emailRequired+"&appchecksum="+appCheckSum+"&access_token="+access_token+"&download=PDF&type=LOAN";
		
		
		var uri = encodeURI(pdfDownloadUrl);
		        	
		fileDownLoadAndViewer(appurl,uri,1,access_token); // 1 for pdf pass the uri and download type
		        	
}

//XLS Download Option
function XLSdownload()
{
	var els = new EncryptedLocalStorage('secret');
	var appurl = '';
	//Retrieve application response mode from local cache
		       
	var appContextPath = els.get('app.context.path');
		       
		       	
	//Setting up application URL
	        	
	appurl= appContextPath+'account/ministatement/download.xls';
	var access_token = els.get("access_token");
		        	var device_id= els.get('device_id');
		        	var lang_id= els.get("lang_id");
		        	var accountNumber= $("#accountno").val();
		        	console.log("access_token :" +access_token);
		        	var acccid = els.get("loanid");
		        	var myaccounts = els.get("myloans");
		        	var acctid = myaccounts[acccid].id;
	            	var cdbflag = els.get("cdbflag");
			        var fromamtt=els.get("frmamtprod");
			        var toamtt=els.get("toamtprod");
			        var lastnTxn=els.get("lastntrans");
			        var fromdate = els.get("fromdateacc");
	        		var todate = els.get("todateacc");
		        	var emailRequired ='';		
			     			if(fromamtt!=""){
			        			fromamtt = fromamtt;
			        		}else{
			        			fromamtt="";
			        		}
			        		
			        		if(toamtt!=""){
			        			toamtt = toamtt;
			        		}else{
			        			toamtt="";
			        		}
		
		/* Sensitive data hashing - PT issue fix - Starts */
		        		var my_device_id = getDeviceId();
		        		var appCheckSum = '';//accountNumber+""+my_device_id;
		        		//var hashing = CryptoJS.MD5(appCheckSum);
		        		//appCheckSum = hashing + "";
		
		        		// Note: New key and value as follows "appchecksum:appCheckSum" to be added as part of request param
     /* Sensitive data hashing - PT issue fix - Ends */
        
	var pdfDownloadUrl = "accountID="+acctid+"&fromDate="+fromdate+"&toDate="+todate+"&fromAmount="+fromamtt+"&toAmount="+toamtt+"&lastnTxn="+lastnTxn+"&emailRequired="+emailRequired+"&appchecksum="+appCheckSum+"&access_token="+access_token+"&download=XLS&type=LOAN";
	//var pdfRef = window.open(pdfDownloadUrl, '_system', 'location=no');
		        
	var uri = encodeURI(pdfDownloadUrl);
		        	
	fileDownLoadAndViewer(appurl,uri,2,access_token); // 2 for xls pass the uri and download type
	
}

//Email Advice

function sendEmail(){
	Backbone.history.navigate("#/loademailadvice");
}

</script>
<style>
	#page_navigation a{
		padding:3px;
		border:1px solid #00AB96;
		margin:2px;
		color:black;
		text-decoration:none
	}
	.active_page{
		background:#00AB96;
		color:white !important;
	}
</style>


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
