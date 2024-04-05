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
			function basic() {
				console.log("basic() 실행");
				//배열 생성
				const arr = ["Java", "JavaScript", "Vue.js"];
				//배열 항목 정보 읽기
				console.log("1인덱스값:", arr[1]);
				console.log("배열의 길이:", arr.length);
				//배열 항목 변경
				arr[2] = "Spring";
				//항목 반복 읽기(방법1)
				for(var i=0; i<arr.length; i++) {
					console.log(arr[i]);
				}
				//항목 반복 읽기(방법2)
				for(var item of arr) {
					console.log(item);
				}
			}
			
			function appendItem() {
				console.log("appendItem() 실행");
				//배열 생성
				const arr = ["java"];
				//맨뒤에 새항목 추가
				arr.push("html");
				arr.push("css");
				//항목 반복 읽기
				for(var item of arr) {
					console.log(item);
				}
			}
			
			function removeAndInsertItem() {
				console.log("baremoveAndInsertItemsic() 실행");
				//배열 생성
				var arr = ["Banana", "Orange", "Apple", "Mango"];
				
				//항목 삭제(자바스크립 배열은 자바의 리스트와 비슷)
				//항목을 삭제할 경우 뒤에 인덱스의 값이 앞으로 당겨옴
				arr.splice(2, 1); //2인덱스부터 1개를 삭제
				console.log(arr);
				
				//항목 삽입
				arr = ["Banana", "Orange", "Apple", "Mango"];
				arr.splice(2, 0, "Lemon", "Kiwi"); //2인덱스부터 0개를 삭제하고, 세번째값 이후를 삽입
				console.log(arr);
				
				//항목 대체
				arr = ["Banana", "Orange", "Apple", "Mango"];
				arr.splice(2, 2, "Lemon", "Kiwi"); //2인덱스부터 2개를 삭제하고, 세번재 이후를 삽입
				console.log(arr);
			}
			
			function concatArray() {
				const arr1 = ["Banana", "Orange"];
				const arr2 = ["Apple", "Mango"];
				const arr3 = arr1.concat(arr2);
				console.log(arr1);
				console.log(arr2);
				console.log(arr3);
			}
			
			function filterItem() {
				const arr = [
			        { bno: 1, title: "제목1", writer: "홍길동" },
			        { bno: 2, title: "제목2", writer: "홍길서" },
			        { bno: 3, title: "제목3", writer: "홍길남" },
			        { bno: 4, title: "제목4", writer: "홍길서" },
			        { bno: 5, title: "제목5", writer: "홍길북" }
				];
				
				const newArr = arr.filter( item => item.writer === "홍길서" );
				console.log(newArr);
				
				const newArr2 = arr.filter( item => item.bno % 2 === 1 );
				console.log(newArr2);
			}
			
			function findItem() {
				const arr = [
			        { bno: 1, title: "제목1", writer: "홍길동" },
			        { bno: 2, title: "제목2", writer: "홍길서" },
			        { bno: 3, title: "제목3", writer: "홍길남" },
			        { bno: 4, title: "제목4", writer: "홍길서" },
			        { bno: 5, title: "제목5", writer: "홍길북" }
				];
				
				//bno가 3인 게시물 찾기
				const board = arr.find(item => item.bno === 3);
				console.log(board);
				
				//writer가 홍길남인 게시물 찾기
				const board2 = arr.find(item => item.writer === "홍길남");
				console.log(board2);
			}
			
			function handleEachItem() {
				const arr = [
			        { bno: 1, title: "제목1", writer: "홍길동" },
			        { bno: 2, title: "제목2", writer: "홍길서" },
			        { bno: 3, title: "제목3", writer: "홍길남" },
			        { bno: 4, title: "제목4", writer: "홍길서" },
			        { bno: 5, title: "제목5", writer: "홍길북" }
				];
				
				//for: index 이용
				for(var i=0; i<arr.length; i++) {
					console.log(arr[i]);
				}
				
				//for: of 이용
				for(var item of arr) {
					console.log(item);
				}
				
				//배열의 forEach() 메소드 이용
				arr.forEach(item => {
					console.log(item); 
					console.log(item.bno, item.title, item.writer);
				});
			}
			
			function mapItem() {
				const arr = [
			        { bno: 1, title: "제목1", writer: "홍길동" },
			        { bno: 2, title: "제목2", writer: "홍길서" },
			        { bno: 3, title: "제목3", writer: "홍길남" },
			        { bno: 4, title: "제목4", writer: "홍길서" },
			        { bno: 5, title: "제목5", writer: "홍길북" }
				];
				
				//제목으로 구성된 새로운 배열 얻기
				const titles = arr.map( item => item.title );
				console.log(titles);
				
				//게시물번호로 구성된 새로운 배열 얻기
				const bnoArr = arr.map( item => item.bno );
				console.log(bnoArr);
				
				//항목에 날짜 속성(date:"2024.4.2")을 추가한 새로운 항목 배열을 얻기
				const newArr = arr.map( item => {
					var now = new Date();
					var strDate = now.getFullYear() + "." + (now.getMonth()+1) + "." + now.getDate();
					return {...item, date: strDate};
				});
				console.log(newArr);
			}
			
			function sortItem() {
				/* const fruits = ["Banana", "Orange", "Apple", "Mango"];
				//올림차순으로 정렬
				fruits.sort();
				console.log(fruits);
				//내림차순으로 정렬(sort()를 한 후에 실행)
				fruits.reverse();
				console.log(fruits); */
				
				const arr = [
			        { bno: 2, title: "제목1", writer: "홍길동" },
			        { bno: 4, title: "제목2", writer: "홍길서" },
			        { bno: 3, title: "제목3", writer: "홍길남" },
			        { bno: 5, title: "제목4", writer: "홍길서" },
			        { bno: 1, title: "제목5", writer: "홍길북" }
				];
				
				//bno 기준으로 올림차순하기
				//arr.sort( (item1, item2) => item1.bno - item2.bno);
				//console.log(arr); //출력은 비동기로 출력하기 때문에 하나씩 주석 처리하면서 실행
				
				//bno 기준으로 내림차순하기
				arr.sort( (item1, item2) => -(item1.bno - item2.bno));
				console.log(arr);
				
				//title 기준으로 내림차순정렬
				/* arr.sort( (item1, item2) => {
					if(item1.title < item2.title) {
						return 1;
					} else if(item1.title === item2.title) {
						return 0;
					} else {
						return -1;
					}
				});
				console.log(arr); */
			}
		</script>
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam21_array</div>
			<div class="card-body">
				<p><button onclick="basic()" class="btn btn-info btn-sm">기본</button></p>
				<p><button onclick="appendItem()" class="btn btn-info btn-sm">새 항목 추가</button></p>
				<p><button onclick="removeAndInsertItem()" class="btn btn-info btn-sm">항목 제거 및 삽입</button></p>
				
				<p><button onclick="concatArray()" class="btn btn-info btn-sm">배열 합쳐서 새로운 배열 생성</button></p>
				<p><button onclick="filterItem()" class="btn btn-info btn-sm">필터링 후 새로운 배열 생성</button></p>
				
				<p><button onclick="findItem()" class="btn btn-info btn-sm">항목 찾기</button></p>
				
				<p><button onclick="handleEachItem()" class="btn btn-info btn-sm">항목 일괄처리(반복처리)</button></p>
				
				<p><button onclick="mapItem()" class="btn btn-info btn-sm">항목을 변환하고 새로운 배열 생성</button></p>
				
				<p><button onclick="sortItem()" class="btn btn-info btn-sm">항목 정렬</button></p>
				
			</div>
		</div>
	</body>
</html>







