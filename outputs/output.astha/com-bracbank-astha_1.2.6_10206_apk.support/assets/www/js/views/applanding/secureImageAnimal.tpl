	<% _.each(animalimgist,function(data){ %>
		<label><img src="images/secureimages/<%-data%>.png" class="img-thumbnail">
			<input type="radio" name="radio" value="<%-data%>">
			<span class="checkmark"></span>
		</label>
	<% }); %>
											