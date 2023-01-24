class Schedule{

}

const Calendar = {
    init(){
        const today = new Date();
        Calendar.showDates(today.getFullYear(), today.getMonth()+1);
    },

    showDates(y, m) {
        const before = document.querySelectorAll(".date");
        before.forEach(v=>v.remove());

        for(let i =-Calendar.getFirstDay(y, m); i<=Calendar.getLastDate(y, m); i++){
            Calendar.$calendar.innerHTML += `
                <div class="date ${i <1? "hidden-date" : ""}">
                    <p>${i}</p>
                </div>
            `;
        }
    },

    getFirstDay(y, m){
        const date = new Date(`${y}-${m}-01`);
        return date.getDay();
    },
    getLastDate(y, m){
        const date = new Date(y, m, 0);
        return date.getDate();
    }
}