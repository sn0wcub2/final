/**
 * safereturn_geocoding.js
 */
 
  $(document).ready(function() {
  	$("#safeReturnAddressForm")
	    .on('submit', function() {
	          	 event.preventDefault();
	             // 2. API 사용요청
	             var city_do = $("#city_do").val();
	             var gu_gun = $("#gu_gun").val();
	             var dong = $("#dong").val();
	             var bunji = $('#bunji').val();
	             
	             $.ajax({
	                      method : "GET",
	                      url : "https://apis.openapi.sk.com/tmap/geo/geocoding?version=1&format=json&callback=result",
	                      async : false,
	                      data : {
	                         "appKey" : "l7xxad34a3adc29543b7a7962a0496fa88a3",
	                         "coordType" : "WGS84GEO",
	                         "city_do" : city_do,
	                         "gu_gun" : gu_gun,
	                         "dong" : dong,
	                         "bunji" : bunji
	                      },
	                      success : function(response) {
	                         var resultData = response.coordinateInfo;
	                         var lon, lat;
	
	                         if (resultData.lon.length > 0) {
	                            lon = resultData.lon;
	                            lat = resultData.lat;
	                         } else {
	                            lon = resultData.newLon;
	                            lat = resultData.newLat;
	                         }
	
	                         //기존 마커 삭제
	                         marker1.setMap(null);
	
	                         var markerPosition = new Tmapv2.LatLng(
	                               Number(lat), Number(lon));
	                         //마커 올리기
	                         marker1 = new Tmapv2.Marker(
	                               {
	                                  position : markerPosition,
	                                  icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_a.png",
	                                  iconSize : new Tmapv2.Size(
	                                        24, 38),
	                                  map : map
	                               });
	                         map.setCenter(markerPosition);
	
	                      },
	                      error : function(request, status, error) {
	                         console.log("code:"
	                               + request.status + "\n"
	                               + "message:"
	                               + request.responseText
	                               + "\n" + "error:" + error);
	                      }
	                   });
	
	          });
  });