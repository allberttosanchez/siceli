<?php
    get_header();
?>

    <section role="carr" id="carr">
        <?php echo do_shortcode('[metaslider id="5"]'); ?>    
    </section>    
    <main>
        <section class="wrap col-12" id="school">               
                <?php if ( !function_exists('dynamic_sidebar') OR !dynamic_sidebar('Logo') ) : endif; ?>
                <?php if ( !function_exists('dynamic_sidebar') OR !dynamic_sidebar('Spotlight') ) : endif; ?>
            </div>
        </section>        
        <section id="news-section" class="wrap col-12 news container">               
            <h2>Ultimas Noticias</h2>
            <div class="row">

                <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                    <article class="single-card">                        
                        <a href="<?php the_permalink() ?>">
                            <?php 
                                if ( has_post_thumbnail() ) :
                                    the_post_thumbnail( 'medium' );
                                    else : ?>
                                        <img src='<?php bloginfo('template_url')?>/image/nothumb.png' alt='' style='background:#343a40'>
                            <?php endif; ?>
                        </a>
                        <h3><a href="<?php the_permalink() ?>"><span><?php the_title() ?></span></a></h3>
                        <p><span><?php echo get_the_date() ?></span></p>
                        <?php the_excerpt() ?>
                    </article>
                    <?php endwhile; else : ?>
                <?php endif; ?>

            </div>
            <div class="row col-12 more">
                <p>
                    <a href="<?php echo bloginfo('url').'/blog'; ?>">Ver más noticias</a>
                </p>
            </div>
        </section>    
    </main>
<?php
get_footer();