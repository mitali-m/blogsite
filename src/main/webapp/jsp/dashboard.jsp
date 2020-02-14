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
	
	<!-- The ID of the "Div"isional tag is very important as it is used in injecting the graph in it-->
	<div id="plotdiv" style="width:1200px;height:500px;"></div>
	<script type="text/javascript">
		//This script is embedded in a function and hence will not be auto fired by the browser
		//It will be triggered if and only if it is called explicitly
		function plotGraph(x_axis, y_axis) {
			plotdiv = document.getElementById('plotdiv');	//same ID as that of the div tag
			Plotly.newPlot( plotdiv, [{
				x: x_axis,
				y: y_axis }], {
				margin: { t: 10 } }
			);
		}
	</script>
		
	<script type="text/javascript">
		//Since this script is not embedded in a function, it will be auto executed by the browser when the page loads
		var x_axis = [];
		var y_axis = [];
		$.ajax({
	        url: '/rates',
	        type: 'GET',
	        cache: false,
	        success: function(jsonData) {
	        	//This code will execute when the server responds with something (success or circuit broken does not matter)
	        	var pos = 0;
	        	jsonData.forEach(function(el) {
	        		if(el.rateDate=="-") {
	        			//We will now check if the response contains a record populated by the circuit breaker
	        			alert("Sorry, cannot refresh the graph at this time.")
	        		} else {
	        			//This will execute when the JSON contains good data that was fetched from the DB
		        		x_axis[pos] = el.rateDate;
		        		y_axis[pos] = el.rate;
		        		pos += 1;
	        		}
	        	});
	        	if(pos!=0) {
		        	plotGraph(x_axis, y_axis);
	        	}
	        },
	        error: function() {
	        	//This will execute when the browser fails to communicate with the server altogether
	            console.log("Oops! Something went wrong while making the rest call");
	            alert("The internet seems to be down at this time!");
	        },
	    });
	</script>

<%@include file="footer.jspf" %>

