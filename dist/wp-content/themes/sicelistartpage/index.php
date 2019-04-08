<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <script src="./js/jquery-3.3.1.slim.min.js"></script>
    <script src="./js/1.14.7_umd_popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>    
    <script src="./js/all.min.js"></script>        
    <link rel="stylesheet" type="text/css" media="screen" href="./css/all.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="./css/bootstrap.min.css">    
    <link rel="stylesheet" type="text/css" media="screen" href="./css/style.css">
    <link rel="shortcut icon" href="./image/favicon.ico" type="image/x-icon">
    <title>SILECI | Los Yaguarizos</title>
</head>
<body>
    <nav class="row">
        <div class="logo col-4">
            <a href="#">
                <img src="./image/logoSiceli.png" alt="LogoSiceli" id="logoSiceli" >
            </a>
        </div>
        <div class="menu col-8">
            <div>
                <span><i class="fas fa-bars"></i></span>
                <ul>                
                    <li><a href="#">Historia</a></li>
                    <li><a href="#">Noticias</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><a href="./in/login.php">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section role="carr" id="carr">
        <div class="bd-example">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./image/1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="./image/2.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="./image/3.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                    </div>
                </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </section>
    <main>
        <section class="wrap col-12" id="school">
            <div class="logo-school">
                <img src="./image/logo.png" alt="logoSchool" title="Sistema de Control Estudiantil Libre">
            </div>
            <h1>Centro Educativo Los Yaguarizos</h1>
        </section>        
        <section id="news-section" class="wrap col-12 news container">               
            <h2>Ultimas Noticias</h2>
            <div class="row">
                <article class="single-card">
                    <a href="#"><img src="./image/1.jpg" alt=""></a>
                    <h3><a href="#"><span>Loren Itsum Dolo Si Amet</span></a></h3>
                    <p><span>Date: 17 de Diciembre de 2018</span></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, fermentum risus habitasse sodales proin potenti, dictumst maecenas egestas at aptent taciti.</p>
                </article>
                <article class="single-card">
                    <a href="#"><img src="./image/2.jpg" alt=""></a>
                    <h3><a href="#"><span>Loren Itsum Dolo Si Amet</span></a></h3>
                    <p><span>Date: 17 de Diciembre de 2018</span></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, fermentum risus habitasse sodales proin potenti, dictumst maecenas egestas at aptent taciti.</p>
                </article>
                <article class="single-card">
                    <a href="#"><img src="./image/3.jpg" alt=""></a>
                    <h3><a href="#"><span>Loren Itsum Dolo Si Amet</span></a></h3>
                    <p><span>Date: 17 de Diciembre de 2018</span></p>
                    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, fermentum risus habitasse sodales proin potenti, dictumst maecenas egestas at aptent taciti.</p>
                </article>
            </div>
        </section>    
    </main>
    <aside>

    </aside>
    <footer class="col-12">
        <section class="foo col-12">
            <div class="foo-wrap">
                <h4>Redes Sociales</h4>
                <a href="#"><p><span><i class="fab fa-facebook"></i></span> facebook</p></a>
                <a href="#"><p><span><i class="fab fa-twitter"></i></span> twitter</p></a>
                <a href="#"><p><span><i class="fab fa-instagram"></i></span> instagram</p></a>
            </div>            
            <div class="foo-wrap">
                <h4>Centro Educativo</h4>
                <a href="mailto:#"><p><span><i class="fas fa-envelope"></i></span> Contacto</p></a>
                <a href="#"><p><span><i class="fas fa-newspaper"></i></span> Blog</p></a>                
            </div>
        </section>        
        <section class="foo-credits row">
            <p>Make with <i class="fas fa-fist-raised"></i> and <i class="fas fa-heart"></i> in Dominican Republic by <a href="http://www.as-wm.com" target="_blank">Aswm</a></p>
        </section>
    </footer>
</body>
</html>