

/* FILE: /jomres/javascript/jomres.js */
if ('undefined' != typeof(jQuery)) {
	var jomresJquery = jQuery.noConflict();
};

//vars
var jr_deferred = jomresJquery.Deferred();
var killScroll = false; // IMPORTANT
var last_scrolled_id = 0;

jomresJquery(document).ready(function () {
	jomresJquery.ajaxSetup({ cache: false });

	if (navigator.appName == 'Microsoft Internet Explorer') {
		window.onerror = Block_Error;
	}

	jomresJquery(".jomres_bt_tooltip_features").tipsy({html: true, fade: true, gravity: jomresJquery.fn.tipsy.autoNS, delayOut: 100});

	jomresJquery.fn.fadeThenSlideToggle = function (speed, easing, callback) {
		if (this.is(":hidden")) {
			// temp disabled, we'll use fade in/out for now as sliding doesn't work on ipad
			//return this.slideDown(speed, easing).fadeTo(speed, 1, easing, callback);
			return this.fadeIn();
		} else {
			//return this.fadeTo(speed, 0, easing).slideUp(speed, easing, callback);
			return this.fadeOut();
		}
	}
});

function Block_Error() {
	return true;
};

function toggle_button_class(id) {
	var isActive = jomresJquery(id).hasClass('active');
	if (isActive)
		{
		jomresJquery(id).removeClass('active btn-success');
		}
	else
		{
		jomresJquery(id).addClass('active btn-success');
		}
}

function make_datatable(table_id, pagetitle, livesite, ajaxurl, showTools) {
	bProcessing = false;
	bServerSide = false;
	dt_ajax_options = false;
	if (typeof ajaxurl !== 'undefined' && ajaxurl != '') {
		bProcessing = true;
		bServerSide = true;
		dt_ajax_options = {
			"url": ajaxurl,
			"data": function (d) {
				d.jr_search = d.search;
				d.jr_order = d.order;
				delete d.search;
				delete d.order;
				}
			}
		}
	if (typeof showTools === 'undefined')
		{
		showTableTools = true;
		}
	else
		{
		showTableTools = showTools;
		}
		
	if (showTableTools)
		{
		if (jomres_template_version == "bootstrap3"){
			sDomm = "<'row'<'col-xs-4'lr><'col-xs-4'B><'col-xs-4'f>>t<'row'<'col-xs-4'i><'col-xs-8'p>>";
			}
		else {
			sDomm = "<'row-fluid'<'span4'lr><'span4'B><'span4'f>>t<'row-fluid'<'span4'i><'span8'p>>";
			}
		}
	else
		{
		if (jomres_template_version == "bootstrap3"){
			sDomm = "<'row'<'col-xs-4'l><'col-xs-2'r><'col-xs-6'f>>t<'row'<'col-xs-4'i><'col-xs-8'p>>";
			}
		else {
			sDomm = "<'row-fluid'<'span4'r><'span2'r><'span6'f>>t<'row-fluid'<'span4'i><'span8'p>>";
			}
		
		}
	var oTable = jomresJquery('#' + table_id).dataTable({
		"processing": bProcessing,
		"serverSide": bServerSide,
		"ajax": dt_ajax_options,
		"jQueryUI": false,
		"stateSave": true,
		"autoWidth": false,
		"dom": sDomm,
		"order": [[ 0, "desc" ]],
		"searchDelay": 1000,
		"deferRender": true,
		"language": {
			"decimal":			'',
			"emptyTable":		dataTables_sEmptyTable,
			"info":				dataTables_sInfo,
			"infoEmpty":		dataTables_sInfoEmpty,
			"infoFiltered":		dataTables_sInfoFiltered,
			"infoPostFix":		dataTables_sInfoPostFix,
			"thousands": 		dataTables_sInfoThousands,
			"lengthMenu":		dataTables_sLengthMenu,
			"loadingRecords":	dataTables_sLoadingRecords,
			"processing":		dataTables_sProcessing,
			"search":			dataTables_sSearch,
			"zeroRecords":		dataTables_sZeroRecords,
			"paginate": {
				"first":	dataTables_sFirst,
				"last":		dataTables_sLast,
				"next":     dataTables_sNext,
				"previous": dataTables_sPrevious
			},
			"aria": {
				"sortAscending":  dataTables_sSortAscending,
				"sortDescending": dataTables_sSortDescending
			}
		},
		"responsive": {
			"details": {
				"type": "inline"
			}
		},
		"buttons": [
			{
				"extend": "copy",
				"exportOptions": {
					"columns": ':visible'
				}
			},
			{
				"extend": "csv",
				"charset": "utf8",
				"exportOptions": {
					"columns": ':visible'
				}
			},
			{
				"extend": "excel",
				"title": pagetitle,
				"charset": "utf16le",
				"exportOptions": {
					"columns": ':visible'
				}
			},
			{
				"extend": "pdf",
				"charset": "utf8",
				"orientation": "landscape",
				"title": pagetitle,
				"exportOptions": {
					"columns": ':visible'
				}
			},
			{
				"extend": "print",
				"title": pagetitle,
				"autoPrint": false,
				"exportOptions": {
					"columns": ':visible'
				}
			},
			{
				"extend": "colvis",
				//"columns": ":gt(0)"
			}
		]
	});
}

function dataTableSetHiddenColumns(table_id, column_ids)
	{
	var oTable = jomresJquery('#' + table_id).DataTable();
	var hiddenColumnsSet = localStorage.getItem( 'hiddenColumnsSet' + table_id);
	if (!hiddenColumnsSet && column_ids.constructor === Array && column_ids.length > 0 )
		{
		oTable.columns(column_ids).visible(false,false);
		jomresJquery( oTable.columns(column_ids).header() ).addClass( 'none' );
		}
	else
		{
		oTable.columns().every( function () {
			if (this.visible() === false ) 
				{
				this.visible(false,false);
				jomresJquery( this.header() ).addClass( 'none' );
				}
			else
				{
				this.visible(true,false);
				jomresJquery( this.header() ).removeClass( 'none' );
				}
			});
		}
	oTable.responsive.rebuild();
	oTable.responsive.recalc();
	localStorage.setItem( 'hiddenColumnsSet' + table_id, true);
}

/* Credit : http://www.developersnippets.com/2009/05/20/evaluate-scripts-while-working-on-ajax-requests/ */
function parse_ajax_returned_scripts(_source) {
	var source = _source;
	var scripts = new Array();

	// Strip out tags
	while (source.indexOf("<script") > -1 || source.indexOf("</script") > -1) {
		var s = source.indexOf("<script");
		var s_e = source.indexOf(">", s);
		var e = source.indexOf("</script", s);
		var e_e = source.indexOf(">", e);

		// Add to scripts array
		scripts.push(source.substring(s_e + 1, e));
		// Strip from source
		source = source.substring(0, s) + source.substring(e_e + 1);
	}

	// Loop through every script collected and eval it
	for (var i = 0; i < scripts.length; i++) {
		try {
			eval(scripts[i]);
		}
		catch (ex) {
			// do what you want here when a script fails
		}
	}
	// Return the cleaned source
	jomresJquery(".jomres_bt_tooltip_features").tipsy({html: true, fade: true, gravity: 'sw', delayOut: 100});
	return source;
}

function bind_data_toggle() {
	jomresJquery(function () {
		jomresJquery('[data-toggle="modal"]').click(function (e) {
			random_identifier = jomresJquery(this).attr('random_identifier');
			modal_title = jomresJquery(this).attr('property_name');
			property_uid = jomresJquery(this).attr('property_uid');
			task = jomresJquery(this).attr('ajax_task');
			loader = '';
			
			if (task == 'show_property_reviews') {
				jomresJquery('#property_reviews' + random_identifier).html(loader);
			}
			else if (task == 'faq') {
				modal_title = jomresJquery(this).attr('faq-modal-title');
				jomresJquery('#FAQModal').html(loader);
			}
			else
				jomresJquery('#module_' + random_identifier + '_popup').html(loader);
			
			e.preventDefault();
			
			if (task == 'show_property_reviews') {
				ajax_url = property_reviews_ajax_url + property_uid;
				}
			else if (task == 'faq'){
				ajax_url = live_site_ajax + '&task=faq';
				}
			else{
				ajax_url = module_pop_ajax_url + property_uid;
				}
			
			jomresJquery.get(ajax_url , function (data) {
				if (jomres_template_version == "bootstrap3"){
					result = '<div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal">x</button><h4>' + modal_title + '</h4></div><div class="modal-body">' + data + '</div></div></div>';
					}
				else {
					result = '<div class="modal-header"><button type="button" class="close" data-dismiss="modal">x</button><h4>' + modal_title + '</h4></div><div class="modal-body">' + data + '</div>';
					}
				
				if (task == 'show_property_reviews') {
					jomresJquery('#property_reviews' + random_identifier).html(result);
					}
				else if (task == 'faq') {
					jomresJquery('#FAQModal').html(result);
					}
				else {
					jomresJquery('#module_' + random_identifier + '_popup').html(result);
					}
				
				jomresJquery(".jomres_bt_tooltip_features").tipsy({html: true, fade: true, gravity: 'sw', delayOut: 100});
			});
		});
	});
}

function module_popup(random_identifier, property_uid) {
	var modal_popup_height = 640;
	var modal_popup_width = 520;
	if ((screen.width <= 960)) {
		var modal_popup_height = 440;
		var modal_popup_width = 320;
	}
	else if ((screen.width <= 758)) {
		var modal_popup_height = 340;
		var modal_popup_width = 220;
	}
	else if ((screen.width <= 524)) {
		var modal_popup_height = 240;
		var modal_popup_width = 120;
	}

	jomresJquery('#module_' + random_identifier + '_popup').dialog({
		height: modal_popup_height,
		width: modal_popup_width,
		modal: true,
		resizable: true,
		open: function () {
			jomresJquery.get(module_pop_ajax_url + property_uid,
				function (data) {
					jomresJquery('#module_' + random_identifier + '_popup').html(data);
					jomresJquery(".jomres_bt_tooltip_features").tipsy({html: true, fade: true, gravity: 'sw', delayOut: 100});
				});
		}
	}); // init without showing
	/* closes the dialog when you click elsewhere on the page. Modal in the dialog options must be set to True*/
	jomresJquery('.ui-widget-overlay').on("click", function () {
		//Close the dialog
		jomresJquery('#module_' + random_identifier + '_popup').dialog("close");
	});
}

jomresJquery(document).ready(function () {
	if (jomres_template_version != 'jquery_ui') {return false};
	
	//all hover and click logic for buttons
	jomresJquery(".fg-button:not(.ui-state-disabled)")
	.hover(
		function () {
			jomresJquery(this).addClass("ui-state-hover");
		},
		function () {
			jomresJquery(this).removeClass("ui-state-hover");
		}
	)
	.mousedown(function () {
		jomresJquery(this).parents('.fg-buttonset-single:first').find(".fg-button.ui-state-active").removeClass("ui-state-active");
		if (jomresJquery(this).is('.ui-state-active.fg-button-toggleable, .fg-buttonset-multi .ui-state-active')) {
			jomresJquery(this).removeClass("ui-state-active");
		}
		else {
			jomresJquery(this).addClass("ui-state-active");
		}
	})
	.mouseup(function () {
		if (!jomresJquery(this).is('.fg-button-toggleable, .fg-buttonset-single .fg-button,  .fg-buttonset-multi .fg-button')) {
			jomresJquery(this).removeClass("ui-state-active");
		}
	});
});


function quick_info(uid) {
	var selectedEffect = "slide";
	var options = {};
	jomresJquery("#effect" + uid).toggle(selectedEffect, options, 500);
	jomresJquery("#effect" + uid).removeClass('hide');
	return false;
};

