<?php
    get_header();
?>    
    <main>        
        <section id="news-section" class="wrap col-12 news container">                           
            <div class="row">

                <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                    <article class="page">                                                
                        <h3><span><?php the_title() ?></span></h3>
                        <p><span><?php echo get_the_date() ?></span></p>
                        <?php the_content() ?>
                    </article>
                    <?php endwhile; else : ?>
                <?php endif; ?>
                
            </div>
        </section>
        <section class="cols-sm-12" >
            <section class="wrap comments-box" >
                <?php comments_template(); ?>
            </section>
        </section>   
    </main>
<?php
get_footer();