<?php get_header();?>

    <div id='imghome' >
        <p id='pimghome'>DES STYLES PRINTANIERS</p>
        <img class='field' src="<?php echo get_template_directory_uri() . '/monclerhome.jpeg' ?>" alt="moncle">
    </div>
    
    <div id='flexgenre'>
        <div ><p id='phomme'>HOMME</p>
            <img id='imghomme' src="<?php echo get_template_directory_uri() . '/monclerhomme.jpeg' ?>" alt="monclerhomme">
        </div>
        
        <div >
            <p id='pfemme'>FEMME</p>
            <img id='imgfemme' src="<?php echo get_template_directory_uri() . '/monclerfemme.jpeg' ?>" alt="monclerfemme">
        </div>
    </div>

    <div id='headerflex'>
        <div id='titrenouveauté'>NOUVEAUTÉS</div>
        <div id='separation'></div>
        <div id='flexhommefemmeheaderflex'>
            <p>HOMME</p>
            <p>FEMME</p>
        </div> 
    </div>




    <?php  
get_template_part('template-parts/newhomme');
    $arguments = [
    'post_type' => 'vetement',
    'posts_per_page' => 4,

    
    ];

    $petitposts = new WP_Query($arguments); ?>

    <?php 
    if ($petitposts->have_posts()) :?>
        <div class='row' id='rowmodif'>
            <?php while($petitposts->have_posts()) : ?>
            <?php $petitposts->the_post(); ?>


            <div class='col-md-3 col-lg-3 col-sm-6' id='flexhomepage'>

                <div id='lesimages3'><?php  the_post_thumbnail();?></div>

                <div id='titrepetitflex2'>
                    <?php the_title(); ?>
                </div>

            </div>

            
            <?php endwhile;?>
        </div>



    <?php endif; ?>



<?php get_footer();?>