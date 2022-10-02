let sign_in = document.getElementById('sign_in');

let sign_up = document.getElementById('sign_up');

let create = document.getElementById('create');

let haveAcount = document.getElementById('haveAcount');
sign_up.style.display = "none";

create.addEventListener('click',show);

function show(){
    
    if (sign_up.style.display == "none"){

        sign_up.style.display = "block";
        sign_in.style.display = 'none';
    }
}

haveAcount.addEventListener('click',hide);


function hide() {
 
    if (sign_in.style.display == "none") {
 
        sign_up.style.display = "none";
 
        sign_in.style.display = "block";
 
    }
}