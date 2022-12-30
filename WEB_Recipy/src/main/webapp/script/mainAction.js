productScroll();

function productScroll() {
  let slider = document.getElementById("slider");
  let next = document.getElementsByClassName("pro-next");
  let prev = document.getElementsByClassName("pro-prev");
  let slide = document.getElementById("slide");
  let item = document.getElementById("slide");

  for (let i = 0; i < next.length; i++) {
    //refer elements by class name

    let position = 0; //slider postion

    prev[i].addEventListener("click", function() {
      //click previos button
      if (position > 0) {
        //avoid slide left beyond the first item
        position -= 1;
        translateX(position); //translate items
      }
    });

    next[i].addEventListener("click", function() {
      if (position >= 0 && position < hiddenItems()) {
        //avoid slide right beyond the last item
        position += 1;
        translateX(position); //translate items
      }
    });
  }

  function hiddenItems() {
    //get hidden items
    let items = getCount(item, false);
    let visibleItems = slider.offsetWidth / 210;
    return items - Math.ceil(visibleItems);
  }
}

function translateX(position) {
  //translate items
  slide.style.left = position * -210 + "px";
}

function getCount(parent, getChildrensChildren) {
  //count no of items
  let relevantChildren = 0;
  let children = parent.childNodes.length;
  for (let i = 0; i < children; i++) {
    if (parent.childNodes[i].nodeType != 3) {
      if (getChildrensChildren)
        relevantChildren += getCount(parent.childNodes[i], true);
      relevantChildren++;
    }
  }
  return relevantChildren;
}


function go_admin(){
   document.frm.action = "recipe.do?command=admin";
   document.frm.submit();
}

//----가입


function go_next(){
   // 자바스크립트에서 jsp 페이지 내의 radio 버튼을 바라볼때, 같은 name의 okon 인것이 여러개라면 
   // name  값에 의한 배열로 자동 인식되어 사용됩니다.
   // 동의함 버튼 : okon[0],  동의안함  버튼 : okon[1]
   
   if( document.contractFrm.okon[1].checked == true ){
      // 동의 안함이 선택되었다면
      alert('회원 약관에 동의 하셔야 회원으로 가입이 가능합니다');
   }else{
      document.contractFrm.action = "recipe.do?command=joinForm";
      document.contractFrm.submit();
      // contractFrm 폼에  action 도 없고 submit 버튼도 없는 것을 스크립트 명령으로 action 값을 설정하고 
      // submit() 메서드로 이동까지 실행합니다
   }
}




function idcheck(){
   if( document.joinForm.id.value=="" ){
      alert("아이디를 입력하고 중복체크를 진행하세요" );
      documnet.joinForm.id.focus();
      return;
   }
   var url = "recipe.do?command=idCheckForm&id=" + document.joinForm.id.value;
   var opt = "toolbar=no, menubar=no, resizable=no, width=500, height=250, scrollbars=no";
   window.open(url, "IdCheck", opt);   
}






function idok( userid ){
   opener.joinForm.id.value = userid;
   opener.joinForm.reid.value = userid;
   self.close();
}



function post_zip(){
   var url = "recipe.do?command=findZipNum";
   var opt = "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=550, height=300, top=300, left=300";
   window.open( url, "우편번호 찾기", opt);
}




function result( zip_num, sido, gugun, dong){
   //  함수 호출 형태 - result( '123-123', '서울시', '서대문구',  '대현동')
   opener.document.joinForm.zip_num.value=zip_num;
   opener.document.joinForm.address1.value=sido+" "+gugun+" "+dong;
   self.close();
}



