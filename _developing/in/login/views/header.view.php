<header class="col-12 header-list">
    <div class="row nav">
        <div class="col-md-4 logo">
            <a href="dashboard.php">
                <img src="./../../image/logoSiceli.png" alt="SICELI Logo" title="Sistema de Control Estudiantil Libre">
            </a>
        </div>
        <div class="col-md-8 title">              
            <?php if (strpos($_SERVER['PHP_SELF'],'studentlist')>0) : ?>
                <h2>Lista de Estudiantes</h2>              
            <?php elseif (strpos($_SERVER['PHP_SELF'],'newstudent')>0) : ?>
                <h2>Registro de Nuevo Estudiante</h2>              
            <?php elseif (strpos($_SERVER['PHP_SELF'],'dashboard')>0) : ?>
                <h2>Dashboard</h2>              
        <?php endif; ?>
        </div>        
    </div>
</header>