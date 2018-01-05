<jsp:include page="header.jsp"/>
<jsp:include page="styles.jsp"/>
  <link rel="stylesheet" href="css/leaflet.css" />
  <link rel="stylesheet" href="css/leaflet-search.min.css" />   
</head>

<body>
<main>
<div class="pintarget">
	<jsp:include page="navbar.jsp" />
	<div class="row">
		<div class="col s12"><br/><br/><br/></div>
	</div>
	
	
		    
	<div id="maps-main" class="container" >
		
		<div class="row" >
			<div class="col s12">
				<div class="row">
					<h5 style="margin-left:20px">Select Score:</h5>
				</div>
				
				<div class="row">
					<div class="col s12">
						<div class="input-field col s3">
							<select id="pop" class="field-select">
							  	<option value="select">Select</option>
							  	<option value="baseimpact">Total Population</option>
							  	<option value="snapimpact">SNAP</option>
							  	<option value="nychaimpact">NYCHA</option>
								</select>
							<label>Target Population:</label>
						</div>
						<div class="input-field col s3">
							<select id="score" class="field-select">
							  	<option value="select">Select</option> 
							  	<option value="censusscore">Vulnerable Population</option>
							  	<option value="posscore">Critical POS</option>
						 	</select>
							<label>Target Score:</label>
						</div>
						
						<div class="input-field col s3">
							<div class="center-align">
								<button type="submit" class="btn btn-default waves-effect waves-light" id="seescore" style="background: #015289">Run</button>
						 		<button type="submit" class="btn btn-default waves-effect waves-light" id="clearscore" style="background: #015289">Reset</button>
							</div>
						</div>
						<div class="col s3">
			  				<h5>Using the Maps</h5>
			  				<ol>
						   		<li >Select Target Population</li>
							    <li >Select Score Type</li>
							    <li>Click Run To See the Results</li>
							</ol>
							<p>Select Reset to Clear All Results</p>
			      		</div>
		      		</div>
		      	</div>
				<hr class="hrbar">
				<div class="row">
					<div id="resultlegend"></div>
				</div>
				<div class="row">
					<div id="infoWindow"></div>
				</div>
			</div>
			
		</div>
		
		<div class="row">
			<div id="map1" class="col s12"></div>
<!-- 			<div id="wait" class="loader" style="display:none;"></div> -->
		</div>
		
		<div class="row">
			<div id="moreInfo" class="col s8">
				<ul class="collapsible" data-collapsible="expandable">
	  				<li>
	  					<div id="moreoneheader" class="collapsible-header">POS/Census Area</div>
	  					<div id="moreonebody" class="collapsible-body grey lighten-4"><p>Closest POS or Most affected Census Area</p></div>
	  				</li>
	  				<li>
	  					<div id="moretwoheader" class="collapsible-header">Top Ten</div>
	  					<div id="moretwobody" class="collapsible-body grey lighten-4"><p>Top ten results</p></div>
	  				</li>
	  			</ul>
			</div>
			<div class="col s4">
				<div id="maplegend"></div>
			</div>
		</div>
	</div>
</div>
  <jsp:include page="scripts.jsp" />
<!--   <script src="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js"></script> -->
  <script src="js/leaflet.js"></script>
  <script src="js/leaflet-search.min.js"></script>
  <script src="js/geostats.min.js"></script>
  <script>
  	var user ='<%= session.getAttribute("userName")%>';
  </script>
  <script src="js/orr.js"></script>
</main>
</body>
<jsp:include page="footer.jsp"/>