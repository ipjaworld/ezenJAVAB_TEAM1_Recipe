// 로그인 폼
function loginCheck(){
	if(document.loginFrm.id.value==""){
		alert("아이디는 필수입력사항입니다.");
		document.loginFrm.id.focus();
		return false;
	}else if(document.loginFrm.pwd.value==""){
		alert("비밀번호는 필수입력사항입니다.");
		document.loginFrm.pwd.focus();
		return false;
	}else{
		return true;
	}
}

// 계정 찾기 폼 이동
function find_account(){
	location.href="recipe.do?command=findAccountForm";
}

// 아이디, 비번 찾기 폼 이동
function findAccountBy( param){
	let url = "recipe.do?command=findAccountBy&param=" + param;
	let opt = "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=550, height=300, top=300, left=300";
	window.open(url, param + " 찾기", opt);
}

// 아이디, 비밀번호 찾기

function search(param){
	document.frm.action = "recipe.do?command=findAccBy&param="+param;
	document.frm.submit();
}


// 전화번호 입력 시 - 자동 추가
function autoHypenPhone(str){
    str = str.replace(/[^0-9]/g, '');
    var tmp = '';
    if( str.length < 4){
        return str;
    }else if(str.length < 7){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3);
        return tmp;
    }else if(str.length < 11){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 3);
        tmp += '-';
        tmp += str.substr(6);
        return tmp;
    }else{              
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 4);
        tmp += '-';
        tmp += str.substr(7);
        return tmp;
    }
    return str;
}