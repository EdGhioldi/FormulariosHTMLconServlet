function validarForma(forma){
    var usuario = forma.usuario;
    if (usuario.value == "" || usuario.value == "Escribir Usuario"){
        usuario.focus();
        usuario.select();
        return false;
    }
    
    var password  = forma.password;
    if(password.value == "" || password.value.length < 3){
        alert("Debe proporcionar un password de al menos 3 caracteres");
        password.focus();
        password.select();
        return false;
    }
}

