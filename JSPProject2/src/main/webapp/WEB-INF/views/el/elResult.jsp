<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- Person import --%>
<%-- <%@ page import="edu.kh.jsp.model.vo.Person" %> --%>
<!-- ctrl + shift + / == jsp주석 -->
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    
    <h3>EL을 이용해서 출력하기</h3>
    
    <h3>파라미터</h3>
    <pre>
    	EL로 request에 세팅된 파라미터를 얻어오는 방법
    	\${param.name 속성값}
    	
    	+ 데이터 파싱(String->int)도 자동으로 된다
    </pre>
    
    이름 : ${param.inputName} <br>
    나이 : ${param.inputAge} <br>
   	주소 : ${param.inputAddress} <br>
   	
    <h4>추가 세팅된 값</h4>
    <pre>
    
    	\${ 세팅한 key 값 }
    	1) request에 추가 세팅된 값을 얻어올 때
    	별도의 다운 캐스팅이 필요 없음!
    	
    	2) import 구문도 생략
    	
    	3) 객체에 저장된 값을 얻어올 때 getter를 호출하는데
    		get필드명()이 아닌 필드명만 작성하면 된다
    		

    </pre>
    
    메세지 : ${ message } <br>
    
    person의 name : ${person.name } <br>
    person의 age : ${person.age } <br>
    person의 address : ${person.address } <br>
    
    person.toString() : ${person }
    
    <hr>
    
    
    
    <h3>스크립틀릿, 표현식을 이용해서 값 출력하기</h3>
   <%-- <%
    	// 파라미터 얻어오기
    	String inputName = request.getParameter("inputName");
    	int inputAge = Integer.parseInt(request.getParameter("inputAge"));
    	String inputAddress = request.getParameter("inputAddress");
    
    	// 추가 세팅된 값 얻어오기
    	String message = (String)request.getAttribute("message");
    	Person person = (Person)request.getAttribute("person");
    %> --%>
    
    <h4>파라미터</h4>
    <%--
    이름 : <%=inputName %> <br>
    나이 : <%=inputAge %> <br>
    주소 : <%=inputAddress %> 
    
    <h4>추가 세팅된 값</h4>
    메세지 : <%=message %> <br><br>
    
    person의 name : <%= person.getName() %> <br>
    person의 age : <%= person.getAge() %> <br>
    person의 address : <%= person.getAddress() %>
    --%>


    <hr>

    <h3>EL에서null과 '비어있다'에 대한 처리 방법</h3>
    <%-- null : 참조X -> 빈칸
        '비어있다' : 객체는 존재하지만 내용(요소)이 없다 --%>

    <h4>empty : 비어있거나 null인지를 검사하는 연산자</h4>
    
    <h4>\${값==null }/\${값 eq null } : null 인지 검사하는 방법 </h4> 
    <h4>\${값!==null }/\${값 ne null } : null 아닌지 검사하는 방법 </h4> 
    
    <pre>
    	
		list2 == null : ${list2 == null } 
		list2 eq null : ${list2 eq null } 
		
		list2 !== null : ${list2 != null} 
		list2 ne null : ${list2 ne null} 
		
		empty list2 : ${empty list2}
		--> empty가 null도 비었다고 판단하고 있음
		
		* list3 : null은 아니지만 비어있음
		list3 eq null : ${list3 eq null }
		empty list3 : ${empty list3}
		
		list3에 요소가 추가되어 있는가? ${!empty list3}
		list3에 요소가 추가되어 있는가? ${not empty list3}
		
		* list4 : null도 아니고, 요소고 1개 추가 되어있음.
		list4 eq null : ${list4 eq null }
		empty list4 : ${empty list4}
		
		list4에 요소가 추가되어 있는가? ${!empty list4}
		list4에 요소가 추가되어 있는가? ${not empty list4}
		
		<!-- java : list4.get(0) -->
		list의 0번 인덱스에 존재하는 값 : ${list4[0]}
		
		--> EL은 List에 존재하는 요소를 얻어올 때
			배열 처럼 [index번호]를 입력해서 얻어온다.
	    
	</pre>

    
</body>
</html>