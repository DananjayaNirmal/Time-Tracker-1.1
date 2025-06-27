
let interval = null;
let timeInSec = 0;
let TaskName = '';
//let CoffeeCount = 0;

let nameDiv = document.getElementById("uName");
let taskDiv = document.getElementById("task");
let timerDiv = document.getElementById("timer");
let timeElementHrs = document.getElementById("htime");
let timeElementMin = document.getElementById("mtime");
let timeElementSec = document.getElementById("stime");
let finalTime = document.getElementById("ftime");

let nameElement = document.getElementById("vName");
let taskElement = document.getElementById("vTask");
let taskName = document.getElementById("taskName");
let coffeeCount = document.getElementById("coffeeCount");

let startBtn = document.getElementById("start");
let pauseBtn = document.getElementById("pause");
let stopBtn = document.getElementById("stop");

let modal = document.getElementById("myModal");
let closeBtn = document.getElementById("count");


function showTimer() {
	
	//check task name is null before showing the timer
	if(taskElement.value.trim() === ""){
			
			taskElement.placeholder = "This cannot be empty";
			return;
			
		}
	
	 const taskName = taskElement.value;			
	 if(taskName.length <= 3 || taskName.length >= 50){
					
			 taskElement.placeholder = "Task Name is too long or too short";
			 taskElement.value = "";
			 return;
					
	    }	
		
	 storeTaskName(taskElement.value);	
	 			
	 taskDiv.style.display = "none";
	 timerDiv.style.display = "block";
}

function storeTaskName(TaskName){
	
	TaskName = sessionStorage.setItem("TaskName", TaskName);
	console.log(sessionStorage.getItem("TaskName"));
	
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

}

startBtn.addEventListener("click", startTimer); 
pauseBtn.addEventListener("click", pauseTimer);
stopBtn.addEventListener("click", stopTimer);

function startTimer(){
	
	interval = setInterval(timer, 1000);
	//console.log("checking start btn is working?");
	
}

function pauseTimer(){
	
	clearInterval(interval);
	showModal();
	//console.log(coffeeCount);
}

function showModal(){
	
	modal.style.display = "block";
		
}

closeBtn.addEventListener("click", function() {
    modal.style.display = "none";
    clickCounter();
});

function stopTimer(){
	
	//pauseTimer();
	finalTime.value = timeInSec;
	
	//There are two variables, "TaskName"" and "taskName"
	//taskName is declared in line 15, TaskName is declared in line 4
	const TaskName = sessionStorage.getItem("TaskName");
	const CoffeeCount = sessionStorage.clickcount;
	
	taskName.value = TaskName;
	coffeeCount.value = CoffeeCount;
	
	timeInSec = 0;
}

function clickCounter() {
	
  const pauseReason = document.forms["modalForm"]["pauseReason"].value;	
  //console.log("pause reason" + pauseReason);
  if(pauseReason === "coffeetime"){
	//console.log("pause reason is " + pauseReason);
	if (sessionStorage.clickcount) {
	    sessionStorage.clickcount = Number(sessionStorage.clickcount) + 1;
	  } else {
	    sessionStorage.clickcount = 1;
	    }
	
  } else{
	
	console.log("not selected 'coffe count' option");	
	
  }
  
  console.log("coffee count is" +sessionStorage.clickcount);
	
}

