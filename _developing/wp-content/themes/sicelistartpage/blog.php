<?php
    get_header();
?>    
    <main>        
        <section id="blog-section" class="wrap col-12 news container">                           
            <div class="row">

                <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                    <article class="single">                                                
                        <h3><span><?php the_title() ?></span></h3>
                        <p><span><?php echo get_the_date() ?></span></p>
                        <?php the_content() ?>
                    </article>
                    <?php endwhile; else : ?>
                <?php endif; ?>

            </div>
        </section>        
    </main>
<?php
get_footer();