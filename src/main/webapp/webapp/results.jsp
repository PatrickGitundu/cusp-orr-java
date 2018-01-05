<jsp:include page="header.jsp"/>
<jsp:include page="styles.jsp"/>
</head>

<body>
<main>
	<jsp:include page="navbar.jsp" />
	<div class="row">
		<div class="col s12"><br/><br/><br/></div>
	</div>
	<div class="container">
		<h3>Results</h3>
		<p><b><i><small>All these results can be visualized via the maps page</small></i></b></p>
		<hr class="hrbar">
		<div class="row">
			<h4>Total Population Scenario</h4>
			<p>First, cumulative distribution function (CDF) plots were
				created in order to conceptualize the distances people would have to
				travel to reach the POSs. Plots for distance to the primary POS,
				secondary POS, as well as differential distance are shown below: </p>
			<p>Figures: Cumulative Distribution Functions for Closest POS, Second-Closest POS, and Delta.</p>
			<p><em><b>From the plots, it can be shown that 70% of the population needs to walk up to 500 meters to reach their primary POS, whereas only 25% of the population can reach their secondary POS within that same distance.  Although a majority of the population would only need to travel a negligible incremental distance to their secondary POS, about 15% would need to walk an additional 200 meters or more.</b></em></p>

			<h5>Table: Total Population Top 10 Most Vulnerable Census Blocks.</h5>
			<table class='rtable'>
				<thead>
					<tr>
					    <th>Neighborhood</th>
					    <th>Population</th> 
					    <th>Distance Increase (ft)</th>
					    <th>Normalized Vulnerability Score</th> 
					</tr>
				</thead>
				<tr>
				<td>Roosevelt Island (Central)</td>
				<td>4970</td>
				<td>844</td>
				<td>1.000</td>
				</tr>
				<tr>
				<td>Washington Heights, Manhattan</td>
				<td>2335</td>
				<td>978</td>
				<td>0.544</td>
				</tr>
				<tr>
				<td>Roosevelt Island (North)</td>
				<td>1905</td>
				<td>1017</td>
				<td>0.462</td>
				</tr>
				<tr>
				<td>Kips Bay, Manhattan</td>
				<td>2106</td>
				<td>816</td>
				<td>0.410</td>
				</tr>
				<tr>
				<td>Roosevelt Island (Central)</td>
				<td>1188</td>
				<td>1292</td>
				<td>0.366</td>
				</tr>
				<tr>
				<td>Parkchester, Bronx</td>
				<td>3646</td>
				<td>359</td>
				<td>0.312</td>
				</tr>
				<tr>
				<td>Williamsburg, Brooklyn</td>
				<td>2177</td>
				<td>582</td>
				<td>0.302</td>
				</tr>
				<tr>
				<td>Two Bridges, Manhattan</td>
				<td>1981</td>
				<td>622</td>
				<td>0.294</td>
				</tr>
				<tr>
				<td>Williamsburg, Brooklyn</td>
				<td>3419</td>
				<td>359</td>
				<td>0.292</td>
				</tr>
				<tr>
				<td>City Island, Bronx</td>
				<td>240</td>
				<td>5106</td>
				<td>0.292</td>
				</tr>
			</table>
			<p><em><b>Although the top ten census blocks are spread over four boroughs, there are several underlying trends.  Many of these neighborhoods are located next to large highways - such as Kips Bay and Lower Manhattan being located near the Franklin Delano Roosevelt (FDR) Drive and Williamsburg near the Brooklyn-Queens Expressway.  Several of them are also physically isolated from the rest of the City, such as Roosevelt Island and City Island.  Additionally, several of the neighborhoods have high relative populations, such as Washington Heights and Parkchester. Each of these factors contribute significantly to a high vulnerability score.</b></em></p>
		</div>
		<div class="row">
			<p>The top ten POS outlets by criticality score are shown in the table below:</p>
			<h5>Table: Total Population Top 10 Most Critical POS Outlets.</h5>
			<table class='rtable'>
				<thead>
					<tr>
					    <th>Business Name</th> 
					    <th>Neighborhood</th>
					    <th>Normalized Criticality Score</th> 
					</tr>
				</thead>
				<tr>
				<td>City Island Deli</td>
				<td>City Island, Bronx</td>
				<td>1.000</td>
				</tr>
				<tr>
				<td>Pathmark Stores  Inc</td>
				<td>Bay Terrace, Staten Island</td>
				<td>0.532</td>
				</tr>
				<tr>
				<td>Gristedes Foods  Inc</td>
				<td>Roosevelt Island (North)</td>
				<td>0.452</td>
				</tr>
				<tr>
				<td>Waldbaum Inc</td>
				<td>Arden Heights, Staten Island</td>
				<td>0.419</td>
				</tr>
				<tr>
				<td>145 Food Center Inc</td>
				<td>Springfield Gardens, Queens</td>
				<td>0.382</td>
				</tr>
				<tr>
				<td>Richmond Food  Inc</td>
				<td>West Brighton, Staten Island</td>
				<td>0.381</td>
				</tr>
				<tr>
				<td>Benn S Meat Market</td>
				<td>Mariners Harbor, Staten Island</td>
				<td>0.362</td>
				</tr>
				<tr>
				<td>K & S Produce Inc</td>
				<td>Throgs Neck, Bronx</td>
				<td>0.357</td>
				</tr>
				<tr>
				<td>Nadine Food Corp</td>
				<td>East Elmhurst, Queens</td>
				<td>0.308</td>
				</tr>
				<tr>
				<td>Trader Joes Company</td>
				<td>New Springville, Staten Island</td>
				<td>0.295</td>
				</tr>
			</table>
		<p><em><b>Although there is some relationship between the most critical POS's and most vulnerable neighborhoods - such as in City Island and Roosevelt Island - there are also some different trends.  5 of the 10 most critical POSs are located in Staten Island.  Although Staten Island is generally less populated than the other boroughs, the data shows that several POSs are much more critical to the population on a relative basis - suggesting less alternatives in those neighborhoods.</b></em></p>
		</div>
		<hr class="hrbar">
		
		<div class="row">
			<h4>SNAP Scenario</h4>
			<p>The top ten census blocks (by percentage SNAP users) by vulnerability score are shown in the table below:</p>
			<h5>Table: SNAP Users Top 10 Most Vulnerable Neighborhoods.</h5>
				<table class='rtable'>
					<thead>
					<tr>
					<th>Neighborhood</th>
					<th>Number of Households</th>
					<th>SNAP Percentage</th>
					<th>Distance Increase (ft)</th>
					<th>Normalized Vulnerability Score</th>
					</tr>
					</thead>
					<tr>
					<td>Far Rockaway, Queens</td>
					<td>1087</td>
					<td>53%</td>
					<td>470</td>
					<td>1.000</td>
					</tr>
					<tr>
					<td>Concourse, Bronx</td>
					<td>630</td>
					<td>42%</td>
					<td>646</td>
					<td>0.626</td>
					</tr>
					<tr>
					<td>Carnarsie, Brooklyn</td>
					<td>1601</td>
					<td>55%</td>
					<td>143</td>
					<td>0.470</td>
					</tr>
					<tr>
					<td>Mariners Harbor, Staten Island</td>
					<td>341</td>
					<td>62%</td>
					<td>585</td>
					<td>0.458</td>
					</tr>
					<tr>
					<td>Sheepshead Bay, Brooklyn</td>
					<td>528</td>
					<td>57%</td>
					<td>317</td>
					<td>0.351</td>
					</tr>
					<tr>
					<td>East New York, Brooklyn</td>
					<td>849</td>
					<td>53%</td>
					<td>208</td>
					<td>0.347</td>
					</tr>
					<tr>
					<td>Washington Heights, Manhattan</td>
					<td>837</td>
					<td>57%</td>
					<td>187</td>
					<td>0.331</td>
					</tr>
					<tr>
					<td>Mott Haven, Bronx</td>
					<td>566</td>
					<td>62%</td>
					<td>242</td>
					<td>0.315</td>
					</tr>
					<tr>
					<td>Far Rockaway, Queens</td>
					<td>343</td>
					<td>39%</td>
					<td>569</td>
					<td>0.281</td>
					</tr>
					<tr>
					<td>Chelsea, Manhattan</td>
					<td>814</td>
					<td>21%</td>
					<td>441</td>
					<td>0.280</td>
					</tr>
				</table>
			<p><b><em>Many of these neighborhoods are located far from the city center, away from any convenient mass transit alternatives - such as Far Rockaway, Mariners Harbor, Carnarsie, and Sheepshead Bay.  Additionally, two of the neighborhoods are located in the South Bronx.  Interestingly, the Chelsea neighborhood in Manhattan comes in as tenth-most vulnerable, despite its perception as an �affluent� neighborhood.</em></b></p>
		</div>
		<div class="row">			
			<p>The top ten POS outlets by criticality score (for SNAP) are shown in the table below:</p>
			<h5>Table: SNAP Top 10 Most Critical POS Outlets.</h5>
				<table class='rtable'>
					<thead>
						<tr>
							<th>BUSINESS NAME</th>
							<th>Neighborhood</th>
							<th>ADDRESS</th>
							<th>Normalized Criticality Score</th>
						</tr>
					</thead>
					<tr>
					<td>290 Beach 14th Street Grocery, Corp/Pioneer Spmkt</td>
					<td>Far Rockaway, Queens</td>
					<td>290 Beach 14th St</td>
					<td>1.000</td>
					</tr>
					<tr>
					<td>57 Food Market Corp</td>
					<td>Far Rockaway, Queens</td>
					<td>5725 Shore Front Pkwy</td>
					<td>0.854</td>
					</tr>
					<tr>
					<td>Fernandez & Fernandez Deli Grocery Corp</td>
					<td>Mariners Harbor, Staten Island</td>
					<td>201 Harbor Rd</td>
					<td>0.526</td>
					</tr>
					<tr>
					<td>Canarsie Food Center Inc.</td>
					<td>Canarsie, Brooklyn</td>
					<td>245 Stanley Ave</td>
					<td>0.261</td>
					</tr>
					<tr>
					<td>Gnm Deli & Grocery Inc</td>
					<td>Springfield Gardens, Queens</td>
					<td>22801 147th Ave</td>
					<td>0.234</td>
					</tr>
					<tr>
					<td>Adames Deli Grocery</td>
					<td>Rosedale, Queens</td>
					<td>25013 Hook Creek Blvd</td>
					<td>0.233</td>
					</tr>
					<tr>
					<td>Holland Deli Corp</td>
					<td>Mariners Harbor, Staten Island</td>
					<td>3400 Richmond Ter</td>
					<td>0.204</td>
					</tr>
					<tr>
					<td>Fannie Deli & Grocery Corp</td>
					<td>Far Rockaway, Queens</td>
					<td>5307 Rockaway Beach Blvd</td>
					<td>0.196</td>
					</tr>
					<tr>
					<td>Sayres 178 Deli Grocery Inc</td>
					<td>Jamaica, Queens</td>
					<td>17802 Sayres Ave</td>
					<td>0.141</td>
					</tr>
					<tr>
					<td>WALGREENS 09204</td>
					<td>Castleton Corners, Staten Island</td>
					<td>955 Manor Rd</td>
					<td>0.131</td>
					</tr>
				</table>
			<p><b><em>Far Rockaway in Queens and Staten Island constitute 6 out of the 10 top critical POSs for SNAP households. Other Queens locations far from the city center - e.g. Rosedale, Springfield Gardens, and Jamaica - contribute to the observed trend for previous SNAP neighborhoods. Again, Staten Island POSs appear to have a greater relative effect on their populations, as was the case in the Total Population scenario.
			</em></b></p>
		</div>
		<hr class="hrbar">
		
		<div class="row">
			<h4>NYCHA Scenario</h4>
			<p>The top ten census blocks (by percentage NYCHA households) by vulnerability score are shown in the table below:</p>
			<h5>Table: NYCHA Households Top 10 Most Vulnerable Neighborhoods.</h5>
				<table class='rtable'>
					<thead>
					<tr>
					<th>Development</th>
					<th>Number of Households</th>
					<th>Distance Increase (ft)</th>
					<th>Normalized Vulnerability Score</th>
					</tr>
					</thead>
					<tr>
					<td>FHA REPOSSESSED HOUSES (GROUP VII), Queens</td>
					<td>274</td>
					<td>960</td>
					<td>1.000</td>
					</tr>
					<tr>
					<td>New York City Housing Authority's Dr. Ramon E. Betances II, 13 (700 E 140th St, Bronx, NY 10454)</td>
					<td>518</td>
					<td>438</td>
					<td>0.862</td>
					</tr>
					<tr>
					<td>La Preciosa-NYCHA (1070 Washington Ave Bronx, NY 10456)</td>
					<td>590</td>
					<td>348</td>
					<td>0.780</td>
					</tr>
					<tr>
					<td>FHA REPOSSESSED HOUSES (GROUP X), Queens</td>
					<td>284</td>
					<td>688</td>
					<td>0.743</td>
					</tr>
					<tr>
					<td>New York City Housing Authority's Howard Avenue-Park Place (1761 Sterling Pl, Brooklyn, NY 11233)</td>
					<td>365</td>
					<td>514</td>
					<td>0.714</td>
					</tr>
					<tr>
					<td>NYCHA - Betances II, 18 (443 E 137th St Bronx, NY 10454)</td>
					<td>519</td>
					<td>353</td>
					<td>0.696</td>
					</tr>
					<tr>
					<td>FHA REPOSSESSED HOUSES (GROUP V), Brooklyn</td>
					<td>260</td>
					<td>696</td>
					<td>0.688</td>
					</tr>
					<tr>
					<td>New York City Housing Authority's Dr. Ramon E. Betances III, 18 (411 East 136th Street, Bronx, NY 10454, Bronx, NY 10454)</td>
					<td>521</td>
					<td>347</td>
					<td>0.687</td>
					</tr>
					<tr>
					<td>New York City Housing Authority's Lower East Side III (722 E 9th St, New York, NY 10009)</td>
					<td>364</td>
					<td>468</td>
					<td>0.647</td>
					</tr>
					<tr>
					<td>New York City Housing Authority - Beach 41st Street (38-20 Beach Channel Dr, Far Rockaway, NY 11691)</td>
					<td>165</td>
					<td>1000</td>
					<td>0.627</td>
					</tr>
				</table>
			<p><em><b>Although the top ten developments are spread throughout the boroughs, there is a concentration of locations in the Bronx, East Brooklyn, as well as Far Rockaway.</b></em></p>
		</div>
		<div class="row">			
			<p>The top ten POS outlets by criticality score (for NYCHA) are shown in the table below:</p>
			<h5>Table: NYCHA Top 10 Most Critical POS Outlets.</h5>
				<table class='rtable'>
					<thead>
						<tr>
							<th>BUSINESS NAME</th>
							<th>Neighborhood</th>
							<th>Normalized Criticality Score</th>
						</tr>
					</thead>
					<tr>
					<td>Myrtle Food Court Corp</td>
					<td>Jamaica, Queens</td>
					<td>1.000</td>
					</tr>
					<tr>
					<td>Palaite Pleasures Inc</td>
					<td>St. Albans, Queens</td>
					<td>0.981</td>
					</tr>
					<tr>
					<td>Vegetable Fruit & Fish Mkt Inc</td>
					<td>Foxhurst, Bronx</td>
					<td>0.821</td>
					</tr>
					<tr>
					<td>Jackson Avenue Live Plty Mkt</td>
					<td>Mott Haven, Bronx</td>
					<td>0.791</td>
					</tr>
					<tr>
					<td>Saile Food Corporation</td>
					<td>Brownsville, Brooklyn</td>
					<td>0.766</td>
					</tr>
					<tr>
					<td>Shop Smart Meat Market Inc</td>
					<td>Brownsville, Brooklyn</td>
					<td>0.650</td>
					</tr>
					<tr>
					<td>R&M Produce Corp</td>
					<td>Morrisania, Bronx</td>
					<td>0.445</td>
					</tr>
					<tr>
					<td>JRL Produce Inc</td>
					<td>Foxhurst, Bronx</td>
					<td>0.440</td>
					</tr>
					<tr>
					<td>161 East Meat Corp</td>
					<td>Morrisania, Bronx</td>
					<td>0.397</td>
					</tr>
					<tr>
					<td>200 Malcolm X Meat Corp</td>
					<td>Bedford-Stuyvesant, Brooklyn</td>
					<td>0.352</td>
					</tr>
				</table>
			<p><em><b>The top 10 POS outlets, in relation to NYCHA households, are all clustered around several locations - Morrisania/Foxhurst in the Bronx, Jamaica/St. Albans in Queens, and Brownsville/Bed-Stuyvesant in the Brooklyn.  Although this would appear to �dilute� the criticality of a POS relative to another in the neighboring area, it can be attributed to the relative shapes of the census blocks in question, the centroid locations, and the relatively high NYCHA populations.</b></em></p>
		
		</div>
	</div>
	<jsp:include page="scripts.jsp"/>
</main>
</body>
<jsp:include page="footer.jsp"/>