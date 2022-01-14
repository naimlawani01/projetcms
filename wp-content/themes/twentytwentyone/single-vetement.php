<?php

get_header();

if ( have_posts() ) {

    // Load posts loop.
    while ( have_posts() ) {
     the_post();
        
?>
    <div>
        <h1><?php the_title(); ?> </h1>
        <img src="<?php the_post_thumbnail_url();?>" alt="">
        <h3><?php the_terms( get_the_ID() , 'marque' );?></h3>    
        <h4>Prix :<?php the_field('prix'); ?> € TVA incluse</h4>
        <?php the_field('taillle'); ?>
    </div><?php
    }

    // Previous/next page navigation.


    } else {

    // If no content, include the "No posts found" template.


    }

get_footer();
