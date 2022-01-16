<?php get_header(); ?>
<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg">
<div class="container">
	<nav>
        <ol class="breadcrumb text-white">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Best category</a></li>
            <li class="breadcrumb-item active" aria-current="page">Great articles</li>
        </ol>  
	</nav>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION INTRO END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">
    <div class="row">
        
        <main class="col-md-12">

            <header class="border-bottom mb-4 pb-3">
                    <div class="form-inline">
                        <span class="mr-md-auto">32 Items found </span>
                        <select class="mr-2 form-control">
                            <option>Latest items</option>
                            <option>Trending</option>
                            <option>Most Popular</option>
                            <option>Cheapest</option>
                        </select>
                        <div class="btn-group">
                            <a href="#" class="btn btn-outline-secondary" data-toggle="tooltip" title="List view"> 
                                <i class="fa fa-bars"></i></a>
                            <a href="#" class="btn  btn-outline-secondary active" data-toggle="tooltip" title="Grid view"> 
                                <i class="fa fa-th"></i></a>
                        </div>
                    </div>
            </header><!-- sect-heading -->
            <?php

                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

                $arguments = [
                    'post_type' => 'vetement',
                    'posts_per_page'=>10,
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
                
                
            ?>
            <div class="row">
                <?php

                if ($produits->have_posts() ) {

                    // Load posts loop.
                    while ($produits->have_posts() ) {
                        $produits->the_post();
                        
                ?>
                    <a href="<?php the_permalink(); ?>?genre=<?= $_GET['genre'] ?>">
                        <div class="card border-0 col-sm-3 py-2">
                                <img class="card-img-top" height="300px" width="100%" src="<?php the_post_thumbnail_url();?>">
                            <div class="card-body">
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
