<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Logs</title>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity=
"sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous">
</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
 
  <style>
        
        .taskBox {
            width: 80%;
            margin-top:10px;
            margin-bottom:10px;
            background:#background:linear-gradient(70deg, #dbeafe, #ffffff);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(21, 48, 125, 0.4);
        }
        
    </style>
 

</head>
<body style = "background-color:#dbeafe;">

<main class = "">
	<div style = "background-color:#fff; min-height: 600px; margin:45px 45px 45px 45px; border-radius:10px;">
	
		<div>
		
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="#"><i class="bi bi-x-lg"></i></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style = "color:#15307d;">My Logs</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style = "color:#15307d;">Settings</a>
			  </li>
			  
			</ul>
			
		</div>
	
					<div class = "row">
			
						<div class = "col"  style = "margin:50px; color:#15307d;">
						
						<h1 style = "font-weight: bold;">TT+</h1>
						<h6>Track Time, Plus Productivity</h6>
				
					</div>
				
					<div class = "col">
					
						<div style = "margin:10px; font-weight: bold;">
							<h5 style = "font-weight: bold; color:#15307d;">All Tasks</h5>
						</div>
						
						<c:forEach var="tasklist" items="${tasklist}"> 
	
	    				<div class="taskBox">
	        
	         
	            		<h4 style = "color:#106cff;"><c:out value="${tasklist.timeDuration }"></c:out></h4>
			            <p>task name : <c:out value="${tasklist.id }"></c:out></p>
			            <p>duration : <c:out value="${tasklist.coffeeCount }"></c:out></p>
			            <p>date : <c:out value="${tasklist.date}"></c:out></p>
			                 
						<a href="deleteTask?id=<c:out value='${tasklist.id}'/>" style = "color:red; text-decoration:none;"> Delete </a>
			                
	            
	    				</div>
	    
	    				</c:forEach>
					
					</div>
				
			</div>
	
	</div>
</main>


</body>
</html>