function go_save(){
   if (document.joinForm.id.value == "") {
      alert("아이디를 입력하여 주세요.");        
       document.joinForm.id.focus();
   }else if(document.joinForm.reid.value != document.joinForm.id.value){
      alert("아이디 중복확인을 하지 않았습니다");      
      document.joinForm.id.focus();
   } else if(document.joinForm.pwd.value == "") {
       alert("비밀번호를 입력해 주세요.");       
       document.joinForm.pwd.focus();
   } else if(document.joinForm.pwd.value != document.joinForm.pwdCheck.value) {
       alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");       
       document.joinForm.pwd.focus();
   } else if(document.joinForm.name.value == "") {
       alert("이름을 입력해 주세요.");       
       document.joinForm.name.focus();
   }else if(document.joinForm.phone.value == "") {
       alert("전화번호을 입력해 주세요.");      
       document.joinForm.phone.focus();
   } else{
      document.joinForm.action = "recipe.do?command=join";
       document.joinForm.submit();
   }
}




function go_update(){
   if (document.joinForm.pwd.value == "") {
       alert("비밀번호를 입력해 주세요.");
       document.joinForm.pwd.focus();
   }else if ((document.joinForm.pwd.value != document.joinForm.pwdCheck.value)) {
       alert("비밀번호가 일치하지 않습니다.");
       document.joinForm.pwd.focus();
   }else if (document.joinForm.name.value == "") {
       alert("이름을 입력해 주세요.");
       document.joinForm.name.focus();
   } else if (document.joinForm.phone.value == "") {
       alert("전화번호를 입력해 주세요.");
       document.joinForm.email.focus();
   }else {
       document.joinForm.action = "recipe.do";
       document.joinForm.submit();
   }
}

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

function chkIdCode(event) {
    const regExp = /[^0-9a-zA-Z]/g;
    if (regExp.test(event.target.value)) {
        event.target.value = event.target.value.replace(regExp, '');
    }
}

function chkPhoneCode(event){
    const regExp1 = /[^0-9a-zA-Z]/g;
    if (regExp1.test(event.target.value)) {
        event.target.value = event.target.value.replace(regExp1, '');
    }

    const regExp2 = /[0-9]/g;
    if (regExp2.test(event.target.value)) {
        var _val =  event.target.value.trim();
        event.target.value = autoHypenPhone(_val);
    }

    const regExp3 = /^[a-zA-Z]*$/;
    if (regExp3.test(event.target.value)) {
        event.target.value = event.target.value.replace(regExp3, '');
    }
}
     
        
        $( function(){
            $("#userpwdchk").keyup( function(event){
                event.target.value = event.target.value.trim();
                let pass1 = $("#userpwd").val();
                let pass2 = $("#userpwdchk").val();
                if (pass1 != "" || pass2 != ""){
                    if (pass1 == pass2){
                        $("#error1").html('');
                    } else {
                        $("#error1").html('비밀번호가 일치하지 않습니다.');
                        $("#error1").css('color','red');
                    }
                }
            })

            $("#userpwd").keyup( function(event){
                event.target.value = event.target.value.trim();
                let pass1 = $("#userpwd").val();
                let pass2 = $("#userpwdchk").val();
                if (pass1 != '' && pass2 != ''){
                    if (pass1 == pass2){
                        $("#error1").html('');
                    } else {
                        $("#error1").html('비밀번호가 일치하지 않습니다.');
                        $("#error1").css('color','red');
                    }
                }
            })
 
            $("#useremail").keyup( function(event){
                const regExp = /[ㄱ-ㅎㅏ-ㅣ가-힣]/g;
                event.target.value = event.target.value.trim();
                if (regExp.test(event.target.value)) {
                    event.target.value = event.target.value.replace(regExp, '');
                }
                let email = $("#useremail").val();
                var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
                if (!reg_email.test(email)){
                    $("#error2").html('이메일 형식이 잘못되었습니다.');
                    $("#error2").css('color','red');
                } else {
                    $("#error2").html('');
                }
            })
        } )


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

// 아이디, 비밀번호 찾기
function search(param){
	document.frm.action = "recipe.do?command=findAccBy&param="+param;
	document.frm.submit();
}

        
        