function isAvailable(date) {
	var dateAsString = date.getFullYear().toString() + "-" + (date.getMonth() + 1).toString() + "-" + date.getDate();
	var result = jomresJquery.inArray(dateAsString, bookedDays) == -1 ? [true] : [false];
	return result
};

function switch_editing_mode(url, val) {
	var original_url = window.location.href;
	jomresJquery.get(url + '&task=switcheditingmode&switchmode=' + val, function (data) {
		window.location = original_url;
	});
};

function switch_language_context(val) {
	var original_url = window.location.href;
	window.location = original_url + '&language_context=' + val;
};

function switch_exchange_rate(url, val) {
	var original_url = window.location.href;
	jomresJquery.get(url + '&task=switch_exchange_rate&currency_code=' + val, function (data) {
		window.location = original_url;
	});
};

function generic_reload(field, val) {
	var original_url = window.location.href;
	new_url = insertParam(original_url, field, val, true);
	window.location = new_url;
};

function insertParam(sourceUrl, parameterName, parameterValue, replaceDuplicates) {
	if ((sourceUrl == null) || (sourceUrl.length == 0)) {
		sourceUrl = document.location.href;
	}
	var urlParts = sourceUrl.split("?");
	var newQueryString = "";
	if (urlParts.length > 1) {
		var parameters = urlParts[1].split("&");
		for (var i = 0; (i < parameters.length); i++) {
			var parameterParts = parameters[i].split("=");
			if (!(replaceDuplicates && parameterParts[0] == parameterName)) {
				if (newQueryString == "") {
					newQueryString = "?";
					}
				else {
					newQueryString += "&";
					}
				newQueryString += parameterParts[0] + "=" + parameterParts[1];
			}
		}
	}
	if (newQueryString == "") {
		newQueryString = "?";
		}
	else {
		newQueryString += "&";
		}
	newQueryString += parameterName + "=" + parameterValue;

	return urlParts[0] + newQueryString;
};

function populateDiv(div_id, content) {
	if (jomresJquery("#" + div_id).length > 0) {
		document.getElementById(div_id).innerHTML = content;
		jomresJquery(div_id).fadeIn(100);
	}
};

function jomres_isChecked(ischecked) {
	if (ischecked == true) {
		document.adminForm.boxchecked.value++;
		}
	else {
		document.adminForm.boxchecked.value--;
		}
};

function jomres_checkAll(n) {
	var f = document.adminForm;
	var c = f.toggle.checked;
	var n2 = 0;
	for (i = 0; i < n; i++) {
		cb = eval('f.cb' + i);
		if (cb) {
			cb.checked = c;
			n2++;
		}
	}
	if (c) {
		document.adminForm.boxchecked.value = n2;
	} else {
		document.adminForm.boxchecked.value = 0;
	}
};


function jomres_submitbutton(pressbutton) {
	document.adminForm.task.value = pressbutton;
	try {
		document.adminForm.onsubmit();
	}
	catch (e) {
	}
	document.adminForm.submit();
};

function disableSubmitButton(button) {
	if (typeof button.disabled != 'undefined') {
		button.disabled = true;
		}
	else if (!button.buttonDisabled) {
		button.oldValue = button.value;
		button.oldOnclick = button.onclick;
		button.value = 'DISABLED';
		button.onclick = cancelAction;
		button.buttonDisabled = true;
	}
	document.getElementById("submitbutton").className = "";
};

function enableSubmitButton(button) {
	if (typeof button.disabled != 'undefined') {
		button.disabled = false;
		}
	else if (button.buttonDisabled) {
		button.value = button.oldValue;
		button.onclick = button.oldOnclick;
		button.buttonDisabled = false;
	}
};


function fadeIn(objId, opacity) {
	if (document.getElementById) {
		obj = document.getElementById(objId);
		if (opacity <= 100) {
			setOpacity(obj, opacity);
			opacity += 8;
			window.setTimeout("fadeIn('" + objId + "'," + opacity + ")", 100);
		}
	}
};

function setOpacity(obj, opacity) {
	opacity = (opacity == 100) ? 99.999 : opacity;
	// IE/Win
	obj.style.filter = "alpha(opacity:" + opacity + ")";
	// Safari 1.2, Konqueror
	obj.style.KHTMLOpacity = opacity / 100;
	// Older Mozilla and Firefox
	obj.style.MozOpacity = opacity / 100;
	// Safari 1.2, newer Firefox and Mozilla, CSS3
	obj.style.opacity = opacity / 100;
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	 Show hide stuff
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

function hidediv(elementName) {
	jomresJquery("#" + elementName).slideUp();
};

function showdiv($elementName) {
	jomresJquery("#" + elementName).slideDown();
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	 Ajax get response stuff
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
function getResponse_particulars(field, value, arrivalDate_id) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	departureDate = jomresJquery("#" + arrivalDate_id + "_XXX").val();
	HideRoomsList();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '&arr_dep_date=' + departureDate, { field: field, 'value': value },
		function (data) {
			showRoomsList(data);
			show_log(field);
		}
	);
};

function getResponse_guesttype(typeid, value) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	HideRoomsList();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: 'guesttype', 'typeid': typeid, 'value': value },
		function (data) {
			showRoomsList(data);
			show_log('guesttype');
		}
	);
};

function getResponse_rooms(field, value) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	HideRoomsList();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value },
		function (data) {
			showRoomsList(data);
			show_log(field);
		}
	);
};

function getResponse_multiroom_select(field, value) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	HideRoomsList();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value },
		function (data) {
			showRoomsList(data);
			show_log(field);
		}
	);
};

function getResponse_extras(field, value, theId) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value },
		function (data) {
			eval(data);
			show_log(field);
			var ex_id = "extras_" + theId;
			var extra_checked = jomresJquery("#" + ex_id).is(':checked');

			var combo = jomresJquery('#quantity' + theId).val();
			if (combo != undefined) {
				if (combo[0]) {
					if (extra_checked == true) {
						jomresJquery('#quantity' + theId).attr("disabled", false);

					}
					else {
						jomresJquery('#quantity' + theId).attr("disabled", true);
						jomresJquery('#quantity' + theId).val("1");
					}
				}
			}
		}
	);
};

function getResponse_room_features(field, value, theId) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	HideRoomsList();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value, 'theId': theId },
		function (data) {
			showRoomsList(data);
			eval(data);
			show_log(field);
		}
	);
};

function getResponse_override(field, value, theId) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value, 'theId': theId },
		function (data) {
			eval(data);
			show_log(field);
		}
	);
};

function getResponse_extrasquantity(field, value, theId) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value, 'theId': theId },
		function (data) {
			eval(data);
			show_log(field);
		}
	);
};

function getResponse(field, value) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value },
		function (data) {
			eval(data);
			show_log(field);
		}
	);
};

function getResponse_existing(field, value) {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	jomresJquery.get(ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '', { field: field, 'value': value },
		function (data) {
			eval(data);
			//jomresJquery('div.block_ui_bookingform').unblock();
			//show_log(field);
		}
	);
};

function getResponse_guest() {
	var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	var firstname = jomresJquery('#firstname').val();
	var surname = jomresJquery('#surname').val();
	var house = jomresJquery('#house').val();
	var street = jomresJquery('#street').val();
	var town = jomresJquery('#town').val();
	var region = jomresJquery('#region').val();
	var postcode = jomresJquery('#postcode').val();
	var exists = document.ajaxform.country;
	if (exists != null) {
		var country = document.ajaxform.country[document.ajaxform.country.selectedIndex].value;
	}
	var tel_landline = jomresJquery('#tel_landline').val();
	var tel_mobile = jomresJquery('#tel_mobile').val();
	var eemail = jomresJquery('#eemail').val();

	url = ajaxurl + '&task=handlereq&property_uid_check=' + form_property_uid + '';
	result = checkaddressfields();

	if (result) {
		var addressString = firstname + "~" + surname + "~" + house + "~" + street + "~" + town + "~" + region + "~" + postcode + "~" + country + "~" + tel_landline + "~" + tel_mobile + "~" + eemail;
		jr_deferred = jomresJquery.get(url, { field: 'addressstring', 'value': addressString },
			function (data) {
				eval(data);
				show_log("addressstring");
			});

	}
};

/* A quick, silent check that we'll perform after the log details have been output (the show_log function was depreciated some time ago, but is still called by most of the ajax calls so it makes sense to utilise it)
 The purpose of this code is to send a quick check to ensure that the user is getting information back about the property they think they're getting booking information for. Here's the scenario this is intended to fix :
 A potential guest opens a tab to Property A's booking form, then another tab to Property B's booking form. Within the Jomres session, the property uid we're checking is for Pr B, so if the user switches back to Pr A's tab, they'll be seeing booking form information from Pr B, but with Pr's A header. As this is going to be confusing, we will send this form's property uid to handle req, which will check the property uid stored in the tmp booking data's session. If the property uid is different, then we'll know that the above scenario is the case and we'll pass back window.location = etc. As this is parsed by the "eval" function, then the booking form will be triggered to redirect the user's page to the correct property.

 */
function show_log(lastfield) {
	//jomresJquery('#jGrowl').jGrowl('close');
	// var form_property_uid = jomresJquery("#booking_form_property_uid").val();
	// jomresJquery.get(ajaxurl+'&task=handlereq',{ field: "property_uid_check",'value': form_property_uid },
	// function(data){
	// eval(data);
	// });
};

function showRoomsList(req) {
	//var rooms = req.split("~");
	//buildSelected(rooms[0]) ;
	//buildAvailable(rooms[1]);
	eval(req);
	if (rooms_list_enabled)
		ShowRoomsList();
	if (jomresJquery("#noroomsselected").length)
		document.getElementById("noroomsselected").className = error_class;

	return false;
};

function HideRoomsList() {
	jomresJquery("#roomsListWrapper").delay(800).hide('blind', { direction: 'vertical' }, 1000);
	return false;
};

function ShowRoomsList() {
	jomresJquery("#roomsListWrapper").delay(800).show('blind', { direction: 'vertical' }, 1000);
	return false;
};

function buildSelected(string) {
	if (string != undefined) {
		if (string.length > 0) {
			populateDiv("selectedRooms", string);
			}
		//document.getElementById("selectedRooms").innerHTML = string;
	}
};

function buildAvailable(string) {
	if (string != undefined) {
		if (string.length > 0) {
			populateDiv("availRooms", string);
			}
		//document.getElementById("availRooms").innerHTML = string;
	}
};

