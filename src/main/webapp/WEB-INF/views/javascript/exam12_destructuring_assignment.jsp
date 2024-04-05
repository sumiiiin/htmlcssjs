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
			//객체 생성
			const board = {
				bno: 1,
				title: "오늘은 월요일",
				content: "날씨가 좋네요. 자바스크립트 공부해야겠어요.",
				writer: "홍길동"
			};
			//---------------------------------
			//var title = board.title;
			var {bno} = board;
			console.log("bno:", bno);
			console.log("");
			
			/* var title = board.title;
			var content = board.content; */
			var { title, content } = board;
			console.log("title:", title);
			console.log("content:", content);
			console.log("");
			//----------------------------------
			function fun1({title}) {
				console.log(title);
			}
			fun1(board);
			console.log("");
			//----------------------------------
			//...rest: 나머지 속성은 객체로 감싸서 만든다.
			var {writer, ...rest} = board;
			console.log(writer);
			console.log(rest);
			console.log("");
			//----------------------------------
			//...은 나머지 속성은 구조분해해서 그대로 넣어라
			var newBoard1 = {...board, bno:2, title:"벚꽃이 좋아요.", hitcount:1};
			console.log(newBoard1);
			//----------------------------------
			//리턴값이 객체일 경우에는 ()로 감싸야 한다.
			/* var newBoard2 = (obj) => {
				return ({...obj, hitcount:1}); 
			}; */
			var newBoard2 = obj => ({...obj, hitcount:1}); 
			console.log(newBoard2(board));
			
		</script>
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam12_destructuring_assignment</div>
			<div class="card-body">
				구조분해(destructuring) 할당(assignment)
			</div>
		</div>
	</body>
</html>