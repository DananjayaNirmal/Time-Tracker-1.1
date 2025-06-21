
let interval = null;
let timeInSec = 0;

let nameDiv = document.getElementById("uName");
let taskDiv = document.getElementById("task");
let timerDiv = document.getElementById("timer");
let timeElementHrs = document.getElementById("htime");
let timeElementMin = document.getElementById("mtime");
let timeElementSec = document.getElementById("stime");
let finalTime = document.getElementById("ftime");

let nameElement = document.getElementById("vName");
let taskElement = document.getElementById("vTask");

let startBtn = document.getElementById("start");
let pauseBtn = document.getElementById("pause");
let stopBtn = document.getElementById("stop");

/*function showTaskName() {
	
	//check user name is null before showing "Enter Task Name field"
	if(nameElement.value.trim() === ""){
		
		nameElement.placeholder = "Please enter your name";
		return;
		
	}
	
  nameDiv.style.displa- = "none";
  taskDiv.style.display = "block";
}*/


function showTimer() {
	console.log("error_21_6");
	//check task name is null before showing the timer
	if(taskElement.value.trim() === ""){
			
			taskElement.placeholder = "This cannot be empty";
			return;
			
		}
				
  taskDiv.style.display = "none";
  timerDiv.style.display = "block";
}

function timer(){
	
	timeInSec++;
	
	let hours = Math.floor(timeInSec / 3600);
	let minutes = Math.floor((timeInSec - (hours * 3600)) / 60);
	let seconds = timeInSec % 60;
	
	if (hours < 10) hours = '0' + hours;
	if (minutes < 10) minutes = '0' + minutes;
	if (seconds < 10) seconds = '0' + seconds;
	
	
	timeElementHrs.innerText = `${hours}`;
	timeElementMin.innerText = `${minutes}`;
	timeElementSec.innerText = `${seconds}`;
	//console.log("dana");

}

startBtn.addEventListener("click", startTimer); 
pauseBtn.addEventListener("click", pauseTimer);
stopBtn.addEventListener("click", stopTimer);

function startTimer(){
	
	interval = setInterval(timer, 1000);
	//console.log("dana dana, checking start btn is working?");
	
}

function pauseTimer(){
	
	clearInterval(interval);
	
}

function stopTimer(){
	
	pauseTimer();
	
	//sendDetails();
	console.log("::" + interval);
	finalTime.value = timeInSec;
	timeInSec = 0;
}

/*function sendDetails() {
    fetch("/myLogs", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: "myParam=" + encodeURIComponent(interval)
    })
    .then(response => response.text())
    .then(data => {
        console.log("Response from servlet:", data);
    });
}*/

