<?php
    include 'head.view.php'; 
?>
        <title>SICELI | Gestionar Centro</title>
        <style type="text/css">
            .ocultar { display: none; }        
        </style>
    </head>
    <body>
        
        <?php   include 'header.view.php'; ?>                   
        
        <main class="dashboard-main row">
            <section class="section-wlc col-md-8">
                <div id="charging" >
                    <div id="wlc-wrap" class="wlc-wrap">
                        <h2><?php echo $arrayEscuela[0]['nombreCentroEscolar'];?></h2>
                        <p>Año Escolar 2019-2020</p>
                        <a href="./../?dashboard">Volver</a>
                    </div>
                    <div id="set-wrap" class="set-wrap ocultar">
                        <div id='set-wrap' class='set-wrap'>
                            <!-- <form action='' id='form-up-sch' method='get'>
                                <label for='codigoCentroEscolar'>Codigo del Centro</label>
                                <input id='codigoCentroEscolar' name='codigoCentroEscolar' type='text' value='' class=''>
                                <label for='nombreCentroEscolar'>Nombre</label>
                                <input id='nombreCentroEscolar' name='nombreCentroEscolar' type='text' value='' class=''>
                                <label for='modalidadEscolar'>Modalidad</label>
                                <input id='modalidadEscolar' name='modalidadEscolar' type='text' value='' class=''>
                                <label for='tandaEscolar'>Tanda Escolar</label>
                                <input id='tandaEscolar' name='tandaEscolar' type='text' value='' class=''>
                                <label for='direccion'>Dirección</label>
                                <input id='direccion' name='direccion' type='text' value='' class=''>
                                <label for='sector'>Sector</label>
                                <input id='sector' name='sector' type='text' value='' class=''>
                                <label for='zona'>Zona</label>
                                <input id='zona' name='zona' type='text' value='' class=''>
                                <label for='telefono'>Telefono</label>
                                <input id='telefono' name='telefono' type='text' value='' class=''>
                                <input id='fecha' name='fecha' type='date' value='' class=''>
                                <button type='submit' class='btn btn-primary' id='up-form-btn'>Actualizar</button>
                            </form> -->
                        </div>
                    </div>
                </div>   
            </section>
            <aside class="aside col-md-4">
                <h2>MENU</h2>                
                <a href="newstudent.php"><i class="fas fa-user-plus"></i>Iniciar Año Escolar</a><br>
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
        
        var i = 1;            
            
            ele.addEventListener("click", function(event){            

                event.preventDefault();
            })

          function editarFormulario(ele){  

                var wlc = document.getElementById("wlc-wrap");
                wlc.classList.toggle("ocultar");           
                
                var set = document.getElementById("set-wrap");
                set.classList.toggle("ocultar");                
                
                var btn = document.getElementById("btn");
                btn.classList.toggle("ocultar");           

                var btn2 = document.getElementById("btn2");
                btn2.classList.toggle("ocultar");              

                            
                if ( i < 2 ) {
                    cargarDatos('escuela');
                    i++;
                }

        }
    </script>

    

</html>