/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function iconClick(){
	document.getElementById("facebook");
	window.open("https://www.facebook.com/");
}

function googleClick(){
	document.getElementById("google");
	window.open("https://www.google.ie/");
}

function h1Click(){
        document.getElementById("title");
        window.open("KiteWebApplication/Homepage.jsp");
}

function validateDetails(){
    var email;
    var password;
    
    email = document.myForm.email.value;
    password = document.myForm.password.value;
    
    if(email ==="" && password==="" ){
        alert("Please enter email and password");
        return false;
    }else if(password ===""){
        alert("Please enter your password");
        return false;
    }else if(email ===""){
        alert("Please enter your email");
        return false;
    }else{
        return true;
    }
}

function passwordCheck(input){
        if(input.value !== document.getElementById("newPassword").value){
            input.setCustomValidity('Password must be matching!');
        }else{
            input.setCustomValidity('');
        }
}