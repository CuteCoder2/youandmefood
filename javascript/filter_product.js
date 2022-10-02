let filter_form_cat = document.getElementById("filter_form_cat");



let b1 = document.getElementById('b1');
let b2 = document.getElementById('b2');
let b3 = document.getElementById('b3');
let b4 = document.getElementById('b4');
let b5 = document.getElementById('b5');
let b6 = document.getElementById('b6');
let b7 = document.getElementById('b7');
let b8 = document.getElementById('b8');
let limiter = document.getElementById('limiter');
let product_row = document.getElementById('product_row');
// console.log(product_row);
function checked_state(b) {
    if(b.checked){
        b = b.value;
    }else{
        b =' ';
    }
    return b;
};





filter_form_cat.addEventListener("change", filter);

limiter.addEventListener("change", filter);

function filter(){
    
    limiter_num = limiter.value;
    
function filter_product(b1,b2,b2,b3,b4,b5,b6,b7,b8,limiter){
    let url = "b1= "+checked_state(b1) +"&&b2=" +checked_state(b2) + "&&b3=" +checked_state(b3) +"&&b4=" +checked_state(b4) +"&&b5=" +checked_state(b5) +"&&b6=" +checked_state(b6) + "&&b7=" +checked_state(b7) +"&&b8="+checked_state(b8) +"&&limiter="+limiter;


let xhr = new XMLHttpRequest();

xhr.onreadystatechange = function(){
if (xhr.readyState == 4 && xhr.status == 200) {
    // console.log(xhr.responseText);
    if (xhr.responseText !== "") {
        product_row.innerHTML = xhr.responseText;
    }else{
        product_row.innerHTML = "<h1>No product mactch</h1>"
    }
    
}
}
xhr.open("GET","../functions/filter.php?"+url,true);

xhr.send();
}
filter_product(b1,b2,b2,b3,b4,b5,b6,b7,b8,limiter_num);
}




