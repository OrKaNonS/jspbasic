window.onload = function() {
	
	document.querySelector("#btn").addEventListener("click", function() {
		
		const num1 = document.querySelector("input[name='num1']").value;
		const num2 = document.querySelector("input[name='num2']").value;
		const operator = document.querySelector("input[name='operator']").value;
		 
		if(!num1 || isNaN(num1)){
			alert('첫번째 숫자를 입력해주세요');
			return false;
		}
		
		if(!num2 || isNaN(num2)){
			alert('두번째 숫자를 입력해주세요');
			return false;
		}
		
		if(num2==0 && operator=='/'){
			alert('0으로 나눌 수 없습니다.')
			return false;
		}
		
		if(!operator) {
			alert('연산자를 입력해주세요');
			return false;
		}
		
		if(operator!='+' && operator!='-' && operator!='*' &&  operator!='/') {
			alert('연산자는 +, -, *, / 중에서 입력해주세요.')
			return false;
		}
		
		
		
		document.querySelector("form[name='frm']").submit();
	})	
}