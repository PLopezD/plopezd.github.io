var map;
var initialLocation = new google.maps.LatLng(0,-30);
var aiw = new google.maps.InfoWindow();

function monkeyPatchAutocomplete() {
  // Don't really need to save the old fn, 
  // but I could chain if I wanted to
  var oldFn = $.ui.autocomplete.prototype._renderItem;

  $.ui.autocomplete.prototype._renderItem = function( ul, item) {
    if (item.label != 'Affiliates:' && item.label != 'Locations:') { 
      return $( "<li style = 'padding-left:20px;'></li>" )
        .data( "item.autocomplete", item )
        .append( "<a>" + item.label + "</a>" )
        .appendTo( ul );
    } else {
     	return $( "<li style = 'padding-left:5px;'></li>" )
        .data( "item.autocomplete", item )
        .append( "<small>" + item.label + "</small>" )
        .appendTo( ul );
    }
  };
}


// FIRE ALL PHOTON TORPEDOES!
$(document).ready(function() {
  initialize();

  var oms = new OverlappingMarkerSpiderfier(map, {markersWontMove: true, markersWontHide: true, keepSpiderfied: true});
  oms.addListener('click', function(marker, event) {
    aiw.setContent(marker.desc);
    aiw.open(map, marker);
    load_content(marker);
  });

  var markers = [];
  var len = cfaloc2.length;

  monkeyPatchAutocomplete();

  for (var i = 0; i < len; i=i+3) {
    var latLng = new google.maps.LatLng(cfaloc2[i+1], cfaloc2[i+2]);
	  var marker = createMarker({lat: cfaloc2[i+1], lng: cfaloc2[i+2]}, cfaloc2[i]);
      markers.push(marker);
      oms.addMarker(marker);
	}

  var markerCluster = new MarkerClusterer(map, markers);
  markerCluster.setMaxZoom(9);
  $(function() {
    $("#address").autocomplete({
      //This bit uses the geocoder to fetch address values
      source: function(request, response) {
        geocoder.geocode( {'address': request.term }, function(results, status) {
          results.unshift(['Locations:',0,0]);
          $.ajax ( {
            url: "ac.php",
            data: {'term': request.term},
            type: 'POST',
            dataType: "json",
            async: false,
            success: function ( data, textStatus, jqXHR ) {
              $.each(data, function(index, value) {
                results.unshift([value['name'], value['lat'], value['lng']]);
              });
            }
          });
          results.unshift(['Affiliates:',0,0]);
          response($.map(results, function(item) {
            if (item.hasOwnProperty('geometry')) {
              if(item.types.indexOf("establishment") == -1){
                return {
                  label:  item.formatted_address,
                  value: item.formatted_address,
                  latitude: item.geometry.location.lat(),
                  longitude: item.geometry.location.lng()
                }
              } 
            } else {
              return {
                label: item[0],
                value: item[0],
                latitude: item[1],
                longitude: item[2]
              }
            }
          }));
        })
      },
      //This bit is executed upon selection of an address
      select: function(event, ui) {
        if (ui.item.label.indexOf('CrossFit')==-1) { 
          var location = new google.maps.LatLng(ui.item.latitude, ui.item.longitude);
          map.setCenter(location);
          map.setZoom(11);
        } else {
          var location = new google.maps.LatLng(ui.item.latitude, ui.item.longitude);
          map.setCenter(location);
          map.setZoom(15);
        }   
      }
    });
  });
});

function load_content(marker) { 
	$.ajax({
    url: 'affinfo.php?a=' + marker.id + '&t=0',     
		success: function(data) { 
      aiw.setContent(data);       
		}   
	});
}

function createMarker(latLng, index) {
  var marker = new google.maps.Marker({
    position: latLng,
    id: index
  });
  return marker;
}
      
function initialize() {
  //var latlng = new google.maps.LatLng(-34.397, 150.644);
  var options = {
    zoom: 2,
    maxZoom: 20,
    minZoom: 1,
    center: initialLocation,
    setUIToDefault: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    zoomControl: true,
    zoomControlOptions: {
      style: google.maps.ZoomControlStyle.LARGE,
      position: google.maps.ControlPosition.LEFT_TOP
    }
  }
	
  map = new google.maps.Map(document.getElementById("map_canvas"), options);
   
  //GEOCODER
  geocoder = new google.maps.Geocoder();
}
