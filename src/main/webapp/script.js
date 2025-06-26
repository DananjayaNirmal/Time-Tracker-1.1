
let interval = null;
let timeInSec = 0;
let TaskName = '';
//let coffeeCount = sessionStorage.getItem('coffeeCount') || 0;
//let coffeeCount = parseInt(sessionStorage.getItem('coffeeCount')) || 0;

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
//let closeBtn = document.getElementById("selectedOption");

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
	
	//check task name is null before showing the timer
	if(taskElement.value.trim() === ""){
			
			taskElement.placeholder = "This cannot be empty";
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
	//console.log("dana");

}

startBtn.addEventListener("click", startTimer); 
pauseBtn.addEventListener("click", pauseTimer);
stopBtn.addEventListener("click", stopTimer);
//closeBtn.addEventListener("click", findCoffeeCount);

//document.getElementById("count").addEventListener("click", closeModal);

function startTimer(){
	
	interval = setInterval(timer, 1000);
	//console.log("dana dana, checking start btn is working?");
	
}

function pauseTimer(){
	
	clearInterval(interval);
	showModal();
	//console.log(coffeeCount);
}

function showModal(){
	
	modal.style.display = "block";
		
}

/*function closeModal(){
	
	modal.style.display = "block";
		
}*/
closeBtn.addEventListener("click", function() {
    modal.style.display = "none";
    clickCounter();
});

/*function findCoffeeCount(){
	
	const selectedReason = document.querySelector('input[name="pauseReason"]:checked');
		if (selectedReason && selectedReason.value === "coffeetime") {
			coffeeCount++;
			sessionStorage.setItem('coffeeCount', coffeeCount);
			console.log("Coffee count increased:", coffeeCount);
		} else {
			console.log("fail to cal");
		}
		
		//closeModal();
}*/

/*function closeModal(){
	
	document.getElementById('selectedOption').addEventListener('click', function () {
	const modal = bootstrap.Modal.getInstance(document.getElementById('exampleModal'));
	modal.hide();
	});
	
}*/

/*function getCoffeeCount(){
	
	coffeetime = sessionStorage.setItem("TaskName", TaskName);
	console.log(sessionStorage.getItem("TaskName"));
		
	
}*/

function stopTimer(){
	
	pauseTimer();
	//sendDetails();
	//console.log("::" + interval);
	finalTime.value = timeInSec;
	
	//There are two variables, "TaskName"" and "taskName"
	//taskName is declared in line 15, TaskName is declared in line 4
	const TaskName = sessionStorage.getItem("TaskName");
	const CoffeeCount = sessionStorage.clickcount;
	
	taskName.value = TaskName;
	coffeeCount.value = CoffeeCount;
	
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

/*let closeBtn = document.getElementById("count");*/
/*closeModal.addEventListener("click", clickCounter);*/

function clickCounter() {
	
  const pauseReason = document.forms["modalForm"]["pauseReason"].value;	
  console.log("pause reason" + pauseReason);
  if(pauseReason === "coffeetime"){
	console.log("pause reason is " + pauseReason);
	if (sessionStorage.clickcount) {
	    sessionStorage.clickcount = Number(sessionStorage.clickcount) + 1;
	  } else {
	    sessionStorage.clickcount = 1;
	    }
	
  } else{
	
	console.log("not selected 'coffe count' option");	
	
  }
  
  console.log("coffee count is" +sessionStorage.clickcount);
	
  /*if (sessionStorage.clickcount) {
    sessionStorage.clickcount = Number(sessionStorage.clickcount) + 1;
  } else {
    sessionStorage.clickcount = 1;
    }
  console.log(sessionStorage.clickcount);*/
}

