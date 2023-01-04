const addButton = document.getElementById("add-button");

let taskList = [];
let filterList =[];
let mode = "all";

//addButton.addEventListener("click",addTask);


$(function(){
            $('#add-button').click(function(){
				$('.recipe-process').append(`<div class="recipe-process">
                	<label>Profile</label><input type="file" name="img">
                	<textarea name="content" rows="4" cols="50"></textarea>
            	</div>`);
            	alert("추가가 잘 된 모양이에요!");
			});
		});





