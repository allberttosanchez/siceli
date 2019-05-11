<?php
    include 'head.view.php'; 
?>
        <title>SICELI | Dashboard</title>
    </head>
    <body>
        
        <?php   include 'header.view.php'; ?>                   
        
        <main class="dashboard-main row">
            <section class="section-wlc col-md-8">
                <div class="wlc-wrap">
                    <h2>Sistema de Gestion de Estudiantes</h2>
                    <p>Bienvenido(a), por favor seleccione una opción del Menu.</p>
                    <a href="./">Cerrar Sesión</a>
                </div>
            </section>
            <aside class="aside col-md-4">
                <h2>MENU</h2>
                <a href="newstudent.php"><i class="fas fa-user-plus"></i> Agregar Estudiante</a><br>
                <a href="studentlist.php"><i class="fas fa-list-ol"></i> Lista de Estudiantes</a>
            </aside>
        </main>
    </body>
</html>