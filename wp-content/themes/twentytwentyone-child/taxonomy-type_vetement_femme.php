<?php get_header();

$term= get_the_terms(get_the_ID(),'genre');
set_query_var( 'term', $term[0] );
get_template_part('template-parts/menu_type', 'term');
?>

<!-- ========================= SECTION PAGETOP ========================= -->

<!-- ========================= SECTION INTRO END// ========================= -->
<?php
if(isset($_GET['sortby']) && !empty($_GET['sortby'])){
    if($_GET['sortby']== 'priceDesc'){

        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
        
        $arguments = [
            'post_type' => 'vetement',
            'posts_per_page'=>8,
            'orderby' => 'meta_value_num',
            'meta_key' => 'prix',
            'order' => 'DESC',
            'paged' => $paged,
            'tax_query' => [
                [
                    'taxonomy' => 'genre',
                    'field' => 'slug',
                    'terms' => [
                        $_GET['genre']
                    ]
                ]
            ]
        ];
        $produits = new WP_Query($arguments);
    }elseif($_GET['sortby']== 'priceAsc'){
        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
        
        $arguments = [
            'post_type' => 'vetement',
            'posts_per_page'=>8,
            'orderby' => 'meta_value_num',
            'meta_key' => 'prix',
            'order' => 'ASC',
            'paged' => $paged,
            'tax_query' => [
                [
                    'taxonomy' => 'genre',
                    'field' => 'slug',
                    'terms' => [
                        $_GET['genre']
                    ]
                ]
            ]
        ];
        $produits = new WP_Query($arguments);
    }
}else{

    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
    
    $arguments = [
        'post_type' => 'vetement',
        'posts_per_page'=>8,
        'paged' => $paged,
        'tax_query' => [
            [
                'taxonomy' => 'genre',
                'field' => 'slug',
                'terms' => [
                    $_GET['genre']
                ]
            ]
        ]
    ];
    $produits = new WP_Query($arguments);
}


?>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">
    <div class="row">
        
        <main class="col-md-12">

            <header class="border-bottom mb-4 pb-3">
                    <div class="form-inline">
                        <span class="mr-md-auto"></span>
                        <div class="dropdown">
                                <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Trier par
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="http://projetcms.test/vetement/?genre=<?=$_GET['genre']?>">Les plus recents</a>
                                    <a class="dropdown-item" href="http://projetcms.test/vetement/?genre=<?=$_GET['genre']?>&sortby=priceDesc">Prix: Décroissant</a>
                                    <a class="dropdown-item" href="http://projetcms.test/vetement/?genre=<?=$_GET['genre']?>&sortby=priceAsc">Prix: Croissant</a>
                                </div>
                            </div>

                    </div>
            </header><!-- sect-heading -->
           
            <div class="row">
                <?php

                if (have_posts() ) {

                    // Load posts loop.
                    while (have_posts() ) {
                        the_post();
                        
                ?>
                    <a href="<?php the_permalink(); ?>?genre=<?= $_GET['genre'] ?>">
                        <div class="card border-0 col-lg-3 col-md-4 col-sm-6 py-2 py-2">
                            <div style="height: 350px; max-height: 350px;">
                                <img class="card-img-top" height="100%" src="<?php the_post_thumbnail_url();?>">
                            </div>
                            <div id="lamarqueflex" class="card-body">
                                <h4 class="card-title" ><?php the_terms( get_the_ID() , 'marque' ); ?></h4>
                                <p class="card-text"><?php the_title();?></p>
                            </div>
                            <div style="background-color: white;" class="card-footer border-0">
                                <p style="font-size: 18px; font-weight: 500;"> <?php the_field('prix'); echo ' '. get_field_object('prix', get_the_ID())['append']; ?></p>
                            </div>
                        </div>
                    </a>


                
                <?php 
                    }
                }
                wp_reset_postdata();

                ?>
            </div> <!-- row end.// -->

            <nav class="mt-4" aria-label="Page navigation sample">
            <ul class="pagination">
                <li class="page-item ">
                    <?php
                        previous_posts_link();
                    ?>
                 </li>
                <li class="page-item"><?php next_posts_link(); ?></li>
            </ul>
            </nav>

        </main> <!-- col.// -->

    </div>
</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->
<?php  
    get_footer(); 
?>
