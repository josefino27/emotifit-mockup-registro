function validarLogin(form1){
 var email = form1.email;
 var password = form1.password;

     if(email.value=="" && password.value==""){
        alert("Debe proporcionar su correo y password");
        password.focus(); 
        password.select();
        return false;
    }
    if(email.value==""){
        alert("Debe proporcionar un correo electronico");
        email.focus(); 
        email.select();
        return false;
    }
 
 if(password.value==""){
        alert("Debe proporcionar su password");
        password.focus(); 
        password.select();
        return false;
    }

}

