<?php
    include 'head.view.php'; 
?>
    <title>SICELI | Inicio Sesión</title>
    </head>
    <body>
        <header class="col-12" id='header-login'>
            <div class="row nav">
                <div class="col-md-4 logo">
                    <a href="./../">
                        <img src="./../image/logoSiceli.png" alt="Siceli Logo" title="Sistema de Control Estudiantil Libre">
                    </a>
                </div>
                <div class="col-md-8 title">              
                    <h2>Sistema de Control Estudiantil Libre</h2>              
                </div>
            </div>
        </header>
        <main class="main" id='main-login'>
            <form action="<?php echo siceli('url_template'); ?>" id='form-login' class="row col-12 form-login-box" method="post">
                <h2>Inicio de Sesión</h2>        
                <label for="user"><i class="fas fa-user"></i>
                    <input type="text" name="user" id="user" class="form-input user" placeholder="Usuario">
                </label>
                <label for="pass"><i class="fas fa-unlock"></i>
                    <input type="text" name="pass" id="pass" class="form-input pass" placeholder="Contraseña">
                </label>
                <input type="submit" value="Entrar" class="form-input buttom">
            </form>        
        </main>
    </body>
</html>