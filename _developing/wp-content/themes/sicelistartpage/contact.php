<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="./js/functions.js"></script>
    <title>Document</title>
</head>
<body>
    <main>        
        <div class="contact-box">
            <form action="" method='get' id='contact-form' onclick="return validarFormularioContacto();" class='contact-form'>
                <label for="input-name">Nombre</label>
                    <input type="text" name="name" class="" id="input-name" required>
                <label for="input-email">Correo Electronico</label>
                    <input type="email" name="email" class="" id="input-email" required>
                <label for="input-message">Correo Electronico</label>
                    <textarea name="message" id="input-message" cols="30" rows="10" placeholder="escribe tu mensaje aqui." required></textarea>
                <button name="btn" id="input-btn" class="btn btn-primary" value="submit">Enviar</button>
            </form>
        </div>        
    </main> 
</body>
</html>  
