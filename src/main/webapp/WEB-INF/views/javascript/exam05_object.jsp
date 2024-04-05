<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>	
	
		<script type="text/javascript">
			var var1 = 3;			//number
			let var2 = "abc";		//string
			const var3 = () => {}; 	//fuction
			var var4 = {};  		//object
			var var5 = [];			//object(배열)
			console.log("var1의 타입:", typeof(var1));
			console.log("var2의 타입:", typeof(var2));
			console.log("var3의 타입:", typeof(var3));
			console.log("var4의 타입:", typeof(var4));
			console.log("var5의 타입:", typeof(var5));
			console.log("");
			
			//객체 생성 및 속성 정의 ----------------------
			var car = {
				//필드(속성)
				company: "현대자동차",
				name: "그랜저",
				price: 50000000,
				//메소드
			};
			//필드(속성)값 읽기
			console.log(car.company);
			console.log(car.name);
			console.log(car.price);
			console.log(car["company"]);
			console.log(car["name"]);
			console.log(car["price"]);
			console.log("");
			//필드(속성)값 변경
			car.company = "포르쉐";
			car["name"] = "911";
			console.log(car.company);
			console.log(car["name"]);
			console.log("");
			
			//객체의 메소드 정의 ----------------------
			car = {
				//필드(속성)
				company: "현대자동차",
				name: "그랜저",
				price: 50000000,
				speed: 0,
				
				//메소드
				/* run: function() {
					this.setSpeed(60);
					console.log(this.company + "의 " + 
							    this.name + "가 " +
							    this.speed + "로 달립니다.");
				}, */
				
				run() {
					this.setSpeed(60);
					console.log(this.company + "의 " + 
							    this.name + "가 " +
							    this.speed + "로 달립니다.");
				},
				
				/* setSpeed: function(speed) {
					this.speed = speed;
				}, */
				
				setSpeed(speed) {
					this.speed = speed;
				},
				
				/* toString: function() {
					return this.company + "-" + this.name;
				}, */
				
				toString() {
					return this.company + "-" + this.name;
				},
				
				sound1() {
					console.log(this.name + " 빵빵");
				}
				
				sound2: () => {
					//화살표 함수는 this가 객체 자신이 아니라, window 객체를 참조
					//그렇기 때문에 this를 사용하는 코드를 작성하면 안됨
					console.log("빵빵");
				}
			};
			
			//메소드 호출
			car.run();
			var info = car.toString();
			console.log("info:", info);
			car.sound1();
			car.sound2();
		</script>
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam05_object</div>
			<div class="card-body">
				content
			</div>
		</div>
	</body>
</html>