
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

// Funcion AJAX
function cargarDatos(lugar) {
    // Verifica si el navegador soporta objetos XMLHttpRequest    
    if (window.XMLHttpRequest) {
        // code for modern browsers
        var xhttp = new XMLHttpRequest();
     } else {
        // code for old IE browsers
        var xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
        
    if (lugar == 'escuela') {

        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Carga los datos obtenidos del index.php en el elemento con el id=set-wrap
                document.getElementById("set-wrap").innerHTML = this.responseText; 
                
            }
        };
        xhttp.open("POST","./index.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send('selector=1');
        // selector se envia por post para controlar la ejecucion del codigo.

    } else if (lugar == 'anno') {

        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Carga los datos obtenidos del index.php en el elemento con el id=set-wrap
                document.getElementById("set-wrap").innerHTML = this.responseText; 
                
            }
        };
        xhttp.open("POST","./index.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send('selector=2');
        // selector se envia por post para controlar la ejecucion del codigo.

    }

}

