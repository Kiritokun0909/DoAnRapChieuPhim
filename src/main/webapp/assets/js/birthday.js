const yearSelected = document.getElementById("year");
const monthSelected = document.getElementById("month");
const daySelected = document.getElementById("day");

const months = ['1', '2', '3', '4', '5', '6', 
'7', '8', '9', '10', '11', '12'];

(function populateMonths(){
	for(let i = 0; i < months.length; i++){
		const option = document.createElement("option");
		option.textContent = months[i];
		monthSelected.appendChild(option);
	}
})();

function populateYears(){
	let year = new Date().getFullYear();
	for(let i = 0; i < 101; i++){
		const option = document.createElement("option");
		option.textContent = year - i;
		yearSelected.appendChild(option);
	}
}

function isLeapYear(year) {
    year = parseInt(year);
    if (year % 4 != 0) {
	      return false;
	  } else if (year % 400 == 0) {
	      return true;
	  } else if (year % 100 == 0) {
	      return false;
	  } else {
	      return true;
	  }
}

function populateDays(month){
	while(daySelected.firstChild){
		daySelected.removeChild(daySelected.firstChild);
	}
	
	let numDays;
	if(month == '1' || month == '3' 
	|| month == '7' || month == '8'
	|| month == '10' || month == '12'){
		numDays = 31;
	} 
	else if(month == '2'){
		if(isLeapYear(yearSelected.value)){
			numDays = 29;
		}
		else{
			numDays = 28;
		}
	} 
	else {
		numDays = 30;
	}
	
	for(let i = 1; i <= numDays; i++){
		const option = document.createElement("option");
		option.textContent = i;
		daySelected.appendChild(option);
	}
}

populateDays(monthSelected.value);
populateYears();

yearSelected.onchange = function(){
	populateDays(monthSelected.value);
}

monthSelected.onchange = function(){
	populateDays(monthSelected.value);
}
