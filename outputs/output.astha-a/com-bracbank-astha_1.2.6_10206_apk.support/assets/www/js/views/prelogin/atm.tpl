<div data-role="popup" id="mappanel" data-corners="false" data-theme="none" data-shadow="false" data-overlay-theme="a" data-tolerance="0,0">
  		 <a href="#" data-role="button" data-rel="back" data-direction="reverse" data-theme="c" >Back</a>
  		<div id="map_canvas"> </div>
        <div id="directions"></div>
  </div>
<div data-role="content" data-iscroll>
		 <ul data-role="listview" data-inset="true" data-theme="b" class="stmt-head">
		                <li>
		                    <h3>Nearest ATM's</h3>
		                </li>
		</ul>       
		<div class="ui-grid-a">
		            <div class="ui-block-a">
		            	<a href="#/backtohome"  data-role="button" data-theme="c" id="backtoLogin">Back</a>
		            </div>
		            <div class="ui-block-b"> 
		            	<a href="#mappanel" data-role="button" data-theme="c" data-rel="popup" data-transition="slide" id="viewmap" >View Map</a>
		            </div>
		</div>
		<div id="atmresult">
		        	   <ul data-role="listview"  data-theme="a"  class="stmt-grid" data-inset="true">
		                        <li>
		                            <p><b>HDFC Bank ATM</b></p>
		                            <p>Cr Ranga Rd, Abiramapuram, Chennai, Tamil Nadu</p>
		                            <p class="ui-li-aside">160m</p>
		                        </li>
		                </ul>
		        
		</div>
</div>
