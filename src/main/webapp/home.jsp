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
 
 <script src="script.js"></script>
 
</head>
<body style="background-color:#242041;">
<!-- #242041  #484767 -->

<div class = "text-light text-md-center mt-2" style = "display: none;">
<h3>TT+</h3>
<h6>Track Time, Plus Productivity</h6>
</div>

<div class = "mx-auto p-3 container text-light"  style = "width:40%; border-radius:10px; margin-top:10%; display: block;
" id = "uName">

<h5>Hi there! What’s your name?</h5>
<input class = "mx-auto" type="text" id="" style = "border:none; outline:none; width:80%; height: 40px; border-radius:10px; background-color:#393653;">
<button class = "btn btn-transparent btn-lg" style = "color:white" onclick = "showTaskName()"><i class="bi bi-arrow-right-circle"></i></button>

</div>

<div class = "mx-auto p-3 container text-light"  style = "width:40%; border-radius:10px; margin-top:10%; display: none;" id = "task">

<h5>Give your task a name to begin tracking</h5>
<input class = "mx-auto" type="text" style = "border:none; outline:none; width:80%; height: 40px; border-radius:10px; background-color:#393653;">
<button class = "btn btn-transparent btn-lg text-light" onclick = "showTimer()"><i class="bi bi-arrow-right-circle"></i></button>

</div>


<div class = "bg-light bg-opacity-10 mx-auto p-3 container"  style = "width:40%; border-radius:10px; margin-top:10%; display: none;" id = "timer">

<div class = "text-light fs-6">
<p>17 th Tuesday 2025</p>

</div>

<!--div class="bg-body-tertiary p-2" style="--bs-bg-opacity: .25;"-->
<div class="text-light text-sm-center">

<h1>00.00.00</h1>
<br>
<span><button class = "btn btn-lg" style = "background-color:transparent;" id = "start"><i class="bi bi-play"></i></button></span>
<button class = "btn btn-transparent btn-lg" id = "pause"><i class="bi bi-pause-fill"></i></button>
<button class = "btn btn-transparent btn-lg" id = "stop"><i class="bi bi-stop-fill"></i></button>


</div>

<div class = "text-light fs-6">
<hr>
<p></p>
</div>

</div>

</body>
</html>