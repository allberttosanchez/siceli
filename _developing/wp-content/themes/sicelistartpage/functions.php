<?php

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );
		set_post_thumbnail_size( 1568, 9999 );

		register_nav_menus( array(
			'menu-top' => 'Menu Principal',
			'menu-footer' => 'Menu Footer'
		));
		
		register_sidebar( array(
			'name' => 'Logo',
			'class' => 'logo',
			'before_widget' => '<div class="logo">',
			'after_widget' => '</div>',
			'before_title' => '<h3>',
			'after_title' => '</h3>'
		));

		register_sidebar( array(
			'name' => 'Spotlight',			
			'before_widget' => '<div>',
			'after_widget' => '</div>',
			'before_title' => '<h3>',
			'after_title' => '</h3>'    
		));

		function limpiarDatos($datos){
				return $datos = htmlspecialchars($datos);
		}