<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>SB Admin 2 - Bootstrap Admin Theme</title>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Unit Master</title>

<!-- <script type="text/javascript"
	src="resources/js/jq/jquery-1.11.0.min.js"></script> -->




<style type="text/css">
.ui-jqgrid tr.jqgrow td {
	word-wrap: break-word; /* IE 5.5+ and CSS3 */
	white-space: pre-wrap; /* CSS3 */
	white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
	white-space: -pre-wrap; /* Opera 4-6 */
	white-space: -o-pre-wrap; /* Opera 7 */
	overflow: hidden;
	height: auto;
	vertical-align: middle;
	padding-top: 3px;
	padding-bottom: 3px
}
</style>

<script> 

$("#pager table.ui-pg-table").css({float:"left"});


</script>




</head>

<body>

<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home">SB Admin v2.0</a>
			</div>
			<!-- /.navbar-header -->

			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a href="home"><i class="fa fa-dashboard fa-fw"></i>
								Dashboard</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Charts<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="flot">Flot Charts</a></li>
								<li><a href="morris">Morris.js Charts</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<li><a href="tables"><i class="fa fa-table fa-fw"></i>
								Tables</a></li>
					</ul>
					<!-- /.nav-second-level -->
					</li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Unit Master</h1>
					
	<table id="list47"></table>
	<div id="plist47"></div>
				</div>
				<!-- /.col-lg-12 -->
			</div>

		</div>

	
</body>

<script>
	var myData;
$(document).ready(function() {
	$.getJSON( "list", {} )
	  .done(function( json ) {
	    
	    myData = json.aaData;
	    var gridData = new Array();
	    gridData = myData;
		//jQuery("#list47").jqGrid('setData', myData);
		//jQuery("#list47").trigger("reloadGrid");
	  })
	  .fail(function( jqxhr, textStatus, error ) {
	    var err = textStatus + ", " + error;
	    console.log( "Request Failed: " + err );
	});
});	

 
 
 
	jQuery("#list47").jqGrid(
			
			{
				
				//data : gridData,
				url:"list",
				 editurl: "add",
				datatype : "json",
				autowidth : true,
				shrinkToFit : true,
				//height : 150,
				rowNum : 10,
				//rowList : [ ],
				styleUI : "Bootstrap",
				colNames : [ 'Index', 'First Name', 'Last Name', 'Email', 'Telephone'],
				colModel : [ {
					
					name : 'aaData.DT_RowId',
					index : 'aaData.DT_RowId',
					//width : 60,
					sorttype : "int",
					editable : true
				}, {
					name : 'aaData.firstname',
					index : 'aaData.firstname',
					width : 250,
					editable : true
				}, {
					name : 'aaData.lastname',
					index : 'aaData.lastname',
					//width : 100,
					editable : true
				},{
					name : 'aaData.email',
					index : 'aaData.email',
					//width : 150,
					sortable : false,
					editable : true
					//height: auto,
					
				},
				{
					name : 'aaData.telephone',
					index : 'aaData.telephone',
					//width : 80,
					editable : true
				} ],
				pager : "#plist47",
				pgtext: null, 
				viewrecords : false,
				caption : "Manipulating Array Data",
				headers: { 
					'Accept': 'application/json',
					'Content-Type': 'application/json' 
					}
			//editurl: 'server.php', // this is dummy existing url
			});

	jQuery("#list47").jqGrid('navGrid', "#plist47", {
		search : false, //title set for hover over display
		edit : true,
		edittitle : "Edit Comment",
		add : true,
		addtitle : "Add Comment",
		del : true,
		deltitle : "Delete Comment"/* ,
		addtext: 'Add',
		edittext: 'Edit',
		deltext: 'Delete' */

	}, {
		recreateForm : true,
		width : 320,
		height : 300,
	}, {
		recreateForm : true,
		width : 320,
		height : 300
	});

	$(window).resize(function() {
		var outerwidth = $('#grid').width();
		$('#list47').setGridWidth(outerwidth); // setGridWidth method sets a new width to the grid dynamically
	});

	

</script>
</html>
