<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- 그래프 - head 안에 넣기 --><script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
	</script>	 
<script type="text/javascript" src="resources/js/admin_product_graph.js?ver=1"></script>		
	
	  
	<table table class="table table-bordered">
      
      <div><p style="font-weight:bold; font-size:30px;'">판매상품 순위</p></div>

      <tbody>
     
        
   <form name="f" action="admin_graph_search.do" method="post" role="search" onsubmit="return check()" >
	<div class="row">
		<div class="col" align="center" style="padding: 10px 10px;" >
			<select id="dropdown-select" name="search" class="form-select" onchange="handleDropdownChange(this)" style="width: 500px;">
				<option value="product_name">상품명</option>
				<option value="product_code">상품코드</option>
			</select> <input class="form-control me-2" type="text" name="searchString" placeholder="검색할 상품을 입력하세요..." aria-label="Search" style="width: 500px;">
			<button type="submit" class="btn btn-dark">검색</button>
			<button type="reset" class="btn btn-dark">초기화</button>
	</form>

  

      </tbody>
    </table>

    <div class="row">
      <div class="col text-center">
        <button type="submit" class="btn btn-dark" style="border-radius: 1">검색</button>
      </div>
    </div>




    <div><p style="font-weight:bold; font-size:30px;'">통계 그래프</p></div>

<table class="table table-bordered">
	<tbody>
		<tr>
        
<td style="width: 50%;">
	<div class="container" style="width: 70%;">
		<canvas id="myChart2"></canvas>
			<script>
				  data = {
				        datasets: [{
				            backgroundColor: ['red','yellow','blue'],
				            data: [10, 20, 30]
				        }],       
				        // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
				        labels: ['red','yellow','blue'] 
				    };
				
				  // 가운데 구멍이 없는 파이형 차트
				  //var ctx1 = document.getElementById("myChart1");
				  //var myPieChart = new Chart(ctx1, {
				  //    type: 'pie',
				  //    data: data,
				  //    options: {}
				  //});
				  
				  
				  // 도넛형 차트
				  var ctx2 = document.getElementById("myChart2");
				  var myDoughnutChart = new Chart(ctx2, {
				      type: 'doughnut',
				      data: data,
				      options: {}
				  });
		  </script>

	</div>
</td>



<td style="width: 50%;">         
	<div class="container" style="width: 70%;">
		<canvas id="myChart3"></canvas>
	          <script>
				  data = {
				        datasets: [{
				            backgroundColor: ['red','yellow','blue'],
				            data: [10, 20, 30]
				        }],       
				        // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
				        labels: ['red','yellow','blue'] 
				    };
				
				  // 가운데 구멍이 없는 파이형 차트
				  //var ctx1 = document.getElementById("myChart1");
				  //var myPieChart = new Chart(ctx1, {
				  //    type: 'pie',
				  //    data: data,
				  //    options: {}
				  //});
				  
				  
				  // 도넛형 차트
				  var ctx2 = document.getElementById("myChart3");
				  var myDoughnutChart = new Chart(ctx2, {
				      type: 'doughnut',
				      data: data,
				      options: {
				    	  
				    	  
				    	  
				      }
				  });
				</script>

          

		        </div>
			</td>
		</tr>

	</tbody>
</table>




    <div><p style="font-weight:bold; font-size:30px;'">판매상품 순위 내역</p></div>

    <table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
      <thead>
        <tr>
          <th>순위</th>
          <th>상품코드</th>
          <th>상품명</th>
          <th>판매가</th>
          <th>재고</th>
          <th>환불수량</th>
          <th>판매수량</th>
          <th>판매합계</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>0</td>
          <td>0</td>
          <td>0</td>
          <td>0</td>
          <td>0</td>
          <td>0</td>
          <td>0</td>
          <td>0</td>
        </tr>
      </tbody>
    </table>
    
    
    
</body>
</html>