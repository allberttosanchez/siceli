<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <script src="<?php bloginfo('template_url')?>/js/jquery-3.3.1.slim.min.js"></script>
    <script src="<?php bloginfo('template_url')?>/js/1.14.7_umd_popper.min.js"></script>
    <script src="<?php bloginfo('template_url')?>/js/bootstrap.min.js"></script>    
    <script src="<?php bloginfo('template_url')?>/js/all.min.js"></script>        
    <script src="<?php bloginfo('template_url')?>/js/functions.js"></script>        
    <link rel="stylesheet" type="text/css" media="screen" href="<?php bloginfo('template_url')?>/css/all.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php bloginfo('template_url')?>/css/bootstrap.min.css">    
    <link rel="stylesheet" type="text/css" media="screen" href="<?php bloginfo('template_url')?>/style.css">
    <link rel="shortcut icon" href="<?php bloginfo('template_url')?>/image/favicon.ico" type="image/x-icon">
    <title><?php if (is_home()) { echo get_bloginfo('name')." | Los Yaguarizos";} else { echo get_bloginfo('name'); }?></title>
    <?php wp_head(); ?>
</head>
<body>
    <nav class="row">
        <div class="logo col-4">
            <a href="            
                <?php if ( is_home() ) : ?>
                    #
                    <?php else : echo $_SERVER['PHP_SELF']; ?>                
                <?php endif; ?>
            ">
                <img src="<?php bloginfo('template_url')?>/image/logoSiceli.png" alt="LogoSiceli" id="logoSiceli" >
            </a>
        </div>
        <div class="menu col-8">
            <div>
                <span><i class="fas fa-bars"></i></span>
                <!-- <ul>                
                    <li><a href="#">Historia</a></li>
                    <li><a href="#">Noticias</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><a href="./in/login.php">Login</a></li>
                </ul> -->
                <?php wp_nav_menu( array(
                    'container' => false,
                    'menu_class' => '',  # es clase es para darle estilos CSS.
                    'items_wrap' => '<ul class="wrap-menu-top">%3$s</ul>',  
                    'theme_location' => 'menu-top'

)); ?>
            </div>
        </div>
    </nav>