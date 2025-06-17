let interval = null;
let milliSec = 0;

let nameDiv = document.getElementById("uName");
let taskDiv = document.getElementById("task");
let timerDiv = document.getElementById("timer");
let timeElement = document.getElementById("time");

let nameElement = document.getElementById("vName");
let taskElement = document.getElementById("vTask");

let startBtn = document.getElementById("start");
let pauseBtn = document.getElementById("pause");
let stopBtn = document.getElementById("stop");

function showTaskName() {
	
	//check user name is null before showing "Enter Task Name field"
	if(nameElement.value.trim() === ""){
		
		nameElement.placeholder = "Please enter your name";
		return;
		
	}
	
  nameDiv.style.display = "none";
  taskDiv.style.display = "block";
}

function showTimer() {
	
	//check task name is null before showing the timer
	if(taskElement.value.trim() === ""){
			
			taskElement.placeholder = "This cannot be empty";
			return;
			
		}
	
  taskDiv.style.display = "none";
  timerDiv.style.display = "block";
}

function timer(){
	
	milliSec++;
	
	let hours = Math.floor(milliSec / 3600);
	let minutes = Math.floor((milliSec - (hours * 3600)) / 60);
	let seconds = milliSec % 60;
	
	if (hours < 10) hours = '0' + hours;
	if (minutes < 10) minutes = '0' + minutes;
	if (seconds < 10) seconds = '0' + seconds;
	
	timeElement.innerText = `${hours}:${minutes}:${seconds}`;
	//console.log("dana");

}

startBtn.addEventListener("click", startTimer); 
pauseBtn.addEventListener("click", pauseTimer);
stopBtn.addEventListener("click", stopTimer);

function startTimer(){
	if(interval) return;
	
	interval = setInterval(timer, 1000);
	//console.log("dana dana");

	
}

function pauseTimer(){
	
	clearInterval(interval);
	interval = null;
	
}

function stopTimer(){
	
	pauseTimer();
	milliSec = 0;
	
}

