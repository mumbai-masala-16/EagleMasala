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

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Unit Master</title>

<script type="text/javascript"
	src="resources/js/jq/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/jq/ui.jqgrid.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/jq/jquery-ui.css">

<script type="text/javascript"
	src="resources/js/jq/i18n/grid.locale-en.js"></script>
<!-- <script type="text/javascript" src="resources/js/jquery-ui-1.8.15.custom.min.js"></script> -->
<script type="text/javascript"
	src="resources/js/jq/jquery.jqGrid.min.js"></script>

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
	Dhaval mehta Rikin
	<table id="list47"></table>
	<div id="plist47"></div>
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
		deltitle : "Delete Comment",
		addtext: 'Add',
		edittext: 'Edit',
		deltext: 'Delete'

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
