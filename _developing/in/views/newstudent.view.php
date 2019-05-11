<?php
    include 'head.view.php'; 
?>
        <title>SICELI | Registro de Estudiante</title>
    </head>
    <body>
        <header class="col-12">
            <div class="row nav">
                <div class="col-md-4 logo">
                    <a href="dashboard.php">
                        <img src="./../image/logoSiceli.png" alt="Siceli Logo" title="Sistema de Control Estudiantil Libre">
                    </a>
                </div>
                <div class="col-md-8 title">              
                    <h2>Registro de Nuevo Estudiante</h2>              
                </div>
            </div>
        </header>        
    <body>
        <h2 class="form-title">Formulario de Registro</h2>
        <form action="studentlist.php" class="row col-12 form-newstudent" method="get">                
                <label class="label-form name" for="name">Nombre Completo</br>
                    <input type="text" name="name" id="name" class="form-std-input name">
                </label>
                <label class="label-form lastname" for="firstlastname">Primer Apellido</br>
                    <input type="text" name="firstlastname" id="firstlastname" class="form-std-input firstlastname">
                </label>
                <label class="label-form lastname" for="secondlastname">Segundo Apellido</br>
                    <input type="text" name="secondlastname" id="secondlastname" class="form-std-input secondlastname">
                </label>
                <label class="label-form id" for="identification">Cedula</br>
                    <input type="text" name="identification" id="identification" class="form-std-input identification">
                </label>
                <label class="label-form gender" for="gender">Genero</br>
                    <select name="gender" id="gender" class="form-std-input gender">                        
                        <option value="man">Hombre</option>
                        <option value="woman">Mujer</option>
                        <option value="other">Otro</option>
                        <option value="non specific" selected>Sin Especificar</option>
                    </select>                    
                </label>
                <label class="label-form date" for="date">Fecha de Nacimiento</br>
                    <input type="date" name="date" id="date" class="form-std-input date">
                </label>
                <label class="label-form age" for="age">Edad</br>
                    <input type="text" name="age" id="age" class="form-std-input age">
                </label>
                <label class="label-form status" for="status">Estado Civil</br>
                    <select name="status" id="status" class="form-std-input status">                        
                        <option value="single">Soltero(a)</option>
                        <option value="married">Casado(a)</option>
                        <option value="commom law">Unión Libre</option>
                        <option value="Divorced">Divorciado</option>
                        <option value="widow">Viduo(a)</option>
                        <option value="non specific" selected>No Especificado</option>
                    </select>                    
                </label>
                <label class="label-form children" for="children">No. de Hijos</br>
                    <select name="children" id="children" class="form-std-input children">                        
                        <option value="0" selected>Ninguno</option>
                        <option value="1">1 hijo</option>
                        <option value="2">2 hijos</option>
                        <option value="3">3 hijos</option>
                        <option value="4">Más de 3 hijos</option>                            
                    </select>                     
                </label>
                <label class="label-form address" for="address">Direccion <span>(calle y numero, sector, ciudad, pais)</span></br>
                    <input type="text" name="address" id="address" class="form-std-input address" placeholder="Linea 1">
                    <input type="text" name="address2" id="address2" class="form-std-input address2" placeholder="Linea 2">
                </label>
                <label class="label-form phone" for="phonenum">Telefono</br>                    
                    <input type="tel" name="phonenum" id="phonenum" class="form-std-input phonenum">
                </label>
                <label class="label-form email" for="email">Correo Electrónico</br>
                    <input type="email" name="email" id="email" class="form-std-input email">
                </label>                
                <input type="submit" value="Guardar" class="form-std-input buttom">
            </form>        
        </main>   
    </body>
</html>