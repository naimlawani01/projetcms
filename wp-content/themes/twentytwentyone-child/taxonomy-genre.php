<?php get_header(); ?>
<?php 
    $term = get_queried_object();
    set_query_var( 'term', $term );
    get_template_part('template-parts/menu_type', 'term');
?>


    <div class="container">
    
    <div class="row">
        <div class=" card border-0 my-5">
            <div class="row g-0">
            <div class="col-md-6">
                <img   src="<?php echo get_template_directory_uri() . '/imgtaxg.jpeg' ?>" class="img-fluid" alt="...">
            </div>
            <div class="col-md-6">
                <div  class="card-body text-center" >
                <h2 class="card-title">DERNIÈRE DÉMARQUE : - 20 % SUPPLÉMENTAIRES</h2>
                <p style="font-size: 20px;" class="card-text">Ne ratez pas la plus vaste sélection de pièces de grandes marques parmi les soldes FARFETCH, avec une remise finale de 20 % supplémentaire. Sur une sélection d'articles et pour une durée limitée uniquement. Remise appliquée automatiquement lors du paiement.</p>
                </div>
            </div>
            </div>
        </div>
        <br>
        <div class="card border-0 my-5 ">
            <div class="row g-0">
                <div class="col-md-6">
                    <div class="card-body text-center" >
                        <h2 class="card-title ">NOUVEAUTÉS À SUPERPOSERS</h2>
                        <p>Vestes de mi-saison, maille douillette, t-shirts & pantalons indispensables.</p>
                        <a class="btn  btn-light btn-outline-secondary text-reset" href="<?php echo get_post_type_archive_link('chaussure').'?genre='.$term->slug; ?>">Voir la selection </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="<?php echo get_template_directory_uri() . '/imgtaxg1.webp' ?>" class="img-fluid" alt="...">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 my-5">
            <div class=" text-center">
                <h2>Latest News</h2>
                <p>. </p>
            </div>
            <?php
            get_template_part('template-parts/querry-genre');
            ?>
        </div>
    </div> 
</div>
<?php get_footer(); ?>
