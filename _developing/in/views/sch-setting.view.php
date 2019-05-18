<?php
    include 'head.view.php'; 
?>
        <title>SICELI | Gestionar Centro</title>
    </head>
    <body>
        
        <?php   include 'header.view.php'; ?>                   
        
        <main class="dashboard-main row">
            <section class="section-wlc col-md-8">
                <div class="wlc-wrap">
                    <h2>Liceo Francisco Gregorio Billini</h2>
                    <p>Año Escolar 2019-2020</p>
                    <a href="./../?dashboard">Volver</a>
                </div>
            </section>
            <aside class="aside col-md-4">
                <h2>MENU</h2>                
                <a href="newstudent.php"><i class="fas fa-user-plus"></i>Iniciar Año Escolar</a><br>
                <a href="studentlist.php"><i class="fas fa-list-ol"></i>Editar Datos del Centro</a><br>                
            </aside>
        </main>
    </body>
</html>