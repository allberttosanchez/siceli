<?php
    include 'head.view.php'; 
?>
        <title>SICELI | Gestión de Estudiantes</title>
        <style type="text/css">
            .ocultar { display: none; }        
            .borrar { visibility: hidden; }        
        </style>
    </head>
    <body>
        
        <?php   include 'header.view.php'; ?>                     
        
        <main class="dashboard-main row">
            <section class="section-wlc col-md-8">
                <div id="charging" >
                    <div id="wlc-wrap" class="wlc-wrap">
                        <h2>Gestión de Estudiantes</h2>
                        <p><?php if ( isset($arrayEscuela[0]['nombreCentroEscolar']) ) { echo $arrayEscuela[0]['nombreCentroEscolar'];} else { echo "Nombre del Centro Escolar";} ?></p>
                        <a href="./../?dashboard">Volver</a>
                    </div>
                    <div id="set-wrap" class="set-wrap ocultar">                   
                       
                        <h2 class="form-title">Formulario de Registro</h2>
                        <form action="" class="row col-12 form-newstudent" method="get">                
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
                        
                    </div>
                </div>   
            </section>
            <aside class="aside col-md-4">
                <h2>MENU</h2>                
                <div id="btn3" class="">
                    <a onclick="nuevoStudent(this)" href="#"><i class="fas fa-user-plus"></i>Agregar Estudiante</a>
                </div>
                <div id="btn4" class="ocultar">
                    <a onclick="nuevoStudent(this)" href="#"><i class="fas fa-user-plus"></i>Cerrar</a>
                </div>                
            </aside>
        </main>
        <!-- <main>            
            
        </main>   --> 
    </body>
    <script type="text/javascript">
        
        //var char = document.getElementById("set-edit-btn");
        
        //var i = 1;            
            
            /* ele.addEventListener("click", function(event){            

                event.preventDefault();
            }) */
        
        function nuevoStudent(ele){  

            var wlc = document.getElementById("wlc-wrap");
                wlc.classList.toggle("ocultar");           

            var set = document.getElementById("set-wrap");
                set.classList.toggle("ocultar");                
            
            var btn4 = document.getElementById("btn4");
                btn4.classList.toggle("ocultar");

            var btn3 = document.getElementById("btn3");
                btn3.classList.toggle("ocultar"); 

        }
    </script>
</html>