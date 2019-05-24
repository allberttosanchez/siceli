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
                                <button type='submit' class='btn btn-primary' id='up-form-btn'>Actualizar</button>
                            </form> -->
                        </div>
                    </div>
                </div>   
            </section>
            <aside class="aside col-md-4">
                <h2>MENU</h2>                
                <a href="newstudent.php"><i class="fas fa-user-plus"></i>Iniciar Año Escolar</a><br>
                <a id="set-edit-btn" href="#"><i class="fas fa-list-ol"></i>Editar Datos del Centro</a><br>                
            </aside>
        </main>
    </body>

    <script type="text/javascript">
        
        var char = document.getElementById("set-edit-btn");
        
        var i = 1;            
        char.addEventListener("click", function(event){            
            
            var wlc = document.getElementById("wlc-wrap");
            wlc.classList.toggle("ocultar");           
            
            var set = document.getElementById("set-wrap");
            set.classList.toggle("ocultar");                
            
            event.preventDefault();
                        
            if ( i < 2 ) {
                cargarDatos('escuela');
                i++;
            }

        });
    </script>

    

</html>