<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
            background-color:#4a4f55;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.5);

        }
        
    </style>
 

</head>
<body style = "background-color:#fff;">

<main class = "">
	<div style = "background-color:#161d25; min-height: 600px; margin:45px 45px 45px 45px; border-radius:10px;">
	
		<div>
		
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" style = "background-color:#161d25;" aria-current="page" href="../home.jsp"><i class="bi bi-x-lg text-light"></i></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style = "color:#fff;">My Logs</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style = "color:#fff;">Settings</a>
			  </li>
			  
			</ul>
			
		</div>
	
					<div class = "row">
			
						<div class = "col"  style = "margin:50px; color:#fff;">
						
						<h1>TT <i class="bi bi-plus"></i></h1>
						<h6>Track time, Boost productivity</h6>
						
						</div>
				
					<div class = "col">
					
						<div style = "margin:10px; font-weight: bold;">
							<h5 style = "font-weight: bold; color:#fff;">All Tasks</h5>
						</div>
						
						<c:forEach var="tasklist" items="${tasklist}"> 
	
	    				<div class="taskBox">
	        
	         			<h6 style = "color:#fff;"><c:out value="${tasklist.taskName}"></c:out></h6>
	         			
	         			
	            		<h6 style = "color:#fff;">Time duration: <c:out value="${tasklist.timeDuration }"></c:out></h6>
			            <h6 style = "color:#161d25;">Date : <c:out value="${tasklist.date }"></c:out></h6>
			            <h6 style = "display: none;">id : <c:out value="${tasklist.id}"></c:out></h6>
			                 
						<a href="deleteTask?id=<c:out value='${tasklist.id}'/>" style = "text-decoration:none;"> <i class="bi bi-trash-fill text-danger"></i></a>
			                
	            
	    				</div>
	    
	    				</c:forEach>
					
					</div>
				
			</div>
	
	</div>
</main>


</body>
</html>