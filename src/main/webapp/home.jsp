<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TT+</title>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity=
"sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous">
</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
 
 <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap" rel="stylesheet">
 
 <style>
 
 .time{
 
		font-size: 4rem;
		font-weight: 500;
 }
 
 .grow-button:hover {
 
  		transform: scale(1.7);  
 }

.grow-button {
      
	     transition: transform 0.2s ease, background-color 0.2s ease;
    }
    
    
   
   .modal {
  display: none;
  position: fixed;
  z-index: 1;
  padding-top: 100px; 
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color:#161d25; 
  backdrop-filter: blur(10px);
}

.modal-content {
  position: relative;
  background-color: #fff;
  margin: auto;
  border: none;
  width: 30%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}


@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}

.modal-header {

  background-color: #fff;
  color: #161d25;
}
 
 </style>
 
</head>
<body>

<div style="background-color:#161d25; width:100%; min-height:100vh;">


	<div class = "mt-4" style = "width:40%; position:absolute; top:30%; left:30%; display:block;" id = "task">
	
		<h5 style = "color:#fff; font-weight:bold;">Give your task a name to begin tracking</h5><br>
		<!--form action = "user/storeDetails"-->
		<input class = "mx-auto" type="text" id = "vTask" style = " box-shadow: 0 8px 24px rgba(0, 0, 0, 0.5); border:none; outline:none; width:80%; height: 40px; border-radius:10px; background-color:#4a4f55; color:#fff; font-weight:bold;">
		<button class = "btn btn-transparent btn-lg text-light" onclick = "showTimer()"><i class="bi bi-arrow-right-circle text-secondary fs-2"></i></button>
		<!--/form-->
		
	</div>
		
		
	<div style = " box-shadow: 0 4px 30px rgba(0, 0, 0, 0.4);
	
	width:50%; height:22%; position:absolute; top:30%; left:30%; border-radius:10px; display:none;" id = "timer">
		
		
		<div class = "mt-4 row" style = "width:100%; height:100%; text-align:center; font-family: 'Roboto Mono', monospace;">
		
		
			<div class = "col" style = "color:#fff;">
			<h1 id = "htime" class = "time">00</h1>
			</div>
			
			<div class = "col" style = "color:#fff;">
			<h1 class = "time">:</h1>
			</div>
			
			<div class = "col" style = "color:#fff;">
			<h1 id = "mtime" class = "time">00</h1>
			</div>
			
			<div class = "col" style = "color:#fff;">
			<h1 class = "time">:</h1>
			</div>
			
			<div class = "col" style = "color:#fff;">
			<h1 id = "stime" class = "time">00</h1>
			</div>
			
			
		
		</div>
		
		<div style = "text-align:center;" class = "row">
		
			<div class = "col">
			
			<button class = "btn btn-lg grow-button " style = "background-color:transparent;" id = "start"><i class="bi bi-play-fill fs-4 text-light"></i></button>
			
			</div>
			
			<div class = "col">
			
			<button class = "btn btn-transparent btn-lg grow-button" id = "pause" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="bi bi-pause-fill fs-4 text-light"></i></button>
			
			</div>
			
			<div class = "col">
			
				<form action = "user/storeDetails">
				
				<input type = "hidden" name = "ftime" id = "ftime">
				<input type = "hidden" name = "taskName" id = "taskName">
				<input type = "hidden" name = "coffeeCount" id = "coffeeCount">
				<button class = "btn btn-transparent btn-lg grow-button" id = "stop"><i class="bi bi-stop-fill fs-4 text-light"></i></button>
				
				</form>
				
				<div id="myModal" class="modal">

  
					  <div class="modal-content" style="text-align:left; padding:10px 0px 10px 30px; color:#161d25;">
					    <div class="modal-header">
					      
					      <button class = "btn btn-transparent btn-lg grow-button" id = "count"><i class="bi bi-x-lg"></i></button>
					     
					      <h2 class = "mx-5">Select One</h2>
					      
					    </div>
					    <div>
					      
							<form name = "modalForm">
							  <input type="radio" id="coffeetime" name="pauseReason" value="coffeetime">
							  <label for="coffeetime">Coffee time</label><br>
							
							  <input type="radio" id="rest" name="pauseReason" value="rest">
							  <label for="rest">Rest</label><br>
							
							  <input type="radio" id="phonecall" name="pauseReason" value="phonecall">
							  <label for="phonecall">Phone Call</label><br>
							
							  <input type="radio" id="other" name="pauseReason" value="other">
							  <label for="other">Other</label>
							  
							</form>

							
			     
					    </div>
					  </div>
					
				</div>
				
		
		</div>
		
		</div>
		
			<br>
		
		<div>
		
			<a href = "user/myLogs" style = "text-decoration:none; color:#4a4f55;"><i class="bi bi-clipboard-data-fill"></i> My Logs </a>
		
		</div>
		
	
	</div>

</div>

<script src="script.js"></script>

 
</body>
</html>