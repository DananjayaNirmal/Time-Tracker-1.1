function showTaskName() {
  document.getElementById("uName").style.display = "none";
  document.getElementById("task").style.display = "block";
}

function showTimer() {
  document.getElementById("task").style.display = "none";
  document.getElementById("timer").style.display = "block";
}

let interval = null;
let milliSec = 0;

function timer(){
	
	
	milliSec++;
	
	let hours = Math.floor(milliSec / 3600);
	let minutes = Math.floor((milliSec - (hours * 3600)) / 60);
	let seconds = milliSec % 60;
	
	if (hours < 10) hours = '0' + hours;
	if (minutes < 10) minutes = '0' + minutes;
	if (seconds < 10) seconds = '0' + seconds;
	
	document.getElementById("time").innerText = `${hours}:${minutes}:${seconds}`;
	//console.log("dana");

	
}


document.getElementById("start").addEventListener("click", startTimer); 
document.getElementById("pause").addEventListener("click", pauseTimer);
document.getElementById("stop").addEventListener("click", stopTimer);

function startTimer(){
	if(interval) return;
	
	interval = setInterval(timer, 1000);
	console.log("Hello bro");

	
}

function pauseTimer(){
	
	clearInterval(interval);
	interval = null;
	
}

function stopTimer(){
	
	pauseTimer();
	milliSec = 0;
	
}

