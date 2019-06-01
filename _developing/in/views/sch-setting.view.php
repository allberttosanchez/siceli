<?php
    include 'head.view.php'; 
?>
        <title>SICELI | Gestionar Centro</title>
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
                        <h2><?php if ( isset($arrayEscuela[0]['nombreCentroEscolar']) ) { echo $arrayEscuela[0]['nombreCentroEscolar'];} else { echo "Nombre del Centro Escolar";} ?></h2>
                        <p>Año Escolar 2019-2020</p>
                        <a href="./../?dashboard">Volver</a>
                    </div>
                    <div id="set-wrap" class="set-wrap ocultar">
                    
                        <!--  <form action="" id="form-up-sch" method="get">
                            <label for="codigoCentroEscolar">Codigo del Centro</label>
                            <input id="codigoCentroEscolar" name="codigoCentroEscolar" type="text" value="10318" class="">
                            <label for="nombreCentroEscolar">Nombre</label>
                            <input id="nombreCentroEscolar" name="nombreCentroEscolar" type="text" value="Liceo Francisco Gregorio Billini PREPARA" class="">
                            <label for="modalidadEscolar">Modalidad</label>
                            <select id="modalidadEscolar" name="modalidadEscolar">
                                <option value="">-</option><option value="1">General</option>
                                <option value="2">Jornada Extendida</option>
                                <option value="3" selected="">PREPARA</option>
                                <option value="4">Otra</option>
                            </select>
                            <label for="tandaEscolar">Tanda</label>
                            <select id="tandaEscolar" name="tandaEscolar">
                                <option value="">-</option>
                                <option value="1">Matutina</option>
                                <option value="2">Verpestina</option>
                                <option value="3">Nocturna</option>
                                <option value="4">Sabatina</option>
                                <option value="5" selected="">Dominical</option>
                            </select>
                            <label for="direccion">Dirección</label>
                            <input id="direccion" name="direccion" type="text" value="C/Gastón F. Deligne Esq. Pdte. Billini, Baní, Prov. Peravia, Rep. Dom." class="">
                            <label for="sector">Sector</label>
                            <select id="sector" name="sector">
                                <option value="">-</option>
                                <option value="1">PUBLICO</option>
                                <option value="2" selected="">SEMI-PRIVADO</option>
                            </select><label for="zona">Zona</label>
                            <select id="zona" name="zona">
                                <option value="">-</option>
                                <option value="1">RURAL</option>
                                <option value="2" selected="">URBANA</option>
                            </select>
                            <label for="telefono">Telefono</label>
                            <input id="telefono" name="telefono" type="text" value="809-522-7259" class="">
                            <label for="fechaApertura">Fecha Apertura</label>
                            <input id="fechaApertura" name="fechaApertura" type="date" value="2010-05-05" class="">
                            <button type="submit" class="btn btn-primary" id="up-form-btn">Actualizar</button>
                        </form> -->
                                                
                        <!-- <form action="" id='anno-form' name="anno-form" method='get'>
                            <label for="anno-escolar">Año Escolar</label>
                            <select name="" id="">
                                <option value="1">2019-2020</option>                            
                            </select>
                            <label for="periodo-escolar">Periodo Escolar</label>
                            <select name="" id="">
                                <option value="5">Semestral</option>                            
                            </select>
                            <label for="fechaInicio">Fecha Inicio</label>
                            <input type="date" id="fechaInicio" name="fechaInicio" class="" value="">
                            <label for="fechaTermino">Fecha Termino</label>
                            <input type="date" id="fechaTermino" name="fechaTermino" class="" value="">
                            <button type="submit" class="btn btn-primary" id="anno-form-btn">Iniciar Año</button>
                        </form> -->
                        
                    </div>
                </div>   
            </section>
            <aside class="aside col-md-4">
                <h2>MENU</h2>                
                <div id="btn3" class="">
                    <a onclick="nuevoAnno(this)" href="#"><i class="fas fa-user-plus"></i>Iniciar Año Escolar</a>
                </div>
                <div id="btn4" class="ocultar">
                    <a onclick="nuevoAnno(this)" href="#"><i class="fas fa-user-plus"></i>Cerrar</a>
                </div>
                <div>
                    <div id="btn" class="">
                        <a id="set-edit-btn" onclick="editarFormulario(this)" href="#"><i class="fas fa-list-ol"></i>Editar Datos</a>
                    </div>
                    <div id="btn2" class="ocultar">                
                        <a id="set-edit-btn" onclick="editarFormulario(this)" href="#"><i class="fas fa-list-ol"></i>Cancelar Edición</a>
                    </div>
                </div>
            </aside>
        </main>
    </body>

    <script type="text/javascript">
        
        //var char = document.getElementById("set-edit-btn");
        
        //var i = 1;            
            
            /* ele.addEventListener("click", function(event){            

                event.preventDefault();
            }) */

        function editarFormulario(ele){  

                var wlc = document.getElementById("wlc-wrap");
                    wlc.classList.toggle("ocultar");           
                
                var set = document.getElementById("set-wrap");
                    set.classList.toggle("ocultar");                
                
                var btn = document.getElementById("btn");
                    btn.classList.toggle("ocultar");           

                var btn2 = document.getElementById("btn2");
                    btn2.classList.toggle("ocultar");              

                var btn3 = document.getElementById("btn3");
                    btn3.classList.toggle("borrar");             
                    cargarDatos('escuela');
                /* if ( i < 2 ) {
                    i++;
                } */

        }
        function nuevoAnno(ele){  

            var wlc = document.getElementById("wlc-wrap");
                wlc.classList.toggle("ocultar");           

            var set = document.getElementById("set-wrap");
                set.classList.toggle("ocultar");                
            
            var btn = document.getElementById("btn");
                btn.classList.toggle("borrar");           
                
            var btn4 = document.getElementById("btn4");
                btn4.classList.toggle("ocultar");

            var btn3 = document.getElementById("btn3");
                btn3.classList.toggle("ocultar");           

            cargarDatos('anno');
            /* if ( i < 2 ) {
                i++;
            } */

        }
    </script>

    

</html>