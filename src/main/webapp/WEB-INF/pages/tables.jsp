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

<script> $("#pager table.ui-pg-table").css({float:"left"}); </script>

</head>

<body>
	Dhaval mehta Rikin
	<table id="list47"></table>
	<div id="plist47"></div>
</body>

<script>
	alert("Dhaval ravi");
	var mydata = [ {
		id : "1",
		invdate : "2010-05-24",
		name : "test",
		note : "note",
		tax : "10.00",
		total : "2111.00"
	}, {
		id : "2",
		invdate : "2010-05-25",
		name : "test2",
		note : "note2",
		tax : "20.00",
		total : "320.00"
	}, {
		id : "3",
		invdate : "2007-09-01",
		name : "test3",
		note : "note3",
		tax : "30.00",
		total : "430.00"
	}, {
		id : "4",
		invdate : "2007-10-04",
		name : "test",
		note : "note dhaval rocks",
		tax : "10.00",
		total : "210.00"
	},{

		id : "1",
		invdate : "2010-05-24",
		name : "test",
		note : "note",
		tax : "10.00",
		total : "2111.00"
	}, {
		id : "2",
		invdate : "2010-05-25",
		name : "test2",
		note : "note2",
		tax : "20.00",
		total : "320.00"
	}, {
		id : "3",
		invdate : "2007-09-01",
		name : "test3",
		note : "note3",
		tax : "30.00",
		total : "430.00"
	}, {
		id : "4",
		invdate : "2007-10-04",
		name : "test",
		note : "note dhaval rocks",
		tax : "10.00",
		total : "210.00"
	},
{
		id : "1",
		invdate : "2010-05-24",
		name : "test",
		note : "note",
		tax : "10.00",
		total : "2111.00"
	}, {
		id : "2",
		invdate : "2010-05-25",
		name : "test2",
		note : "note2",
		tax : "20.00",
		total : "320.00"
	}, {
		id : "3",
		invdate : "2007-09-01",
		name : "test3",
		note : "note3",
		tax : "30.00",
		total : "430.00"
	}, {
		id : "4",
		invdate : "2007-10-04",
		name : "test",
		note : "note dhaval rocks",
		tax : "10.00",
		total : "210.00"
	} ];
	jQuery("#list47").jqGrid(
			{
				data : mydata,
				datatype : "local",
				autowidth : true,
				shrinkToFit : true,
				//height : 150,
				rowNum : 10,
				//rowList : [ ],
				colNames : [ 'Inv No Ravi', 'Date', 'Client', 'Amount', 'Tax',
						'Notes' ],
				colModel : [ {
					name : 'id',
					index : 'id',
					//width : 60,
					sorttype : "int",
					editable : true
				}, {
					name : 'invdate',
					index : 'invdate',
					width : 250,
					sorttype : "date",
					formatter : "date",
					editable : true
				}, {
					name : 'name',
					index : 'name',
					//width : 100,
					editable : true
				}, {
					name : 'amount',
					index : 'amount',
					//width : 80,
					align : "right",
					sorttype : "float",
					formatter : "number",
					editable : true
				}, {
					name : 'tax',
					index : 'tax',
					//width : 80,
					align : "right",
					sorttype : "float",
					editable : true
				},  {
					name : 'note',
					index : 'note',
					//width : 150,
					sortable : false,
					editable : true
					//height: auto,
					
				} ],
				pager : "#plist47",
				pgtext: null, 
				viewrecords : false,
				caption : "Manipulating Array Data"
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
