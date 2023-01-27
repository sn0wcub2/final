
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
<title>일코노미</title>
 

</head>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<body>
 <!-- Nav-->
        	<c:import url="/WEB-INF/views/layoutbh/top.jsp" />
        	<c:import url="/WEB-INF/views/layoutbh/head.jsp" />
        	
        <!--header-->
        <header class="p-5 mb-4 bg-dark ">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">일코노미 세탁</h1>
                    <p class="lead fw-normal text-white-50 mb-0">세탁 대행 서비스</p>
                </div>
            </div>
        </header>

        <div class="container py-4">
          <div class="row align-items-md-stretch">
              <div class="col-md-4 ">
                <div class="p-5 mx-5 my-5 text-bg-dark rounded-3 ">
                  <h2>생활빨래1</h2>
                  <p>5kg~10kg</p>
                  <a class="btn btn-outline-light" type="button" href="5kg~10kg">7000p</a>
                  </div>
                </div>
              <div class="col-md-4">
                <div class="p-5 mx-5 my-5 text-bg-dark rounded-3">
                  <h2>생활빨래2</h2>
                  <p>10kg~20kg</p>
                  <a class="btn btn-outline-light -" type="button" href="10kg~20kg">12000p</a>
                  </div>
                </div>
              <div class="col-md-4">
                <div class="p-5 mx-5 my-5 text-bg-dark rounded-3">
                  <h2>침구류</h2>
                  <p>토퍼,이불</p>
                  <p>매트리스 커버</p>
                  <a class="btn btn-outline-light" type="button" href="bedding">10000p</a>
                </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

<!--          <div class="container py-4">
            <div id="carousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="images/main1.PNG" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="images/main2.PNG" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="images/main3.PNG" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
        </div>-->
        
        <footer class="py-5 bg-dark">
        <c:import url="/WEB-INF/views/layoutbh/bottom.jsp" />
        <div class="container"><p class="m-0 text-center text-white">4조</p></div>
        </footer>
</body>
</html>