function checkSelectRoomMessage(oktobook, disable_address) {
	if (!oktobook) {
		if (rooms_list_enabled) {
			if (show_extras == true) {
				jomresJquery("#extrascontainer").delay(800).fadeTo("slow", 0.1);
				}
			if (disable_address) {
				jomresJquery("#bookingform_address").delay(800).slideUp("slow");
				}
			jomresJquery("#bookingform_footer").delay(800).fadeTo("slow", 0.1);
			jomresJquery("#accommodation_container").delay(800).fadeTo("slow", 0.1);
		}
	}
	else {
		if (show_extras == true) {
			jomresJquery("#extrascontainer").delay(800).fadeTo("slow", 1);
			}
		jomresJquery("#bookingform_address").delay(800).slideDown("slow");
		jomresJquery("#bookingform_footer").delay(800).fadeTo("slow", 1);
		jomresJquery("#accommodation_container").delay(800).fadeTo("slow", 1);
	}
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	 Departure date adjustment stuff
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ajaxADate(arrivalDate, dformat) {
	var currentDepartureDateText = jomresJquery(document.ajaxform.departureDate).val();
	var currentDepartureDatesplit_dates = jomres_split_date(currentDepartureDateText, dformat)
	currentDepartureDateday = currentDepartureDatesplit_dates[0];
	currentDepartureDatemon = currentDepartureDatesplit_dates[1];
	currentDepartureDateyear = currentDepartureDatesplit_dates[2];
	var currentDepartureDated = new Date(currentDepartureDateyear, currentDepartureDatemon - 1, currentDepartureDateday);

	var day = 0
	var mon = 0
	var year = 0
	var split_dates = jomres_split_date(arrivalDate, dformat)
	day = split_dates[0];
	mon = split_dates[1];
	year = split_dates[2];

	var d = new Date(year, mon - 1, day);
	d.setDate(d.getDate() + mininterval);

	sday = String(d.getDate());
	smonth = String(d.getMonth() + 1);
	if (sday.length == 1)
		fday = "0" + sday;
	else
		fday = sday;
	if (smonth.length == 1)
		fmonth = "0" + smonth;
	else
		fmonth = smonth;

	if (dformat == "%d/%m/%Y") {
		dd = fday + "/" + fmonth + "/" + String(d.getFullYear())
		}
	if (dformat == "%Y/%m/%d") {
		dd = String(d.getFullYear()) + "/" + fmonth + "/" + fday
		}
	if (dformat == "%m/%d/%Y") {
		dd = fmonth + "/" + fday + "/" + String(d.getFullYear())
		}
	if (dformat == "%d-%m-%Y") {
		dd = fday + "-" + fmonth + "-" + String(d.getFullYear())
		}
	if (dformat == "%Y-%m-%d") {
		dd = String(d.getFullYear()) + "-" + fmonth + "-" + fday
		}
	if (dformat == "%m-%d-%Y") {
		dd = fmonth + "-" + fday + "-" + String(d.getFullYear())
		}

	var one_day = 1000 * 60 * 60 * 24;
	var difference = Math.ceil((d.getTime() - currentDepartureDated.getTime()) / (one_day)) + mininterval;
	if (difference > mininterval)
		document.ajaxform.departureDate.value = dd;
};

function jomres_split_date(date, dformat) {
	if (dformat == "%d/%m/%Y") {
		dateArray = date.split("/")
		day = dateArray[0]
		mon = dateArray[1]
		year = dateArray[2]
		}
	if (dformat == "%Y/%m/%d") {
		dateArray = date.split("/")
		day = dateArray[2]
		mon = dateArray[1]
		year = dateArray[0]
		}
	if (dformat == "%m/%d/%Y") {
		dateArray = date.split("/")
		day = dateArray[1]
		mon = dateArray[0]
		year = dateArray[2]
		}
	if (dformat == "%d-%m-%Y") {
		dateArray = date.split("-")
		day = dateArray[0]
		mon = dateArray[1]
		year = dateArray[2]
		}
	if (dformat == "%Y-%m-%d") {
		dateArray = date.split("-")
		day = dateArray[2]
		mon = dateArray[1]
		year = dateArray[0]
		}
	if (dformat == "%m-%d-%Y") {
		dateArray = date.split("-")
		day = dateArray[1]
		mon = dateArray[0]
		year = dateArray[2]
		}
	if (dformat == "%d.%m.%Y") {
		dateArray = date.split(".")
		day = dateArray[0]
		mon = dateArray[1]
		year = dateArray[2]
		}
	return  [ day, mon , year ];
};
///////////////////////////////////////
//
//	Validate the form input
//
///////////////////////////////////////

function checkaddressfields() {
	var firstname = jomresJquery.trim(jomresJquery('#firstname').val());
	var surname = jomresJquery.trim(jomresJquery('#surname').val());
	var house = jomresJquery.trim(jomresJquery('#house').val());
	var street = jomresJquery.trim(jomresJquery('#street').val());
	var town = jomresJquery.trim(jomresJquery('#town').val());
	var postcode = jomresJquery.trim(jomresJquery('#postcode').val());
	var exists = document.ajaxform.country;
	if (exists != null)
		var country = document.ajaxform.country[document.ajaxform.country.selectedIndex].value;
	var tel_landline = jomresJquery.trim(jomresJquery('#tel_landline').val());
	var tel_mobile = jomresJquery.trim(jomresJquery('#tel_mobile').val());
	var eemail = jomresJquery.trim(jomresJquery('#eemail').val());

	setInputFillToOkColour('#firstname');
	setInputFillToOkColour('#surname');
	setInputFillToOkColour('#house');
	setInputFillToOkColour('#street');
	setInputFillToOkColour('#town');
	setInputFillToOkColour('#postcode');
	setInputFillToOkColour('#tel_landline');
	setInputFillToOkColour('#tel_mobile');
	setInputFillToOkColour('#eemail');

	jomresJquery("#region").closest('.control-group').addClass('success');
	jomresJquery("#country").closest('.control-group').addClass('success');

	var pass = true;

	if (validation_firstname && firstname.length == 0) {
		setInputFillToErrorColour("#firstname");
		pass = false;
		}
	if (validation_surname && surname.length == 0) {
		setInputFillToErrorColour("#surname");
		pass = false;
		}
	if (validation_houseno && house.length == 0) {
		setInputFillToErrorColour("#house");
		pass = false;
		}
	if (validation_street && street.length == 0) {
		setInputFillToErrorColour("#street");
		pass = false;
		}
	if (validation_town && town.length == 0) {
		setInputFillToErrorColour("#town");
		pass = false;
		}
	if (validation_postcode && postcode.length == 0) {
		setInputFillToErrorColour("#postcode");
		pass = false;
		}
	if (validation_country && country.length == 0) {
		setInputFillToErrorColour("#country");
		pass = false;
		}
	if (validation_landline && tel_landline.length == 0) {
		setInputFillToErrorColour("#tel_landline");
		pass = false;
		}
	if (validation_cellmobile && tel_mobile.length == 0) {
		setInputFillToErrorColour("#tel_mobile");
		pass = false;
		}
	if (validation_email && eemail.length == 0) {
		setInputFillToErrorColour("#eemail");
		pass = false;
		}
	if (validation_email && !echeck(eemail)) {
		setInputFillToErrorColour("#eemail");
		pass = false;
		}
	if (!pass) {
		jomresJquery('div.recheckaddress').show();
		return false;
	}
	else {
		enableSubmitButton(document.ajaxform.confirmbooking);
		return true;
	}
};

function dobooking_validate() {
	if (checkaddressfields()) {
		getResponse_guest();
		document.ajaxform.confirmbooking.disabled = true;
		jomresJquery.when(jr_deferred).done(function() {submitBooking()});
		}
	};

function submitBooking() {
	document.ajaxform.action = livesite;
	document.ajaxform.submit(document.ajaxform.confirmbooking.disabled = true);
	};

function setInputFillToOkColour(field) {
	jomresJquery(field).addClass(success_class);
	};

function setInputFillToErrorColour(field) {
	jomresJquery(field).addClass(error_class);
	};

function submitenter(myfield, e) {
	var keycode;
	if (window.event) {
		keycode = window.event.keyCode;
		}
	else if (e) {
		keycode = e.which;
		}
	else return true;
	if (!document.ajaxform.confirmbooking.disabled) {
		if (keycode == 13) {
			document.ajaxform.submit();
			return false;
		}
		else {
			return true;
			}
	}
	else {
		return true;
	}
};

/**
 * DHTML email validation script. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
 */
function echeck(str) {
	var strlen = str.length
	var at = "@"
	var dot = "."
	var lat = str.indexOf(at)
	var lstr = str.length
	var ldot = str.indexOf(dot)
	if (strlen == 0) {
		return false
		}
	if (str.indexOf(at) == -1) {
		//alert("Invalid E-mail ID")
		return false
		}
	if (str.indexOf(at) == -1 || str.indexOf(at) == 0 || str.indexOf(at) == lstr) {
		//alert("Invalid E-mail ID");
		return false;
		}
	if (str.indexOf(dot) == -1 || str.indexOf(dot) == 0 || str.indexOf(dot) == lstr) {
		//alert("Invalid E-mail ID")
		return false
		}
	if (str.indexOf(at, (lat + 1)) != -1) {
		//alert("Invalid E-mail ID")
		return false
		}
	if (str.substring(lat - 1, lat) == dot || str.substring(lat + 1, lat + 2) == dot) {
		//alert("Invalid E-mail ID")
		return false
		}
	if (str.indexOf(dot, (lat + 2)) == -1) {
		//alert("Invalid E-mail ID")
		return false
		}
	if (str.indexOf(" ") != -1) {
		//alert("Invalid E-mail ID")
		return false
		}
	return true
};

/* list_properties.js */
function toggle_review_div(uid, property_name) {
	div_id = "#property_reviews" + uid;
	jomresJquery(div_id).dialog({
		height: 500,
		width: 800,
		modal: true,
		resizable: true,
		open: function () {
			jomresJquery.get(live_site_ajax + "&task=show_property_reviews&property_uid=" + uid,
				function (data) {
					jomresJquery('#property_reviews' + uid).html(data);
					//jomresJquery('.star').rating();
				});
		}
	});
	jomresJquery('.ui-widget-overlay').live("click", function () {
		jomresJquery(div_id).dialog("close");
	});
};

function shortlist(property_uid, show_label) {
	if (typeof show_label !== 'undefined' && show_label != '') {
		a = parseInt(show_label);
		}
	else {
		a = 0;
		}
	jomresJquery.get(live_site_ajax + "&task=ajax_shortlist&property_uid=" + property_uid + "&show_label=" + a, function (data) {
		jomresJquery('#shortlist_' + property_uid).html(data);
	});
}

function set_budget(budget_price , reload , formname ) {
	jomresJquery.get(live_site_ajax + "&task=ajax_budget&budget_figure="+budget_price, function (data) {
		if (reload){
			location.reload();
		}
		else {
			submit_search(formname);
		}
	});
}

function lastAddedLiveFunc() {
	if (live_scrolling_enabled) {
		id = jomresJquery(".jomres_property_list_propertywrapper:last").attr("id");
		if (id != last_scrolled_id) {
			var animation = '<div id="animation"><img src="' + path_to_jomres_dir + '/'+JOMRES_ROOT_DIRECTORY + '/images/ajax_animation/broken_circle.gif" /></div>';
			jomresJquery("#livescrolling_results").append(animation);
			jomresJquery.get(live_site_ajax + "&task=ajax_list_properties&nofollowtmpl&lastID=" + id,
			function (data) {
				var result = data.split("^");
				jomresJquery("#animation").remove();
				if (result[0] != "") {
					jomresJquery("#livescrolling_results").replaceWith(result[0]);
					bind_data_toggle();
					eval(result[1]);
				}

				killScroll = false; // IMPORTANT - Make function available again.
				var bol = jomresJquery("input[type=checkbox][name=compare]:checked").length >= 3;
				jomresJquery("input[type=checkbox][name=compare]").not(":checked").attr("disabled", bol);
				last_scrolled_id = id;
				jomresJquery(".jomres_bt_tooltip_features").tipsy({html: true, fade: true, gravity: 'sw', delayOut: 100});
				//console.log(last_scrolled_id);
			});
		}
	}
};

jomresJquery(document).ready(function () {
	jomresJquery(window).scroll(function () {
		if (jomresJquery(window).height() + jomresJquery(window).scrollTop() >= jomresJquery(document).height() - 2000) {
			if (killScroll == false) { // IMPORTANT - Keeps the loader from fetching more than once.
				killScroll = true; // IMPORTANT - Set killScroll to true, to make sure we do not trigger this code again before it's done running.
				lastAddedLiveFunc();
			}
		}
	});

	jomresJquery("input[type=checkbox][name=compare]").click(function () {
		var bol = jomresJquery("input[type=checkbox][name=compare]:checked").length >= 3;
		jomresJquery("input[type=checkbox][name=compare]").not(":checked").attr("disabled", bol);
	});
	bind_data_toggle();
});

function trigger_comparison(form) {
	var values = new Array();
	jomresJquery("input[type=checkbox][name=compare]:checked").each(
		function () {
			values.push(jomresJquery(this).val());
		}
	);

	if (values.length > 1) {
		url = compare_url + "&property_uids=" + values;
		window.location = url;
	}
	//	console.log(url);
}

/*
 * jHeartbeat 0.3.0
 * (C)Alex Richards - http://www.ajtrichards.co.uk/
 */
jomresJquery(document).ready(function () {
	jomresJquery.jheartbeat = {
		options: {
			url: "heartbeat_default.asp",
			delay: 10000,
			div_id: "test_div"
		},
		beatfunction: function () {
		},
		timeoutobj: {
			id: -1
		},
		set: function (options, onbeatfunction) {
			if (this.timeoutobj.id > -1) {
				clearTimeout(this.timeoutobj);
				}
			if (options) {
				jomresJquery.extend(this.options, options);
				}
			if (onbeatfunction) {
				this.beatfunction = onbeatfunction;
				}
			// Add the HeartBeatDIV to the page
			jomresJquery("body").append("<div id=\"" + this.options.div_id + "\" style=\"display: none;\"></div>");
			this.timeoutobj.id = setTimeout("jomresJquery.jheartbeat.beat();", this.options.delay);
		},
		beat: function () {
			jomresJquery.ajax({
				url: this.options.url,
				dataType: "html",
				type: "GET",
				error: function (e) {
					jomresJquery('#' + jomresJquery.jheartbeat.options.div_id).append("");
				},
				success: function (data) {
					jomresJquery('#' + jomresJquery.jheartbeat.options.div_id).html(data);
				}
			});
			this.timeoutobj.id = setTimeout("jomresJquery.jheartbeat.beat();", this.options.delay);
			this.beatfunction();
		}
	};
});

function jomres_print(div) {
	jomresJquery('body').css('visibility','hidden');
	jomresJquery(div).css('visibility','visible');
	window.print();
	jomresJquery('body').css('visibility','visible');
}

;


/* FILE: /jomres/javascript/jquery-ui-cal-localisation/jquery.ui.datepicker-en-GB.js */
/* English/UK initialisation for the jQuery UI date picker plugin. */
/* Written by Stuart. */
jQuery(function ($) {
	$.datepicker.regional['en-GB'] = {
		closeText: 'Done',
		prevText: 'Prev',
		nextText: 'Next',
		currentText: 'Today',
		monthNames: ['January', 'February', 'March', 'April', 'May', 'June',
			'July', 'August', 'September', 'October', 'November', 'December'],
		monthNamesShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
			'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
		dayNames: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
		dayNamesShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
		dayNamesMin: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
		weekHeader: 'Wk',
		dateFormat: 'dd/mm/yy',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''};
	$.datepicker.setDefaults($.datepicker.regional['en-GB']);
});
;


/* FILE: /jomres/javascript/jquery.validate.js */
/**
 * jQuery Validation Plugin 1.12.0pre
 *
 * http://bassistance.de/jquery-plugins/jquery-plugin-validation/
 * http://docs.jquery.com/Plugins/Validation
 *
 * Copyright 2013 JĂ¶rn Zaefferer
 * Released under the MIT license:
 *   http://www.opensource.org/licenses/mit-license.php
 */

(function ($) {

	$.extend($.fn, {
		// http://docs.jquery.com/Plugins/Validation/validate
		validate: function (options) {

			// if nothing is selected, return nothing; can't chain anyway
			if (!this.length) {
				if (options && options.debug && window.console) {
					console.warn("Nothing selected, can't validate, returning nothing.");
				}
				return;
			}

			// check if a validator for this form was already created
			var validator = $.data(this[0], "validator");
			if (validator) {
				return validator;
			}

			// Add novalidate tag if HTML5.
			this.attr("novalidate", "novalidate");

			validator = new $.validator(options, this[0]);
			$.data(this[0], "validator", validator);

			if (validator.settings.onsubmit) {

				this.validateDelegate(":submit", "click", function (event) {
					if (validator.settings.submitHandler) {
						validator.submitButton = event.target;
					}
					// allow suppressing validation by adding a cancel class to the submit button
					if ($(event.target).hasClass("cancel")) {
						validator.cancelSubmit = true;
					}

					// allow suppressing validation by adding the html5 formnovalidate attribute to the submit button
					if ($(event.target).attr("formnovalidate") !== undefined) {
						validator.cancelSubmit = true;
					}
				});

				// validate the form on submit
				this.submit(function (event) {
					if (validator.settings.debug) {
						// prevent form submit to be able to see console output
						event.preventDefault();
					}
					function handle() {
						var hidden;
						if (validator.settings.submitHandler) {
							if (validator.submitButton) {
								// insert a hidden input as a replacement for the missing submit button
								hidden = $("<input type='hidden'/>").attr("name", validator.submitButton.name).val(validator.submitButton.value).appendTo(validator.currentForm);
							}
							validator.settings.submitHandler.call(validator, validator.currentForm, event);
							if (validator.submitButton) {
								// and clean up afterwards; thanks to no-block-scope, hidden can be referenced
								hidden.remove();
							}
							return false;
						}
						return true;
					}

					// prevent submit for invalid forms or custom submit handlers
					if (validator.cancelSubmit) {
						validator.cancelSubmit = false;
						return handle();
					}
					if (validator.form()) {
						if (validator.pendingRequest) {
							validator.formSubmitted = true;
							return false;
						}
						return handle();
					} else {
						validator.focusInvalid();
						return false;
					}
				});
			}

			return validator;
		},
		// http://docs.jquery.com/Plugins/Validation/valid
		valid: function () {
			if ($(this[0]).is("form")) {
				return this.validate().form();
			} else {
				var valid = true;
				var validator = $(this[0].form).validate();
				this.each(function () {
					valid &= validator.element(this);
				});
				return valid;
			}
		},
		// attributes: space seperated list of attributes to retrieve and remove
		removeAttrs: function (attributes) {
			var result = {},
				$element = this;
			$.each(attributes.split(/\s/), function (index, value) {
				result[value] = $element.attr(value);
				$element.removeAttr(value);
			});
			return result;
		},
		// http://docs.jquery.com/Plugins/Validation/rules
		rules: function (command, argument) {
			var element = this[0];

			if (command) {
				var settings = $.data(element.form, "validator").settings;
				var staticRules = settings.rules;
				var existingRules = $.validator.staticRules(element);
				switch (command) {
					case "add":
						$.extend(existingRules, $.validator.normalizeRule(argument));
						staticRules[element.name] = existingRules;
						if (argument.messages) {
							settings.messages[element.name] = $.extend(settings.messages[element.name], argument.messages);
						}
						break;
					case "remove":
						if (!argument) {
							delete staticRules[element.name];
							return existingRules;
						}
						var filtered = {};
						$.each(argument.split(/\s/), function (index, method) {
							filtered[method] = existingRules[method];
							delete existingRules[method];
						});
						return filtered;
				}
			}

			var data = $.validator.normalizeRules(
				$.extend(
					{},
					$.validator.classRules(element),
					$.validator.attributeRules(element),
					$.validator.dataRules(element),
					$.validator.staticRules(element)
				), element);

			// make sure required is at front
			if (data.required) {
				var param = data.required;
				delete data.required;
				data = $.extend({required: param}, data);
			}

			return data;
		}
	});

// Custom selectors
	$.extend($.expr[":"], {
		// http://docs.jquery.com/Plugins/Validation/blank
		blank: function (a) {
			return !$.trim("" + a.value);
		},
		// http://docs.jquery.com/Plugins/Validation/filled
		filled: function (a) {
			return !!$.trim("" + a.value);
		},
		// http://docs.jquery.com/Plugins/Validation/unchecked
		unchecked: function (a) {
			return !a.checked;
		}
	});

// constructor for validator
	$.validator = function (options, form) {
		this.settings = $.extend(true, {}, $.validator.defaults, options);
		this.currentForm = form;
		this.init();
	};

	$.validator.format = function (source, params) {
		if (arguments.length === 1) {
			return function () {
				var args = $.makeArray(arguments);
				args.unshift(source);
				return $.validator.format.apply(this, args);
			};
		}
		if (arguments.length > 2 && params.constructor !== Array) {
			params = $.makeArray(arguments).slice(1);
		}
		if (params.constructor !== Array) {
			params = [ params ];
		}
		$.each(params, function (i, n) {
			source = source.replace(new RegExp("\\{" + i + "\\}", "g"), function () {
				return n;
			});
		});
		return source;
	};

	$.extend($.validator, {

		defaults: {
			messages: {},
			groups: {},
			rules: {},
			errorClass: "error",
			validClass: "valid",
			errorElement: "label",
			focusInvalid: true,
			errorContainer: $([]),
			errorLabelContainer: $([]),
			onsubmit: true,
			ignore: ":hidden",
			ignoreTitle: false,
			onfocusin: function (element, event) {
				this.lastActive = element;

				// hide error label and remove error class on focus if enabled
				if (this.settings.focusCleanup && !this.blockFocusCleanup) {
					if (this.settings.unhighlight) {
						this.settings.unhighlight.call(this, element, this.settings.errorClass, this.settings.validClass);
					}
					this.addWrapper(this.errorsFor(element)).hide();
				}
			},
			onfocusout: function (element, event) {
				if (!this.checkable(element) && (element.name in this.submitted || !this.optional(element))) {
					this.element(element);
				}
			},
			onkeyup: function (element, event) {
				if (event.which === 9 && this.elementValue(element) === "") {
					return;
				} else if (element.name in this.submitted || element === this.lastElement) {
					this.element(element);
				}
			},
			onclick: function (element, event) {
				// click on selects, radiobuttons and checkboxes
				if (element.name in this.submitted) {
					this.element(element);
				}
				// or option elements, check parent select in that case
				else if (element.parentNode.name in this.submitted) {
					this.element(element.parentNode);
				}
			},
			highlight: function (element, errorClass, validClass) {
				if (element.type === "radio") {
					this.findByName(element.name).addClass(errorClass).removeClass(validClass);
				} else {
					$(element).addClass(errorClass).removeClass(validClass);
				}
			},
			unhighlight: function (element, errorClass, validClass) {
				if (element.type === "radio") {
					this.findByName(element.name).removeClass(errorClass).addClass(validClass);
				} else {
					$(element).removeClass(errorClass).addClass(validClass);
				}
			}
		},

		// http://docs.jquery.com/Plugins/Validation/Validator/setDefaults
		setDefaults: function (settings) {
			$.extend($.validator.defaults, settings);
		},

		messages: {
			required: "This field is required.",
			remote: "Please fix this field.",
			email: "Please enter a valid email address.",
			url: "Please enter a valid URL.",
			date: "Please enter a valid date.",
			dateISO: "Please enter a valid date (ISO).",
			number: "Please enter a valid number.",
			digits: "Please enter only digits.",
			creditcard: "Please enter a valid credit card number.",
			equalTo: "Please enter the same value again.",
			maxlength: $.validator.format("Please enter no more than {0} characters."),
			minlength: $.validator.format("Please enter at least {0} characters."),
			rangelength: $.validator.format("Please enter a value between {0} and {1} characters long."),
			range: $.validator.format("Please enter a value between {0} and {1}."),
			max: $.validator.format("Please enter a value less than or equal to {0}."),
			min: $.validator.format("Please enter a value greater than or equal to {0}.")
		},

		autoCreateRanges: false,

		prototype: {

			init: function () {
				this.labelContainer = $(this.settings.errorLabelContainer);
				this.errorContext = this.labelContainer.length && this.labelContainer || $(this.currentForm);
				this.containers = $(this.settings.errorContainer).add(this.settings.errorLabelContainer);
				this.submitted = {};
				this.valueCache = {};
				this.pendingRequest = 0;
				this.pending = {};
				this.invalid = {};
				this.reset();

				var groups = (this.groups = {});
				$.each(this.settings.groups, function (key, value) {
					if (typeof value === "string") {
						value = value.split(/\s/);
					}
					$.each(value, function (index, name) {
						groups[name] = key;
					});
				});
				var rules = this.settings.rules;
				$.each(rules, function (key, value) {
					rules[key] = $.validator.normalizeRule(value);
				});

				function delegate(event) {
					var validator = $.data(this[0].form, "validator"),
						eventType = "on" + event.type.replace(/^validate/, "");
					if (validator.settings[eventType]) {
						validator.settings[eventType].call(validator, this[0], event);
					}
				}

				$(this.currentForm)
					.validateDelegate(":text, [type='password'], [type='file'], select, textarea, " +
						"[type='number'], [type='search'] ,[type='tel'], [type='url'], " +
						"[type='email'], [type='datetime'], [type='date'], [type='month'], " +
						"[type='week'], [type='time'], [type='datetime-local'], " +
						"[type='range'], [type='color'] ",
						"focusin focusout keyup", delegate)
					.validateDelegate("[type='radio'], [type='checkbox'], select, option", "click", delegate);

				if (this.settings.invalidHandler) {
					$(this.currentForm).bind("invalid-form.validate", this.settings.invalidHandler);
				}
			},

			// http://docs.jquery.com/Plugins/Validation/Validator/form
			form: function () {
				this.checkForm();
				$.extend(this.submitted, this.errorMap);
				this.invalid = $.extend({}, this.errorMap);
				if (!this.valid()) {
					$(this.currentForm).triggerHandler("invalid-form", [this]);
				}
				this.showErrors();
				return this.valid();
			},

			checkForm: function () {
				this.prepareForm();
				for (var i = 0, elements = (this.currentElements = this.elements()); elements[i]; i++) {
					this.check(elements[i]);
				}
				return this.valid();
			},

			// http://docs.jquery.com/Plugins/Validation/Validator/element
			element: function (element) {
				element = this.validationTargetFor(this.clean(element));
				this.lastElement = element;
				this.prepareElement(element);
				this.currentElements = $(element);
				var result = this.check(element) !== false;
				if (result) {
					delete this.invalid[element.name];
				} else {
					this.invalid[element.name] = true;
				}
				if (!this.numberOfInvalids()) {
					// Hide error containers on last error
					this.toHide = this.toHide.add(this.containers);
				}
				this.showErrors();
				return result;
			},

			// http://docs.jquery.com/Plugins/Validation/Validator/showErrors
			showErrors: function (errors) {
				if (errors) {
					// add items to error list and map
					$.extend(this.errorMap, errors);
					this.errorList = [];
					for (var name in errors) {
						this.errorList.push({
							message: errors[name],
							element: this.findByName(name)[0]
						});
					}
					// remove items from success list
					this.successList = $.grep(this.successList, function (element) {
						return !(element.name in errors);
					});
				}
				if (this.settings.showErrors) {
					this.settings.showErrors.call(this, this.errorMap, this.errorList);
				} else {
					this.defaultShowErrors();
				}
			},

			// http://docs.jquery.com/Plugins/Validation/Validator/resetForm
			resetForm: function () {
				if ($.fn.resetForm) {
					$(this.currentForm).resetForm();
				}
				this.submitted = {};
				this.lastElement = null;
				this.prepareForm();
				this.hideErrors();
				this.elements().removeClass(this.settings.errorClass).removeData("previousValue");
			},

			numberOfInvalids: function () {
				return this.objectLength(this.invalid);
			},

			objectLength: function (obj) {
				var count = 0;
				for (var i in obj) {
					count++;
				}
				return count;
			},

			hideErrors: function () {
				this.addWrapper(this.toHide).hide();
			},

			valid: function () {
				return this.size() === 0;
			},

			size: function () {
				return this.errorList.length;
			},

			focusInvalid: function () {
				if (this.settings.focusInvalid) {
					try {
						$(this.findLastActive() || this.errorList.length && this.errorList[0].element || [])
							.filter(":visible")
							.focus()
							// manually trigger focusin event; without it, focusin handler isn't called, findLastActive won't have anything to find
							.trigger("focusin");
					} catch (e) {
						// ignore IE throwing errors when focusing hidden elements
					}
				}
			},

			findLastActive: function () {
				var lastActive = this.lastActive;
				return lastActive && $.grep(this.errorList,function (n) {
					return n.element.name === lastActive.name;
				}).length === 1 && lastActive;
			},

			elements: function () {
				var validator = this,
					rulesCache = {};

				// select all valid inputs inside the form (no submit or reset buttons)
				return $(this.currentForm)
					.find("input, select, textarea")
					.not(":submit, :reset, :image, [disabled]")
					.not(this.settings.ignore)
					.filter(function () {
						if (!this.name && validator.settings.debug && window.console) {
							console.error("%o has no name assigned", this);
						}

						// select only the first element for each name, and only those with rules specified
						if (this.name in rulesCache || !validator.objectLength($(this).rules())) {
							return false;
						}

						rulesCache[this.name] = true;
						return true;
					});
			},

			clean: function (selector) {
				return $(selector)[0];
			},

			errors: function () {
				var errorClass = this.settings.errorClass.replace(" ", ".");
				return $(this.settings.errorElement + "." + errorClass, this.errorContext);
			},

			reset: function () {
				this.successList = [];
				this.errorList = [];
				this.errorMap = {};
				this.toShow = $([]);
				this.toHide = $([]);
				this.currentElements = $([]);
			},

			prepareForm: function () {
				this.reset();
				this.toHide = this.errors().add(this.containers);
			},

			prepareElement: function (element) {
				this.reset();
				this.toHide = this.errorsFor(element);
			},

			elementValue: function (element) {
				var type = $(element).attr("type"),
					val = $(element).val();

				if (type === "radio" || type === "checkbox") {
					return $("input[name='" + $(element).attr("name") + "']:checked").val();
				}

				if (typeof val === "string") {
					return val.replace(/\r/g, "");
				}
				return val;
			},

			check: function (element) {
				element = this.validationTargetFor(this.clean(element));

				var rules = $(element).rules();
				var dependencyMismatch = false;
				var val = this.elementValue(element);
				var result;

				for (var method in rules) {
					var rule = { method: method, parameters: rules[method] };
					try {

						result = $.validator.methods[method].call(this, val, element, rule.parameters);

						// if a method indicates that the field is optional and therefore valid,
						// don't mark it as valid when there are no other rules
						if (result === "dependency-mismatch") {
							dependencyMismatch = true;
							continue;
						}
						dependencyMismatch = false;

						if (result === "pending") {
							this.toHide = this.toHide.not(this.errorsFor(element));
							return;
						}

						if (!result) {
							this.formatAndAdd(element, rule);
							return false;
						}
					} catch (e) {
						if (this.settings.debug && window.console) {
							console.log("Exception occured when checking element " + element.id + ", check the '" + rule.method + "' method.", e);
						}
						throw e;
					}
				}
				if (dependencyMismatch) {
					return;
				}
				if (this.objectLength(rules)) {
					this.successList.push(element);
				}
				return true;
			},

			// return the custom message for the given element and validation method
			// specified in the element's HTML5 data attribute
			customDataMessage: function (element, method) {
				return $(element).data("msg-" + method.toLowerCase()) || (element.attributes && $(element).attr("data-msg-" + method.toLowerCase()));
			},

			// return the custom message for the given element name and validation method
			customMessage: function (name, method) {
				var m = this.settings.messages[name];
				return m && (m.constructor === String ? m : m[method]);
			},

			// return the first defined argument, allowing empty strings
			findDefined: function () {
				for (var i = 0; i < arguments.length; i++) {
					if (arguments[i] !== undefined) {
						return arguments[i];
					}
				}
				return undefined;
			},

			defaultMessage: function (element, method) {
				return this.findDefined(
					this.customMessage(element.name, method),
					this.customDataMessage(element, method),
					// title is never undefined, so handle empty string as undefined
					!this.settings.ignoreTitle && element.title || undefined,
					$.validator.messages[method],
					"<strong>Warning: No message defined for " + element.name + "</strong>"
				);
			},

			formatAndAdd: function (element, rule) {
				var message = this.defaultMessage(element, rule.method),
					theregex = /\$?\{(\d+)\}/g;
				if (typeof message === "function") {
					message = message.call(this, rule.parameters, element);
				} else if (theregex.test(message)) {
					message = $.validator.format(message.replace(theregex, "{$1}"), rule.parameters);
				}
				this.errorList.push({
					message: message,
					element: element
				});

				this.errorMap[element.name] = message;
				this.submitted[element.name] = message;
			},

			addWrapper: function (toToggle) {
				if (this.settings.wrapper) {
					toToggle = toToggle.add(toToggle.parent(this.settings.wrapper));
				}
				return toToggle;
			},

			defaultShowErrors: function () {
				var i, elements;
				for (i = 0; this.errorList[i]; i++) {
					var error = this.errorList[i];
					if (this.settings.highlight) {
						this.settings.highlight.call(this, error.element, this.settings.errorClass, this.settings.validClass);
					}
					this.showLabel(error.element, error.message);
				}
				if (this.errorList.length) {
					this.toShow = this.toShow.add(this.containers);
				}
				if (this.settings.success) {
					for (i = 0; this.successList[i]; i++) {
						this.showLabel(this.successList[i]);
					}
				}
				if (this.settings.unhighlight) {
					for (i = 0, elements = this.validElements(); elements[i]; i++) {
						this.settings.unhighlight.call(this, elements[i], this.settings.errorClass, this.settings.validClass);
					}
				}
				this.toHide = this.toHide.not(this.toShow);
				this.hideErrors();
				this.addWrapper(this.toShow).show();
			},

			validElements: function () {
				return this.currentElements.not(this.invalidElements());
			},

			invalidElements: function () {
				return $(this.errorList).map(function () {
					return this.element;
				});
			},

			showLabel: function (element, message) {
				var label = this.errorsFor(element);
				if (label.length) {
					// refresh error/success class
					label.removeClass(this.settings.validClass).addClass(this.settings.errorClass);
					// replace message on existing label
					label.html(message);
				} else {
					// create label
					label = $("<" + this.settings.errorElement + ">")
						.attr("for", this.idOrName(element))
						.addClass(this.settings.errorClass)
						.html(message || "");
					if (this.settings.wrapper) {
						// make sure the element is visible, even in IE
						// actually showing the wrapped element is handled elsewhere
						label = label.hide().show().wrap("<" + this.settings.wrapper + "/>").parent();
					}
					if (!this.labelContainer.append(label).length) {
						if (this.settings.errorPlacement) {
							this.settings.errorPlacement(label, $(element));
						} else {
							label.insertAfter(element);
						}
					}
				}
				if (!message && this.settings.success) {
					label.text("");
					if (typeof this.settings.success === "string") {
						label.addClass(this.settings.success);
					} else {
						this.settings.success(label, element);
					}
				}
				this.toShow = this.toShow.add(label);
			},

			errorsFor: function (element) {
				var name = this.idOrName(element);
				return this.errors().filter(function () {
					return $(this).attr("for") === name;
				});
			},

			idOrName: function (element) {
				return this.groups[element.name] || (this.checkable(element) ? element.name : element.id || element.name);
			},

			validationTargetFor: function (element) {
				// if radio/checkbox, validate first element in group instead
				if (this.checkable(element)) {
					element = this.findByName(element.name).not(this.settings.ignore)[0];
				}
				return element;
			},

			checkable: function (element) {
				return (/radio|checkbox/i).test(element.type);
			},

			findByName: function (name) {
				return $(this.currentForm).find("[name='" + name + "']");
			},

			getLength: function (value, element) {
				switch (element.nodeName.toLowerCase()) {
					case "select":
						return $("option:selected", element).length;
					case "input":
						if (this.checkable(element)) {
							return this.findByName(element.name).filter(":checked").length;
						}
				}
				return value.length;
			},

			depend: function (param, element) {
				return this.dependTypes[typeof param] ? this.dependTypes[typeof param](param, element) : true;
			},

			dependTypes: {
				"boolean": function (param, element) {
					return param;
				},
				"string": function (param, element) {
					return !!$(param, element.form).length;
				},
				"function": function (param, element) {
					return param(element);
				}
			},

			optional: function (element) {
				var val = this.elementValue(element);
				return !$.validator.methods.required.call(this, val, element) && "dependency-mismatch";
			},

			startRequest: function (element) {
				if (!this.pending[element.name]) {
					this.pendingRequest++;
					this.pending[element.name] = true;
				}
			},

			stopRequest: function (element, valid) {
				this.pendingRequest--;
				// sometimes synchronization fails, make sure pendingRequest is never < 0
				if (this.pendingRequest < 0) {
					this.pendingRequest = 0;
				}
				delete this.pending[element.name];
				if (valid && this.pendingRequest === 0 && this.formSubmitted && this.form()) {
					$(this.currentForm).submit();
					this.formSubmitted = false;
				} else if (!valid && this.pendingRequest === 0 && this.formSubmitted) {
					$(this.currentForm).triggerHandler("invalid-form", [this]);
					this.formSubmitted = false;
				}
			},

			previousValue: function (element) {
				return $.data(element, "previousValue") || $.data(element, "previousValue", {
					old: null,
					valid: true,
					message: this.defaultMessage(element, "remote")
				});
			}

		},

		classRuleSettings: {
			required: {required: true},
			email: {email: true},
			url: {url: true},
			date: {date: true},
			dateISO: {dateISO: true},
			number: {number: true},
			digits: {digits: true},
			creditcard: {creditcard: true}
		},

		addClassRules: function (className, rules) {
			if (className.constructor === String) {
				this.classRuleSettings[className] = rules;
			} else {
				$.extend(this.classRuleSettings, className);
			}
		},

		classRules: function (element) {
			var rules = {};
			var classes = $(element).attr("class");
			if (classes) {
				$.each(classes.split(" "), function () {
					if (this in $.validator.classRuleSettings) {
						$.extend(rules, $.validator.classRuleSettings[this]);
					}
				});
			}
			return rules;
		},

		attributeRules: function (element) {
			var rules = {};
			var $element = $(element);

			for (var method in $.validator.methods) {
				var value;

				// support for <input required> in both html5 and older browsers
				if (method === "required") {
					value = $element.get(0).getAttribute(method);
					// Some browsers return an empty string for the required attribute
					// and non-HTML5 browsers might have required="" markup
					if (value === "") {
						value = true;
					}
					// force non-HTML5 browsers to return bool
					value = !!value;
				} else {
					value = $element.attr(method);
				}

				if (value) {
					rules[method] = value;
				} else if ($element[0].getAttribute("type") === method) {
					rules[method] = true;
				}
			}

			// maxlength may be returned as -1, 2147483647 (IE) and 524288 (safari) for text inputs
			if (rules.maxlength && /-1|2147483647|524288/.test(rules.maxlength)) {
				delete rules.maxlength;
			}

			return rules;
		},

		dataRules: function (element) {
			var method, value,
				rules = {}, $element = $(element);
			for (method in $.validator.methods) {
				value = $element.data("rule-" + method.toLowerCase());
				if (value !== undefined) {
					rules[method] = value;
				}
			}
			return rules;
		},

		staticRules: function (element) {
			var rules = {};
			var validator = $.data(element.form, "validator");
			if (validator.settings.rules) {
				rules = $.validator.normalizeRule(validator.settings.rules[element.name]) || {};
			}
			return rules;
		},

		normalizeRules: function (rules, element) {
			// handle dependency check
			$.each(rules, function (prop, val) {
				// ignore rule when param is explicitly false, eg. required:false
				if (val === false) {
					delete rules[prop];
					return;
				}
				if (val.param || val.depends) {
					var keepRule = true;
					switch (typeof val.depends) {
						case "string":
							keepRule = !!$(val.depends, element.form).length;
							break;
						case "function":
							keepRule = val.depends.call(element, element);
							break;
					}
					if (keepRule) {
						rules[prop] = val.param !== undefined ? val.param : true;
					} else {
						delete rules[prop];
					}
				}
			});

			// evaluate parameters
			$.each(rules, function (rule, parameter) {
				rules[rule] = $.isFunction(parameter) ? parameter(element) : parameter;
			});

			// clean number parameters
			$.each(['minlength', 'maxlength'], function () {
				if (rules[this]) {
					rules[this] = Number(rules[this]);
				}
			});
			$.each(['rangelength'], function () {
				var parts;
				if (rules[this]) {
					if ($.isArray(rules[this])) {
						rules[this] = [Number(rules[this][0]), Number(rules[this][1])];
					} else if (typeof rules[this] === "string") {
						parts = rules[this].split(/[\s,]+/);
						rules[this] = [Number(parts[0]), Number(parts[1])];
					}
				}
			});

			if ($.validator.autoCreateRanges) {
				// auto-create ranges
				if (rules.min && rules.max) {
					rules.range = [rules.min, rules.max];
					delete rules.min;
					delete rules.max;
				}
				if (rules.minlength && rules.maxlength) {
					rules.rangelength = [rules.minlength, rules.maxlength];
					delete rules.minlength;
					delete rules.maxlength;
				}
			}

			return rules;
		},

		// Converts a simple string to a {string: true} rule, e.g., "required" to {required:true}
		normalizeRule: function (data) {
			if (typeof data === "string") {
				var transformed = {};
				$.each(data.split(/\s/), function () {
					transformed[this] = true;
				});
				data = transformed;
			}
			return data;
		},

		// http://docs.jquery.com/Plugins/Validation/Validator/addMethod
		addMethod: function (name, method, message) {
			$.validator.methods[name] = method;
			$.validator.messages[name] = message !== undefined ? message : $.validator.messages[name];
			if (method.length < 3) {
				$.validator.addClassRules(name, $.validator.normalizeRule(name));
			}
		},

		methods: {

			// http://docs.jquery.com/Plugins/Validation/Methods/required
			required: function (value, element, param) {
				// check if dependency is met
				if (!this.depend(param, element)) {
					return "dependency-mismatch";
				}
				if (element.nodeName.toLowerCase() === "select") {
					// could be an array for select-multiple or a string, both are fine this way
					var val = $(element).val();
					return val && val.length > 0;
				}
				if (this.checkable(element)) {
					return this.getLength(value, element) > 0;
				}
				return $.trim(value).length > 0;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/remote
			remote: function (value, element, param) {
				if (this.optional(element)) {
					return "dependency-mismatch";
				}

				var previous = this.previousValue(element);
				if (!this.settings.messages[element.name]) {
					this.settings.messages[element.name] = {};
				}
				previous.originalMessage = this.settings.messages[element.name].remote;
				this.settings.messages[element.name].remote = previous.message;

				param = typeof param === "string" && {url: param} || param;

				if (previous.old === value) {
					return previous.valid;
				}

				previous.old = value;
				var validator = this;
				this.startRequest(element);
				var data = {};
				data[element.name] = value;
				$.ajax($.extend(true, {
					url: param,
					mode: "abort",
					port: "validate" + element.name,
					dataType: "json",
					data: data,
					success: function (response) {
						validator.settings.messages[element.name].remote = previous.originalMessage;
						var valid = response === true || response === "true";
						if (valid) {
							var submitted = validator.formSubmitted;
							validator.prepareElement(element);
							validator.formSubmitted = submitted;
							validator.successList.push(element);
							delete validator.invalid[element.name];
							validator.showErrors();
						} else {
							var errors = {};
							var message = response || validator.defaultMessage(element, "remote");
							errors[element.name] = previous.message = $.isFunction(message) ? message(value) : message;
							validator.invalid[element.name] = true;
							validator.showErrors(errors);
						}
						previous.valid = valid;
						validator.stopRequest(element, valid);
					}
				}, param));
				return "pending";
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/minlength
			minlength: function (value, element, param) {
				var length = $.isArray(value) ? value.length : this.getLength($.trim(value), element);
				return this.optional(element) || length >= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/maxlength
			maxlength: function (value, element, param) {
				var length = $.isArray(value) ? value.length : this.getLength($.trim(value), element);
				return this.optional(element) || length <= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/rangelength
			rangelength: function (value, element, param) {
				var length = $.isArray(value) ? value.length : this.getLength($.trim(value), element);
				return this.optional(element) || ( length >= param[0] && length <= param[1] );
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/min
			min: function (value, element, param) {
				return this.optional(element) || value >= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/max
			max: function (value, element, param) {
				return this.optional(element) || value <= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/range
			range: function (value, element, param) {
				return this.optional(element) || ( value >= param[0] && value <= param[1] );
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/email
			email: function (value, element) {
				// contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
				return this.optional(element) || /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/i.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/url
			url: function (value, element) {
				// contributed by Scott Gonzalez: http://projects.scottsplayground.com/iri/
				return this.optional(element) || /^(https?|s?ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/date
			date: function (value, element) {
				return this.optional(element) || !/Invalid|NaN/.test(new Date(value).toString());
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/dateISO
			dateISO: function (value, element) {
				return this.optional(element) || /^\d{4}[\/\-]\d{1,2}[\/\-]\d{1,2}$/.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/number
			number: function (value, element) {
				return this.optional(element) || /^-?(?:\d+|\d{1,3}(?:,\d{3})+)?(?:\.\d+)?$/.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/digits
			digits: function (value, element) {
				return this.optional(element) || /^\d+$/.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/creditcard
			// based on http://en.wikipedia.org/wiki/Luhn
			creditcard: function (value, element) {
				if (this.optional(element)) {
					return "dependency-mismatch";
				}
				// accept only spaces, digits and dashes
				if (/[^0-9 \-]+/.test(value)) {
					return false;
				}
				var nCheck = 0,
					nDigit = 0,
					bEven = false;

				value = value.replace(/\D/g, "");

				for (var n = value.length - 1; n >= 0; n--) {
					var cDigit = value.charAt(n);
					nDigit = parseInt(cDigit, 10);
					if (bEven) {
						if ((nDigit *= 2) > 9) {
							nDigit -= 9;
						}
					}
					nCheck += nDigit;
					bEven = !bEven;
				}

				return (nCheck % 10) === 0;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/equalTo
			equalTo: function (value, element, param) {
				// bind to the blur event of the target in order to revalidate whenever the target field is updated
				// TODO find a way to bind the event just once, avoiding the unbind-rebind overhead
				var target = $(param);
				if (this.settings.onfocusout) {
					target.unbind(".validate-equalTo").bind("blur.validate-equalTo", function () {
						$(element).valid();
					});
				}
				return value === target.val();
			}

		}

	});

// deprecated, use $.validator.format instead
	$.format = $.validator.format;

}(jQuery));

// ajax mode: abort
// usage: $.ajax({ mode: "abort"[, port: "uniqueport"]});
// if mode:"abort" is used, the previous request on that port (port can be undefined) is aborted via XMLHttpRequest.abort()
(function ($) {
	var pendingRequests = {};
	// Use a prefilter if available (1.5+)
	if ($.ajaxPrefilter) {
		$.ajaxPrefilter(function (settings, _, xhr) {
			var port = settings.port;
			if (settings.mode === "abort") {
				if (pendingRequests[port]) {
					pendingRequests[port].abort();
				}
				pendingRequests[port] = xhr;
			}
		});
	} else {
		// Proxy ajax
		var ajax = $.ajax;
		$.ajax = function (settings) {
			var mode = ( "mode" in settings ? settings : $.ajaxSettings ).mode,
				port = ( "port" in settings ? settings : $.ajaxSettings ).port;
			if (mode === "abort") {
				if (pendingRequests[port]) {
					pendingRequests[port].abort();
				}
				return (pendingRequests[port] = ajax.apply(this, arguments));
			}
			return ajax.apply(this, arguments);
		};
	}
}(jQuery));

// provides delegate(type: String, delegate: Selector, handler: Callback) plugin for easier event delegation
// handler is only called when $(event.target).is(delegate), in the scope of the jquery-object for event.target
(function ($) {
	$.extend($.fn, {
		validateDelegate: function (delegate, type, handler) {
			return this.bind(type, function (event) {
				var target = $(event.target);
				if (target.is(delegate)) {
					return handler.apply(target, arguments);
				}
			});
		}
	});
}(jQuery));
;


/* FILE: /jomres/javascript/jquery.rating.js */
/*
 ### jQuery Star Rating Plugin v4.11 - 2013-03-14 ###
 * Home: http://www.fyneworks.com/jquery/star-rating/
 * Code: http://code.google.com/p/jquery-star-rating-plugin/
 *
 * Licensed under http://en.wikipedia.org/wiki/MIT_License
 ###
 */

/*# AVOID COLLISIONS #*/
;
if (window.jQuery) (function ($) {
	/*# AVOID COLLISIONS #*/

	// IE6 Background Image Fix
	if ((!$.support.opacity && !$.support.style)) try {
		document.execCommand("BackgroundImageCache", false, true)
	} catch (e) {
	}
	;
	// Thanks to http://www.visualjquery.com/rating/rating_redux.html

	// plugin initialization
	$.fn.rating = function (options) {
		if (this.length == 0) return this; // quick fail

		// Handle API methods
		if (typeof arguments[0] == 'string') {
			// Perform API methods on individual elements
			if (this.length > 1) {
				var args = arguments;
				return this.each(function () {
					$.fn.rating.apply($(this), args);
				});
			}
			;
			// Invoke API method handler
			$.fn.rating[arguments[0]].apply(this, $.makeArray(arguments).slice(1) || []);
			// Quick exit...
			return this;
		}
		;

		// Initialize options for this call
		var options = $.extend(
			{}/* new object */,
			$.fn.rating.options/* default options */,
			options || {} /* just-in-time options */
		);

		// Allow multiple controls with the same name by making each call unique
		$.fn.rating.calls++;

		// loop through each matched element
		this
			.not('.star-rating-applied')
			.addClass('star-rating-applied')
			.each(function () {

				// Load control parameters / find context / etc
				var control, input = $(this);
				var eid = (this.name || 'unnamed-rating').replace(/\[|\]/g, '_').replace(/^\_+|\_+$/g, '');
				var context = $(this.form || document.body);

				// FIX: http://code.google.com/p/jquery-star-rating-plugin/issues/detail?id=23
				var raters = context.data('rating');
				if (!raters || raters.call != $.fn.rating.calls) raters = { count: 0, call: $.fn.rating.calls };
				var rater = raters[eid] || context.data('rating' + eid);

				// if rater is available, verify that the control still exists
				if (rater) control = rater.data('rating');

				if (rater && control)//{// save a byte!
				// add star to control if rater is available and the same control still exists
					control.count++;

				//}// save a byte!
				else {
					// create new control if first star or control element was removed/replaced

					// Initialize options for this rater
					control = $.extend(
						{}/* new object */,
						options || {} /* current call options */,
						($.metadata ? input.metadata() : ($.meta ? input.data() : null)) || {}, /* metadata options */
						{ count: 0, stars: [], inputs: [] }
					);

					// increment number of rating controls
					control.serial = raters.count++;

					// create rating element
					rater = $('<span class="star-rating-control"/>');
					input.before(rater);

					// Mark element for initialization (once all stars are ready)
					rater.addClass('rating-to-be-drawn');

					// Accept readOnly setting from 'disabled' property
					if (input.attr('disabled') || input.hasClass('disabled')) control.readOnly = true;

					// Accept required setting from class property (class='required')
					if (input.hasClass('required')) control.required = true;

					// Create 'cancel' button
					rater.append(
						control.cancel = $('<div class="rating-cancel"><a title="' + control.cancel + '">' + control.cancelValue + '</a></div>')
							.on('mouseover', function () {
								$(this).rating('drain');
								$(this).addClass('star-rating-hover');
								//$(this).rating('focus');
							})
							.on('mouseout', function () {
								$(this).rating('draw');
								$(this).removeClass('star-rating-hover');
								//$(this).rating('blur');
							})
							.on('click', function () {
								$(this).rating('select');
							})
							.data('rating', control)
					);

				}
				; // first element of group

				// insert rating star (thanks Jan Fanslau rev125 for blind support https://code.google.com/p/jquery-star-rating-plugin/issues/detail?id=125)
				var star = $('<div role="text" aria-label="' + this.title + '" class="star-rating rater-' + control.serial + '"><a title="' + (this.title || this.value) + '">' + this.value + '</a></div>');
				rater.append(star);

				// inherit attributes from input element
				if (this.id) star.attr('id', this.id);
				if (this.className) star.addClass(this.className);

				// Half-stars?
				if (control.half) control.split = 2;

				// Prepare division control
				if (typeof control.split == 'number' && control.split > 0) {
					var stw = ($.fn.width ? star.width() : 0) || control.starWidth;
					var spi = (control.count % control.split), spw = Math.floor(stw / control.split);
					star
						// restrict star's width and hide overflow (already in CSS)
						.width(spw)
						// move the star left by using a negative margin
						// this is work-around to IE's stupid box model (position:relative doesn't work)
						.find('a').css({ 'margin-left': '-' + (spi * spw) + 'px' })
				}
				;

				// readOnly?
				if (control.readOnly)//{ //save a byte!
				// Mark star as readOnly so user can customize display
					star.addClass('star-rating-readonly');
				//}  //save a byte!
				else//{ //save a byte!
				// Enable hover css effects
					star.addClass('star-rating-live')
						// Attach mouse events
						.on('mouseover', function () {
							$(this).rating('fill');
							$(this).rating('focus');
						})
						.on('mouseout', function () {
							$(this).rating('draw');
							$(this).rating('blur');
						})
						.on('click', function () {
							$(this).rating('select');
						})
					;
				//}; //save a byte!

				// set current selection
				if (this.checked)    control.current = star;

				// set current select for links
				if (this.nodeName == "A") {
					if ($(this).hasClass('selected'))
						control.current = star;
				}
				;

				// hide input element
				input.hide();

				// backward compatibility, form element to plugin
				input.on('change.rating', function (event) {
					if (event.selfTriggered) return false;
					$(this).rating('select');
				});

				// attach reference to star to input element and vice-versa
				star.data('rating.input', input.data('rating.star', star));

				// store control information in form (or body when form not available)
				control.stars[control.stars.length] = star[0];
				control.inputs[control.inputs.length] = input[0];
				control.rater = raters[eid] = rater;
				control.context = context;

				input.data('rating', control);
				rater.data('rating', control);
				star.data('rating', control);
				context.data('rating', raters);
				context.data('rating' + eid, rater); // required for ajax forms
			}); // each element

		// Initialize ratings (first draw)
		$('.rating-to-be-drawn').rating('draw').removeClass('rating-to-be-drawn');

		return this; // don't break the chain...
	};

	/*--------------------------------------------------------*/

	/*
	 ### Core functionality and API ###
	 */
	$.extend($.fn.rating, {
		// Used to append a unique serial number to internal control ID
		// each time the plugin is invoked so same name controls can co-exist
		calls: 0,

		focus: function () {
			var control = this.data('rating');
			if (!control) return this;
			if (!control.focus) return this; // quick fail if not required
			// find data for event
			var input = $(this).data('rating.input') || $(this.tagName == 'INPUT' ? this : null);
			// focus handler, as requested by focusdigital.co.uk
			if (control.focus) control.focus.apply(input[0], [input.val(), $('a', input.data('rating.star'))[0]]);
		}, // $.fn.rating.focus

		blur: function () {
			var control = this.data('rating');
			if (!control) return this;
			if (!control.blur) return this; // quick fail if not required
			// find data for event
			var input = $(this).data('rating.input') || $(this.tagName == 'INPUT' ? this : null);
			// blur handler, as requested by focusdigital.co.uk
			if (control.blur) control.blur.apply(input[0], [input.val(), $('a', input.data('rating.star'))[0]]);
		}, // $.fn.rating.blur

		fill: function () { // fill to the current mouse position.
			var control = this.data('rating');
			if (!control) return this;
			// do not execute when control is in read-only mode
			if (control.readOnly) return;
			// Reset all stars and highlight them up to this element
			this.rating('drain');
			this.prevAll().addBack().filter('.rater-' + control.serial).addClass('star-rating-hover');
		},// $.fn.rating.fill

		drain: function () { // drain all the stars.
			var control = this.data('rating');
			if (!control) return this;
			// do not execute when control is in read-only mode
			if (control.readOnly) return;
			// Reset all stars
			control.rater.children().filter('.rater-' + control.serial).removeClass('star-rating-on').removeClass('star-rating-hover');
		},// $.fn.rating.drain

		draw: function () { // set value and stars to reflect current selection
			var control = this.data('rating');
			if (!control) return this;
			// Clear all stars
			this.rating('drain');
			// Set control value
			var current = $(control.current);//? control.current.data('rating.input') : null );
			var starson = current.length ? current.prevAll().addBack().filter('.rater-' + control.serial) : null;
			if (starson)    starson.addClass('star-rating-on');
			// Show/hide 'cancel' button
			control.cancel[control.readOnly || control.required ? 'hide' : 'show']();
			// Add/remove read-only classes to remove hand pointer
			this.siblings()[control.readOnly ? 'addClass' : 'removeClass']('star-rating-readonly');
		},// $.fn.rating.draw


		select: function (value, wantCallBack) { // select a value
			var control = this.data('rating');
			if (!control) return this;
			// do not execute when control is in read-only mode
			if (control.readOnly) return;
			// clear selection
			control.current = null;
			// programmatically (based on user input)
			if (typeof value != 'undefined' || this.length > 1) {
				// select by index (0 based)
				if (typeof value == 'number')
					return $(control.stars[value]).rating('select', undefined, wantCallBack);
				// select by literal value (must be passed as a string
				if (typeof value == 'string') {
					//return
					$.each(control.stars, function () {
						//console.log($(this).data('rating.input'), $(this).data('rating.input').val(), value, $(this).data('rating.input').val()==value?'BINGO!':'');
						if ($(this).data('rating.input').val() == value) $(this).rating('select', undefined, wantCallBack);
					});
					// don't break the chain
					return this;
				}
				;
			}
			else {
				control.current = this[0].tagName == 'INPUT' ?
					this.data('rating.star') :
					(this.is('.rater-' + control.serial) ? this : null);
			}
			;
			// Update rating control state
			this.data('rating', control);
			// Update display
			this.rating('draw');
			// find current input and its sibblings
			var current = $(control.current ? control.current.data('rating.input') : null);
			var lastipt = $(control.inputs).filter(':checked');
			var deadipt = $(control.inputs).not(current);
			// check and uncheck elements as required
			deadipt.prop('checked', false);//.removeAttr('checked');
			current.prop('checked', true);//.attr('checked','checked');
			// trigger change on current or last selected input
			$(current.length ? current : lastipt).trigger({ type: 'change', selfTriggered: true });
			// click callback, as requested here: http://plugins.jquery.com/node/1655
			if ((wantCallBack || wantCallBack == undefined) && control.callback) control.callback.apply(current[0], [current.val(), $('a', control.current)[0]]);// callback event
			// don't break the chain
			return this;
		},// $.fn.rating.select


		readOnly: function (toggle, disable) { // make the control read-only (still submits value)
			var control = this.data('rating');
			if (!control) return this;
			// setread-only status
			control.readOnly = toggle || toggle == undefined ? true : false;
			// enable/disable control value submission
			if (disable) $(control.inputs).attr("disabled", "disabled");
			else                $(control.inputs).removeAttr("disabled");
			// Update rating control state
			this.data('rating', control);
			// Update display
			this.rating('draw');
		},// $.fn.rating.readOnly

		disable: function () { // make read-only and never submit value
			this.rating('readOnly', true, true);
		},// $.fn.rating.disable

		enable: function () { // make read/write and submit value
			this.rating('readOnly', false, false);
		}// $.fn.rating.select

	});

	/*--------------------------------------------------------*/

	/*
	 ### Default Settings ###
	 eg.: You can override default control like this:
	 $.fn.rating.options.cancel = 'Clear';
	 */
	$.fn.rating.options = { //$.extend($.fn.rating, { options: {
		cancel: 'Cancel Rating',   // advisory title for the 'cancel' link
		cancelValue: '',           // value to submit when user click the 'cancel' link
		split: 0,                  // split the star into how many parts?

		// Width of star image in case the plugin can't work it out. This can happen if
		// the jQuery.dimensions plugin is not available OR the image is hidden at installation
		starWidth: 16//,

		//NB.: These don't need to be pre-defined (can be undefined/null) so let's save some code!
		//half:     false,         // just a shortcut to control.split = 2
		//required: false,         // disables the 'cancel' button so user can only select one of the specified values
		//readOnly: false,         // disable rating plugin interaction/ values cannot be.one('change',		//focus:    function(){},  // executed when stars are focused
		//blur:     function(){},  // executed when stars are focused
		//callback: function(){},  // executed when a star is clicked
	}; //} });

	/*--------------------------------------------------------*/


	// auto-initialize plugin
	$(function () {
		$('input[type=radio].star').rating();
	});


	/*# AVOID COLLISIONS #*/
})(jQuery);
/*# AVOID COLLISIONS #*/
;


/* FILE: /jomres/javascript/jquery.tipsy.js */
// tipsy, facebook style tooltips for jquery
// version 1.0.0a
// (c) 2008-2010 jason frame [jason@onehackoranother.com]
// released under the MIT license

(function ($) {

	function maybeCall(thing, ctx) {
		return (typeof thing == 'function') ? (thing.call(ctx)) : thing;
	};

	function isElementInDOM(ele) {
		while (ele = ele.parentNode) {
			if (ele == document) return true;
		}
		return false;
	};

	function Tipsy(element, options) {
		this.$element = $(element);
		this.options = options;
		this.enabled = true;
		this.fixTitle();
	};

	Tipsy.prototype = {
		show: function () {
			var title = this.getTitle();
			if (title && this.enabled) {
				var $tip = this.tip();

				$tip.find('.tipsy-inner')[this.options.html ? 'html' : 'text'](title);
				$tip[0].className = 'tipsy'; // reset classname in case of dynamic gravity
				$tip.remove().css({top: 0, left: 0, visibility: 'hidden', display: 'block'}).prependTo(document.body);

				var pos = $.extend({}, this.$element.offset(), {
					width: this.$element[0].offsetWidth,
					height: this.$element[0].offsetHeight
				});

				var actualWidth = $tip[0].offsetWidth,
					actualHeight = $tip[0].offsetHeight,
					gravity = maybeCall(this.options.gravity, this.$element[0]);

				var tp;
				switch (gravity.charAt(0)) {
					case 'n':
						tp = {top: pos.top + pos.height + this.options.offset, left: pos.left + pos.width / 2 - actualWidth / 2};
						break;
					case 's':
						tp = {top: pos.top - actualHeight - this.options.offset, left: pos.left + pos.width / 2 - actualWidth / 2};
						break;
					case 'e':
						tp = {top: pos.top + pos.height / 2 - actualHeight / 2, left: pos.left - actualWidth - this.options.offset};
						break;
					case 'w':
						tp = {top: pos.top + pos.height / 2 - actualHeight / 2, left: pos.left + pos.width + this.options.offset};
						break;
				}

				if (gravity.length == 2) {
					if (gravity.charAt(1) == 'w') {
						tp.left = pos.left + pos.width / 2 - 15;
					} else {
						tp.left = pos.left + pos.width / 2 - actualWidth + 15;
					}
				}

				$tip.css(tp).addClass('tipsy-' + gravity);
				$tip.find('.tipsy-arrow')[0].className = 'tipsy-arrow tipsy-arrow-' + gravity.charAt(0);
				if (this.options.className) {
					$tip.addClass(maybeCall(this.options.className, this.$element[0]));
				}

				if (this.options.fade) {
					$tip.stop().css({opacity: 0, display: 'block', visibility: 'visible'}).animate({opacity: this.options.opacity});
				} else {
					$tip.css({visibility: 'visible', opacity: this.options.opacity});
				}
			}
		},

		hide: function () {
			if (this.options.fade) {
				this.tip().stop().fadeOut(function () {
					$(this).remove();
				});
			} else {
				this.tip().remove();
			}
		},

		fixTitle: function () {
			var $e = this.$element;
			if ($e.attr('title') || typeof($e.attr('original-title')) != 'string') {
				$e.attr('original-title', $e.attr('title') || '').removeAttr('title');
			}
		},

		getTitle: function () {
			var title, $e = this.$element, o = this.options;
			this.fixTitle();
			var title, o = this.options;
			if (typeof o.title == 'string') {
				title = $e.attr(o.title == 'title' ? 'original-title' : o.title);
			} else if (typeof o.title == 'function') {
				title = o.title.call($e[0]);
			}
			title = ('' + title).replace(/(^\s*|\s*$)/, "");
			return title || o.fallback;
		},

		tip: function () {
			if (!this.$tip) {
				this.$tip = $('<div class="tipsy"></div>').html('<div class="tipsy-arrow"></div><div class="tipsy-inner"></div>');
				this.$tip.data('tipsy-pointee', this.$element[0]);
			}
			return this.$tip;
		},

		validate: function () {
			if (!this.$element[0].parentNode) {
				this.hide();
				this.$element = null;
				this.options = null;
			}
		},

		enable: function () {
			this.enabled = true;
		},
		disable: function () {
			this.enabled = false;
		},
		toggleEnabled: function () {
			this.enabled = !this.enabled;
		}
	};

	$.fn.tipsy = function (options) {

		if (options === true) {
			return this.data('tipsy');
		} else if (typeof options == 'string') {
			var tipsy = this.data('tipsy');
			if (tipsy) tipsy[options]();
			return this;
		}

		options = $.extend({}, $.fn.tipsy.defaults, options);

		function get(ele) {
			var tipsy = $.data(ele, 'tipsy');
			if (!tipsy) {
				tipsy = new Tipsy(ele, $.fn.tipsy.elementOptions(ele, options));
				$.data(ele, 'tipsy', tipsy);
			}
			return tipsy;
		}

		function enter() {
			var tipsy = get(this);
			tipsy.hoverState = 'in';
			if (options.delayIn == 0) {
				tipsy.show();
			} else {
				tipsy.fixTitle();
				setTimeout(function () {
					if (tipsy.hoverState == 'in') tipsy.show();
				}, options.delayIn);
			}
		};

		function leave() {
			var tipsy = get(this);
			tipsy.hoverState = 'out';
			if (options.delayOut == 0) {
				tipsy.hide();
			} else {
				setTimeout(function () {
					if (tipsy.hoverState == 'out') tipsy.hide();
				}, options.delayOut);
			}
		};

		if (!options.live) this.each(function () {
			get(this);
		});

		if (options.trigger != 'manual') {
			var binder = options.live ? 'live' : 'bind',
				eventIn = options.trigger == 'hover' ? 'mouseenter' : 'focus',
				eventOut = options.trigger == 'hover' ? 'mouseleave' : 'blur';
			this[binder](eventIn, enter)[binder](eventOut, leave);
		}

		return this;

	};

	$.fn.tipsy.defaults = {
		className: null,
		delayIn: 0,
		delayOut: 0,
		fade: false,
		fallback: '',
		gravity: 'n',
		html: false,
		live: false,
		offset: 0,
		opacity: 0.8,
		title: 'title',
		trigger: 'hover'
	};

	$.fn.tipsy.revalidate = function () {
		$('.tipsy').each(function () {
			var pointee = $.data(this, 'tipsy-pointee');
			if (!pointee || !isElementInDOM(pointee)) {
				$(this).remove();
			}
		});
	};

	// Overwrite this method to provide options on a per-element basis.
	// For example, you could store the gravity in a 'tipsy-gravity' attribute:
	// return $.extend({}, options, {gravity: $(ele).attr('tipsy-gravity') || 'n' });
	// (remember - do not modify 'options' in place!)
	$.fn.tipsy.elementOptions = function (ele, options) {
		return $.metadata ? $.extend({}, options, $(ele).metadata()) : options;
	};

	$.fn.tipsy.autoNS = function () {
		return $(this).offset().top > ($(document).scrollTop() + $(window).height() / 2) ? 's' : 'n';
	};

	$.fn.tipsy.autoWE = function () {
		return $(this).offset().left > ($(document).scrollLeft() + $(window).width() / 2) ? 'e' : 'w';
	};

	/**
	 * yields a closure of the supplied parameters, producing a function that takes
	 * no arguments and is suitable for use as an autogravity function like so:
	 *
	 * @param margin (int) - distance from the viewable region edge that an
	 *        element should be before setting its tooltip's gravity to be away
	 *        from that edge.
	 * @param prefer (string, e.g. 'n', 'sw', 'w') - the direction to prefer
	 *        if there are no viewable region edges effecting the tooltip's
	 *        gravity. It will try to vary from this minimally, for example,
	 *        if 'sw' is preferred and an element is near the right viewable
	 *        region edge, but not the top edge, it will set the gravity for
	 *        that element's tooltip to be 'se', preserving the southern
	 *        component.
	 */
	$.fn.tipsy.autoBounds = function (margin, prefer) {
		return function () {
			var dir = {ns: prefer[0], ew: (prefer.length > 1 ? prefer[1] : false)},
				boundTop = $(document).scrollTop() + margin,
				boundLeft = $(document).scrollLeft() + margin,
				$this = $(this);

			if ($this.offset().top < boundTop) dir.ns = 'n';
			if ($this.offset().left < boundLeft) dir.ew = 'w';
			if ($(window).width() + $(document).scrollLeft() - $this.offset().left < margin) dir.ew = 'e';
			if ($(window).height() + $(document).scrollTop() - $this.offset().top < margin) dir.ns = 's';

			return dir.ns + (dir.ew ? dir.ew : '');
		}
	};

})(jQuery);
;