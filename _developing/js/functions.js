
//Espera que la ventana ejecute el evento load (termine de cargar) y ejecuta la funcion anonima.
window.addEventListener("load", function(){    
    
    //obtiene el objeto del DOM tipo array con los elementos inputs.
    var ele = document.getElementsByClassName('form-input');
    
    for (let i = 0; i < ele.length; i++) {
        //removeAttibute quita el atributo disabled de los elementos con la clase "form-input" despues de cargar el codigo js.
        //esto es para prevenir el submit antes de terminar de cargar la pagina.
        ele[i].removeAttribute("disabled");        
    }

    //al realizarse el evento click sobre el elemento "btn-submit" ejecuta el codigo.
    document.getElementById('btn-submit').addEventListener("click", function(event){
        //Verificar el password y la contraseña.
        var user = document.getElementById('user').value;
        var pass = document.getElementById('pass').value;
        if ( 
            (user == "") || (user == null) || (user.length < 4) || (/[[ñáé}!#í=¡óú;'%¿$|&,:^><\/+\s]/i.test(user)) ||
            (pass == "") || (user == null) || (user.length < 4) || (/[[ñáé}!í=¡óú;'%¿|&,:^><\/+\s]/i.test(pass))
        ) {
            alert("Usuario o contraseña Incorrectos.");
            event.preventDefault();             
            //Previene el envio del formulario si no cumple con la condicion.   
        } else{
            return true;   
        }        
        
    });    
    
});

