
// console.log(add_cart_form);


// adding the event listener by looping


let addLinks = document.querySelectorAll('#cat_sub');
let request = new XMLHttpRequest();
for (let i = 0; i < addLinks.length; i++) {
    addLinks[i].addEventListener('click', function (event) {
        event.preventDefault();
        let url = this.getAttribute('href');
        // AJAX REQUEST
        request.open('GET','../functions/' + url, true);
        request.onreadystatechange = function () {
            if (request.readyState === 4 && request.status === 200) {
                let res = request.responseText;
                let cart = document.getElementById('cart_count');
                
                if (res == -1) {
                    alert('create account');
                    window.location = "../views/login.php";
                }else{
                    
                    cart.textContent = request.responseText;
                    console.log(res);
                }
            }
        };
        request.send();
    });
}


let del = document.querySelectorAll('#deletei');

for (let index = 0; index < del.length; index++) {
    del[index].addEventListener('click', ()=>{
        let tag =del[index];
      let id =   tag.getAttribute('value');
      let ajax = new XMLHttpRequest();
      

    ajax.open('delete','../functions/cart_delete.php?id=' + id,true);

    ajax.onreadystatechange = ()=>{
        if (ajax.readyState == 4 && ajax.status == 200) {
        
        }
    }
    ajax.send();
        
    })
    
}

let prod_num = document.querySelectorAll('#prod_num');
let unite_price = document.querySelectorAll('#unite_price');
let total_price = document.querySelectorAll('#total_price');
let sub_total = document.getElementById('sub_total');
let delivary_cost = document.getElementById('delivary_cost');
let sum_total_cost = document.getElementById('sum_total_cost');

let final_total = 0;
delivary_cost = parseInt(delivary_cost.innerHTML.slice(3));

for(let i = 0 ; i < prod_num.length && i < unite_price.length && i < total_price.length;i++){

    let orther_total = parseInt(total_price[i].innerHTML.slice(3),10);
    

final_total += orther_total;
    prod_num[i].addEventListener('change',(e)=>{
        
        let prod_val = prod_num[i].value;
        let u_price = unite_price[i].innerHTML;
        let t_price = total_price[i].innerHTML;
        u_price = u_price.slice(3);
        u_price = parseInt(u_price);
        t_price = t_price.slice(3);
        t_price = parseInt(t_price);
        t_price = (prod_val * u_price);

        

       total_price[i].innerHTML = "XAF " + t_price;

       sub_total.innerHTML = "XAF " + (t_price + final_total);


       sum_total_cost.innerHTML = "XAF " + (delivary_cost + t_price + final_total);
    
        let ide = e.target.nextElementSibling;
        let id = ide.value;


        let xhr2 = new XMLHttpRequest();

        xhr2.open("update","../functions/update_cart.php?id=" + id + '&& value=' + prod_val, true);
        xhr2.onreadystatechange = ()=>{
            if (xhr2.readyState == 4 && xhr2.status == 200) {
                console.log(xhr2.responseText);
            }
        }
        xhr2.send()
        
    });
}




