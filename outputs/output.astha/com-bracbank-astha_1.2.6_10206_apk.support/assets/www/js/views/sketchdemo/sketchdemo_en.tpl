<!--<%
	var insideMore=window.localStorage.getItem("WithInPreMore");
%>
<% if(insideMore == "Y") { %>

<% } else { %>
<a href="#/gotoLanding" class="btn btn-danger lang-btn-close">X</a>
<% } %>-->
<a href="#/gotoLanding" class="btn btn-danger lang-btn-close">X</a>
	<div class="sketch_wrap">
		<div class="sketch_cont">
			<div class="swiper-container en-demo">
				<div class="swiper-wrapper ">
			            <!-- slide 1 -->
			            <div class="swiper-slide slide1">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
			             <!-- slide 2 -->
			            <div class="swiper-slide slide2">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
			             <!-- slide 3 -->
			            <div class="swiper-slide slide3">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
			             <!-- slide 4 -->
			             <div class="swiper-slide slide4">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
			             <!-- slide 5 -->
			            <div class="swiper-slide slide5">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
			             <!-- slide 6 -->
			            <div class="swiper-slide slide6">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
			             <!-- slide 7 -->
			            <div class="swiper-slide slide7">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
			             <!-- slide 8 -->
			            <div class="swiper-slide slide8">
			               <div class="data-dtl"></div>
			               <div class="data"></div>
			            </div>
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
      		<div class="row">
       		<div class="col-xs-3"></div>
      		<div class="col-xs-6">
            	<button type="button" class=" btn btn-success btn-block btn-sm swiper-button-next">Got it</button>
      		</div>
       		<div class="col-xs-3"> </div>
    		</div>
    
		</div>
	</div>
<script>
		var swiper = new Swiper('.swiper-container', {
             pagination: '.swiper-pagination',
             paginationClickable: true,
             nextButton: '.swiper-button-next',
		});
		$(document).ready(function(){
			$(".data-dtl").on("click",function(){
            	$(this).addClass("swiper-hide")
			})
			swiper.on('SlideChangeEnd', function ()
			{
				$(".swiper-slide-prev .data-dtl, .swiper-slide-next .data-dtl").removeClass("swiper-hide");
			})
			
        })
</script>
