let login_btn  = document.getElementById('login_btn');
let signup_btn  = document.getElementById('signup_btn');
let user_error = document.getElementById('user_error');
let username = document.getElementById('username');
let form = document.forms['signin'];



login_btn.addEventListener('click', ()=>{
    login_btn.value = "loginbtn";
})

signup_btn.addEventListener('click', ()=>{
    signup_btn.value = "loginbtn";
})

user_error.style.color = "red";
user_error.style.display = "none";

var match = /^[0-9]+$/;


















   




































































































































username.addEventListener('keyup',function (){
    let xhr = new XMLHttpRequest();
    let value = username.value;
    
    xhr.open("GET","../functions/checkuser.php?username=" + value,true);
    
    xhr.onload = ()=>{
        if (xhr.status == 200 && xhr.readyState == 4) {
            if (xhr.responseText != "") {
                user_error.style.display = "block";
                user_error.textContent = xhr.responseText;
            }else{
                user_error.style.display = "none";
            }
        }
    }

    xhr.send();
});