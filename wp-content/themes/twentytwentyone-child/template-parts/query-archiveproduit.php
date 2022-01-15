<?php

$arguments = [
    'post_type' => 'vetement',
    'post__not_in' => [get_the_ID()],
    'orderby'        => 'rand',
    'posts_per_page'=>3,
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
    <nav style="font-weight: 400;" class="navbar navbar-expand-lg navbar-light bg-light">

        <ul class="navbar-nav mx-auto">
            <li class="nav-item">
                <p>Recommendations</p>
            </li>
            
        </ul>
    </nav>
    <div class="row">
        <div class="offset-md-2 col-md-8">
            <div class="row">
                <?php 
                while($produits->have_posts()):
                $produits->the_post();
                ?>
            
                    <a href="<?php the_permalink(); ?>?genre=<?= $_GET['genre'] ?>">
                        <div class="card border-0 col-sm-4 py-2">
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
                <?php endwhile;?>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>


<?php wp_reset_postdata(); ?>
