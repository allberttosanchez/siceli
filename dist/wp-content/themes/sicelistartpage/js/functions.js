//window.onload = function(){
    function validarFormularioContacto() {
        var e = document.getElementById('input-btn');
        e.addEventListener("click", function (event) {            
            var name = document.getElementById('input-name').value;
            var email = document.getElementById('input-email').value;
            var message = document.getElementById('input-message').value;
            if ( 
                (name != null) && (name != '') && (name.length > 3) &&
                (email != null) && (email != '') &&
                (message != null) && (message != '') &&
                (email.length > 9) && !(/[[ñáé}!#í=¡óú;'%¿$|&,:^><\/+\s]/i.test(email)) 
                ) {
                return true;
            }
            else {
                alert('ERROR: Mensaje no enviado');
                event.preventDefault();
            }
        });
    }

//}