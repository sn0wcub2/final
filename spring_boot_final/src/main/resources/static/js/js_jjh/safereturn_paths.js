/**
 * safereturn_paths.js
 */
	var map;
	var marker_s, marker_e, marker_p1, marker_p2;
	var totalMarkerArr = [];
	var drawInfoArr = [];
	var resultdrawArr = [];
	var x1 = "";
	var x2 = "";
	var y1 = "";
	var y2 = "";
	var makerFlag = 0;
	
	function today() {
		date = new Date();
		year = date.getFullYear();
		month = date.getMonth()+1;
		day = date.getDate();
		return year+"-"+month+"-"+day;
	};
	
	function mapMaker() {
		// 1. 지도 띄우기
		map = new Tmapv2.Map("map_div", {
			center : new Tmapv2.LatLng(37.500692, 127.036978),
			width : "100%",
			height : "400px",
			zoom : 17,
			zoomControl : true,
			scrollwheel : true
		});
	}
	
	
	
	// lon -> 큰거 (x), lat -> 작은거 (y)
	function initTmap(lat1, lon1, lat2, lon2) {
		centerSetter = new Tmapv2.LatLng(lat1, lon1);
		map.setCenter(centerSetter);
		
		if (makerFlag == 0) {
			// 2. 시작, 도착 심볼찍기
			// 시작
			marker_s = new Tmapv2.Marker(
					{
						position : new Tmapv2.LatLng(lat1,lon1),
						icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png",
						iconSize : new Tmapv2.Size(24, 38),
						map : map
					});
	
			// 도착
			marker_e = new Tmapv2.Marker(
					{
						position : new Tmapv2.LatLng(lat2,lon2),
						icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png",
						iconSize : new Tmapv2.Size(24, 38),
						map : map
					});
					
			makerFlag = 1;
		} else {
			marker_s.setPosition(new Tmapv2.LatLng(lat1, lon1));
			marker_e.setPosition(new Tmapv2.LatLng(lat2, lon2));
		}
		

		// 3. 경로탐색 API 사용요청
		$.ajax({
					method : "POST",
					url : "https://apis.openapi.sk.com/tmap/routes/pedestrian?version=1&format=json&callback=result",
					async : false,
					data : {
						"appKey" : "l7xxad34a3adc29543b7a7962a0496fa88a3",
						"startX" : lon1,
						"startY" : lat1,
						"endX" : lon2,
						"endY" : lat2,
						"reqCoordType" : "WGS84GEO",
						"resCoordType" : "EPSG3857",
						"startName" : "출발지",
						"endName" : "도착지"//,
						//"passList" : "126.985000,37.565000"
					},
					success : function(response) {
						var resultData = response.features;

						//결과 출력
						var tDistance = '<img src="/image/main_images/walk.png" class="sfimg">' + "이동 거리 : "
								+ ((resultData[0].properties.totalDistance) / 1000)
										.toFixed(1) + "km&emsp;&emsp;";
						var tTime = '<img src="/image/main_images/clock.png" class="sfimg">' + " 예상 시간 : "
								+ ((resultData[0].properties.totalTime) / 60)
										.toFixed(0) + "분";
						
						$("#result").html(tDistance + tTime);
						$("#safeReturnPay").html('<img src="/image/main_images/cash.png" class="sfimg">' +"&nbsp;&nbsp;결제 금액 : " + ((resultData[0].properties.totalTime) / 60).toFixed(0) * 100 + "원"
								+ "<input type='hidden' id='srpay' value='" + ((resultData[0].properties.totalTime) / 60).toFixed(0) * 100 + "'>");
						
						//기존 그려진 라인 & 마커가 있다면 초기화
						if (resultdrawArr.length > 0) {
							for ( var i in resultdrawArr) {
								resultdrawArr[i]
										.setMap(null);
							}
							resultdrawArr = [];
						}
						
						drawInfoArr = [];
						

						for ( var i in resultData) { //for문 [S]
							var geometry = resultData[i].geometry;
							var properties = resultData[i].properties;
							var polyline_;


							if (geometry.type == "LineString") {
								for ( var j in geometry.coordinates) {
									// 경로들의 결과값(구간)들을 포인트 객체로 변환 
									var latlng = new Tmapv2.Point(
											geometry.coordinates[j][0],
											geometry.coordinates[j][1]);
									// 포인트 객체를 받아 좌표값으로 변환
									var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
											latlng);
									// 포인트객체의 정보로 좌표값 변환 객체로 저장
									var convertChange = new Tmapv2.LatLng(
											convertPoint._lat,
											convertPoint._lng);
									// 배열에 담기
									drawInfoArr.push(convertChange);
								}
							} else {
								var markerImg = "";
								var pType = "";
								var size;

								if (properties.pointType == "S") { //출발지 마커
									markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png";
									pType = "S";
									size = new Tmapv2.Size(24, 38);
								} else if (properties.pointType == "E") { //도착지 마커
									markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png";
									pType = "E";
									size = new Tmapv2.Size(24, 38);
								} else { //각 포인트 마커
									markerImg = "http://topopen.tmap.co.kr/imgs/point.png";
									pType = "P";
									size = new Tmapv2.Size(8, 8);
								}

								// 경로들의 결과값들을 포인트 객체로 변환 
								var latlon = new Tmapv2.Point(
										geometry.coordinates[0],
										geometry.coordinates[1]);

								// 포인트 객체를 받아 좌표값으로 다시 변환
								var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
										latlon);

								var routeInfoObj = {
									markerImage : markerImg,
									lng : convertPoint._lng,
									lat : convertPoint._lat,
									pointType : pType
								};

								// Marker 추가
								marker_p = new Tmapv2.Marker(
										{
											position : new Tmapv2.LatLng(
													routeInfoObj.lat,
													routeInfoObj.lng),
											icon : routeInfoObj.markerImage,
											iconSize : size,
											map : map
										});
							}
						}//for문 [E]
						drawLine(drawInfoArr);
					},
					error : function(request, status, error) {
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				});

	}

	function addComma(num) {
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		return num.toString().replace(regexp, ',');
	}
	
	function drawLine(arrPoint) {
		var polyline_;

		polyline_ = new Tmapv2.Polyline({
			path : arrPoint,
			strokeColor : "#DD0000",
			strokeWeight : 6,
			map : map
		});
		resultdrawArr.push(polyline_);
	}
	
 $(document).ready(function() {
  	$("#findPaths")
	    .on('click', function() {
	          	 event.preventDefault();
	          	 var chkDate = $("#date-picker").val();
		 		 var chkBunji1 = $("#bunji1").val();
		 		 var chkBunji2 = $("#bunji2").val();
		 		
		 		 if(chkDate == "") {
		 		 	alert("서비스 사용 날짜를 선택해 주세요.");
		 		 	return false;
		 		 }
		 		 if(chkBunji1 == "") {
		 			alert("시작 위치를 선택해 주세요.");
		 			document.getElementById("bunji1").focus();
		 			return false;
		 		 }
		 		 if(chkBunji2 == "") {
		 			alert("도착 위치를 선택해 주세요.");
		 			document.getElementById("bunji2").focus();
		 			return false;
		 		 } 
	          	 
	          	 
	             // 2. API 사용요청
	             for(var i=1; i<=2; i++) {
	             var city_do = "서울시";
	             var gu_gun = "";
	             var dong = $("#dong"+i).val();
	             var bunji = $('#bunji'+i).val();
	             
	             if(dong == "역삼동") {
	             	gu_gun = "강남구";
	             } else if (dong == "신림동") {
	             	gu_gun = "관악구";
	             } else if (dong == "화양동") {
	             	gu_gun = "광진구";
	             }
	             
	             $.ajax({
	                      method : "GET",
	                      url : "https://apis.openapi.sk.com/tmap/geo/geocoding?version=1&format=json&callback=result",
	                      async : false,
	                      data : {
	                         "appKey" : "l7xxad34a3adc29543b7a7962a0496fa88a3",
	                         "coordType" : "WGS84GEO",
	                         "addressFlag" : "F00",
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
	                         
	                         if(i==1) {x1=lon;y1=lat}
	                         else if(i==2) {x2=lon;y2=lat;}
	                         
	                         
	                      },
	                      error : function(request, status, error) {
	                         console.log("code:"
	                               + request.status + "\n"
	                               + "message:"
	                               + request.responseText
	                               + "\n" + "error:" + error);
	                      }
	                   }); //ajax 끝
					} //for끝
					initTmap(y1, x1, y2, x2)
	          }); // submit 끝
  });
	
	