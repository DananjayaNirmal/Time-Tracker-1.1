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
 
 </style>
 
</head>
<body>

<!--div style="background:linear-gradient(#08001f, #30197d); width:100%; min-height:100vh;"-->
<div style="background:linear-gradient(70deg, #dbeafe, #ffffff); width:100%; min-height:100vh;">


	<div class = "mt-4" style = "width:40%; position:absolute; top:30%; left:30%; display:block;" id = "task">
	
		<h5 style = "color: #15317E;">Give your task a name to begin tracking</h5><br>
		<input class = "mx-auto" type="text" id = "vTask" style = " box-shadow: 0 4px 8px rgba(21, 48, 125, 0.4); border:none; outline:none; width:80%; height: 40px; border-radius:10px; background-color:#fff; color:#15317E;">
		<button class = "btn btn-transparent btn-lg text-light" onclick = "showTimer()"><i class="bi bi-arrow-right-circle text-secondary"></i></button>
		
	</div>
		
		
	<div style = "box-shadow: 0 4px 8px rgba(21, 48, 125, 0.4); width:50%; height:22%; position:absolute;
	              top:30%; left:30%; background-color:#fff; border-radius:10px; display:none;" id = "timer">
		
		
		<div class = "mt-4 row" style = "width:100%; height:100%; text-align:center; font-family: 'Roboto Mono', monospace;">
		
		
			<div class = "col" style = "color:#15317E;">
			<h1 id = "htime" class = "time">00</h1>
			</div>
			
			<div class = "col" style = "color:#15317E;">
			<h1 class = "time">:</h1>
			</div>
			
			<div class = "col" style = "color:#15317E;">
			<h1 id = "mtime" class = "time">00</h1>
			</div>
			
			<div class = "col" style = "color:#15317E;">
			<h1 class = "time">:</h1>
			</div>
			
			<div class = "col" style = "color:#15317E;">
			<h1 id = "stime" class = "time">00</h1>
			</div>
			
			
		
		</div>
		
		<div style = "text-align:center;" class = "row">
		
			<div class = "col">
			
			<button class = "btn btn-lg" style = "background-color:transparent;" id = "start"><i class="bi bi-play-fill fs-4"></i></button>
			
			</div>
			
			<div class = "col">
			
			<button class = "btn btn-transparent btn-lg" id = "pause"><i class="bi bi-pause-fill fs-4"></i></button>
			
			</div>
			
			<div class = "col">
			
				<form action = "user/storeDetails">
				
				<input type = "hidden" name = "ftime" id = "ftime">
				<button class = "btn btn-transparent btn-lg" id = "stop"><i class="bi bi-stop-fill fs-4"></i></button>
				
				</form>
		
		</div>
		
		</div>
		
			<br>
		
		<div>
		
			<a href = "user/myLogs" style = "text-decoration:none; color:#15317E;"><i class="bi bi-clipboard-data-fill"></i> My Logs </a>
		
		</div>
		
	
	</div>

</div>

<script src="script.js"></script>
 
</body>
</html>