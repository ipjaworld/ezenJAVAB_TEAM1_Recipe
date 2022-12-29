/**
function go_admin( comm ){
	document.frm.key.value="";
	document.frm.action = "shop.do?command=" + comm + "&page=1";
	document.frm.submit();
}
*/


function go_search( comm ){
	/* if( document.frm.key.value == "" ){
		alert("검색버튼 사용시에는 검색어 입력이 필수입니다");
	 	return;
	} */
	var url = "recipe.do?command=" + comm + "&page=1";   // 검색어로 검색한 결과의 1페이지로 이동
	document.frm.action = url;
	document.frm.submit();
}

function go_total( comm ){
	document.frm.key.value="";
	document.frm.action = "recipe.do?command=" + comm + "&page=1";
	document.frm.submit();
}



function go_members_delete(){
	var count = 0;
	if( document.frm.delId.length == undefined ){
		if( document.frm.delId.checked==true ) count++;
		
	}else{
		for( var i=0; i<document.frm.delId.length; i++){
			if( document.frm.delId[i].checked==true){
				count++;
			}
		}
	}	
	if(count == 0) {
		alert("삭제할 항목을 선택하세요");
	}	
	else{	
		document.frm.action = "recipe.do?command=adminDeleteMem";
	    document.frm.submit();    
	}    
}

function go_reply_delete(){
	var count = 0;
	if( document.frmm.delrp.length == undefined ){
		if( document.frmm.delrp.checked==true ) count++;
		
	}else{
		for( var i=0; i<document.frmm.delrp.length; i++){
			if( document.frmm.delrp[i].checked==true){
				count++;
			}
		}
	}	
	if(count == 0) {
		alert("삭제할 항목을 선택하세요");
	}	
	else{	
		document.frmm.action = "recipe.do?command=adminDeleteReply";
	    document.frmm.submit();    
	}    
}