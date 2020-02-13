<!-- taglib populates the data received from modelData and the syntax starts with dollar and curly brackets -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="header.jspf" %>
	
	<!-- link to see plotly info -  https://plot.ly/javascript/ -->
	<!--  
	<div id="myDiv" style="width:600px;height:250px;"></div>
	<script>
		var data = [{
		  values: [19, 26, 55],
		  labels: ['Residential', 'Non-Residential', 'Utility'],
		  type: 'pie'
		}];

		var layout = {
		  height: 400,
		  width: 500
		};

		Plotly.newPlot('myDiv', data, layout);
	</script>
	-->
	
	<div id="plotdiv" style="width:1200px;height:500px;"></div>
	<script type="text/javascript">
		function plotGraph(x_axis, y_axis) {
			plotdiv = document.getElementById('plotdiv');
			Plotly.newPlot( plotdiv, [{
			x: x_axis,
			y: y_axis }], {
			margin: { t: 10 } } );
		}
	</script>
		
	<script type="text/javascript">
		var x_axis = [];
		var y_axis = [];
		$.ajax({
	        url: '/rates',
	        type: 'GET',
	        cache: false,
	        success: function(jsonData) {
	        	var pos = 0;
	        	jsonData.forEach(function(el) {
	        		x_axis[pos] = el.rateDate;
	        		y_axis[pos] = el.rate;
	        		pos += 1;
	        	});
	        	plotGraph(x_axis, y_axis);
	        },
	        error: function() {
	            console.log("Oops! Something went wrong while making the rest call");
	        },
	    });
	</script>

<%@include file="footer.jspf" %>

