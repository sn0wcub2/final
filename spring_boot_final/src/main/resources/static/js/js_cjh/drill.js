var today = new Date();

// 달력 제작
function buildCalendar(){
	var row = null
	var cnt =0;
	
	var calendarTable = document.getElementById("Calendar");
	var calendarTableTitle = document.getElementById("CalendarTitle");
	calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today,getMonth()+1)+"월";
	
	var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
	var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
	
	alert(firstDate);
	alert(lastDate);
	
	
	
	// 초기화부터 이해가 안됨
	while(calendarTable.rows.length > 2){
		calendarTable.deleteRow(calendarTable.rows.length -1);
	}
	
	row = calendarTable.insertRow();
	for(i = 0; i < firstDate.getDay(); i++){
		cell = row.insertCell();
		cnt += 1;
	}
	
	row = calendarTable.insertRow();

	for(i = 1; i <= lastDate.getDate(); i++){
		cell = row.insertCell();
		cnt += 1;
	    
	   	cell.setAttribute('id', i);
		cell.innerHTML = i;
		cell.align = "center";
	    
		if (cnt % 7 == 0){
			row = calendar.insertRow();
		}
	}
	if(cnt % 7 != 0){
		for(i = 0; i < 7 - (cnt % 7); i++){
			cell = row.insertCell();
		}
	}
};

// 다음달
function nextCalendar(){

};


//이전 달
function prevCalendar(){
};
