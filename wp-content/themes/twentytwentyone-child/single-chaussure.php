<?php

get_header();

if ( have_posts() ) {

    // Load posts loop.
    while ( have_posts() ) {
     the_post();
        
?>
        <div class="card container mb-3 " >
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="<?php the_post_thumbnail_url();?>" class="img-fluid rounded-start" alt="...">
                </div>
                <div class="text-center col-md-8 gx-5 gy-5">
                    <div class=" card-body">
                        <h5 class="card-title"><?php the_terms( get_the_ID() , 'marque' ); ?></h5>
                        <p class="card-text"><?php the_title();?><br></p>
                            <?php 
                                $tailles = get_field('taille', get_the_ID());
                            ?>
                            <div class="row">
                                <div class="col-md-6 offset-md-3">

                                    <select class="form-control" name="" id="">
                                        <option value="" >Taille</option>
                                        <?php foreach($tailles as $taille): ?>
                                            <option  value=" <?php $taille ?>"><?= $taille ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                        <p class="card-text"><small class="text-muted"></small></p>
                        <p style="font-size: 26px;"><?php the_field('prix'); echo ' '. get_field_object('prix', get_the_ID())['append']; ?></p>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-8 offset-md-2">

                            <a name="" id="" class="btn btn-dark btn-block" href="#" role="button">Ajouter au panier</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    <?php
    }

    // Previous/next page navigation.
     get_template_part('template-parts/query-archiveproduit');

    } else {

    // If no content, include the "No posts found" template.


    }
get_footer();
?>
