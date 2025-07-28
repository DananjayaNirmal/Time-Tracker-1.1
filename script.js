if (!window.timerScriptLoaded) {
    window.timerScriptLoaded = true;

	let interval = null;
	let timeInSec = 0;
	let TaskName = '';

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

	let startBtn = document.getElementById("start");
	let pauseBtn = document.getElementById("pause");
	let stopBtn = document.getElementById("stop");

	let modal = document.getElementById("myModal");
	let closeBtn = document.getElementById("count");

	startBtn.addEventListener("click", startTimer); 
	pauseBtn.addEventListener("click", pauseTimer);
	//stopBtn.addEventListener("click", stopTimer);
	stopBtn.addEventListener("click", function(e) {
		stopTimer(e);
	});


	function showTimer() {
		
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
		
		convertTime();
		
		const { hours, minutes, seconds } = convertTime();
		
		timeElementHrs.innerText = `${hours}`;
		timeElementMin.innerText = `${minutes}`;
		timeElementSec.innerText = `${seconds}`;

	}

	function convertTime(){
		
			let hours = Math.floor(timeInSec / 3600);
			let minutes = Math.floor((timeInSec - (hours * 3600)) / 60);
			let seconds = timeInSec % 60;
			
			if (hours < 10) hours = '0' + hours;
			if (minutes < 10) minutes = '0' + minutes;
			if (seconds < 10) seconds = '0' + seconds;
			
			return { hours, minutes, seconds };
			
			
	}

	function startTimer(){
		
		if (interval) {
			        return;
			    }
		interval = setInterval(timer, 1000);
		
	}

	function pauseTimer(){
		
		clearInterval(interval);
		interval = null;
		
	}


	function stopTimer(event){
		
		event.preventDefault();
		const { hours, minutes, seconds } = convertTime();
		console.log(`${hours}:${minutes}:${seconds}`);
		finalTime.value = `${hours}:${minutes}:${seconds}`;
		console.log(finalTime.value);

		const TaskName = sessionStorage.getItem("TaskName");
		
		taskName.value = TaskName;
		
		clearInterval(interval);
		interval = null;
		timeInSec = 0;
		sessionStorage.clear();
	}

}
