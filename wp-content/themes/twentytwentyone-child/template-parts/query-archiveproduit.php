<?php
$curentPost = get_post_type();
$arguments = [
    'post_type' => $curentPost,
    'post__not_in' => [get_the_ID()],
    'orderby'        => 'rand',
    'posts_per_page'=>4,
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
if($produits->have_posts()):?>
<div class="container">
    <nav style="font-weight: 400;" class="navbar navbar-expand-lg navbar-light ">

        <ul class="navbar-nav mx-auto">
            <li class="nav-item">
                <p>Recommandations</p>
            </li>
            
        </ul>
    </nav>
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <?php 
                while($produits->have_posts()):
                $produits->the_post();
                ?>
                    <a href="<?php the_permalink(); ?>?genre=<?= $_GET['genre'] ?>">
                        <div class="card border-0 col-xs-12 col-lg-3 col-sm-6 col-md-4 py-2">
                            <div style=" height: 350px;">
                                <img class="card-img-top img-fluid" height="100%" src="<?php the_post_thumbnail_url();?>">
                            </div>
                            <div id="lamarqueflex" class=" card-body">
                                <h4 class="card-title" ><?php the_terms( get_the_ID() , 'marque' ); ?></h4>
                                <p class="card-text"><?php the_title();?></p>
                            </div>
                            <div style="background-color: white;" class="card-footer border-0">
                                <p style="font-size: 18px; font-weight: 500;"> <?php the_field('prix'); echo ' '. get_field_object('prix', get_the_ID())['append']; ?></p>
                            </div>
                        </div>
                    </a>
                <?php endwhile;?>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>


<?php wp_reset_postdata(); ?>
