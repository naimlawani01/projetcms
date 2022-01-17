<?php

get_header();
?>
<div class="container">
<?php
if ( have_posts() ) {

    // Load posts loop.
    while ( have_posts() ) {
     the_post();
        
?>
        <div id=' flexall'>
            <div id='flexsingle'>
                <div id='thesingleimage'>
                    <?php the_post_thumbnail();?>
                </div>

                <div id='bjn'>
                    <div id='lamarqueflex'><?php the_terms(get_the_ID(),'marque')?> <hr></div>
                    
                    <div id='flextitreprix'>
                        <span style="font-weight: 500;">

                            <?php the_title();?>
                        </span>
        
                        <div id='leprix'>
                            <p><?php the_field('prix')?> €</p>
                        </div>
                    </div>
                    <div id="ladescription">
                        <?php the_field('description')?>
                    </div>
                    <div class="tailleTexte" >
                        Taille
                    </div>
                    <div id='lataille'>
                        <?php $tailles = get_field('taille', get_the_ID());?> 
                        <div id='flextaille'>
                            
                            <?php foreach($tailles as $taille):?>
                            <div><?= $taille ?></div>
                            <?php endforeach;?>
                            

                        </div>
                    </div>
                    <button type="button" class="btn btn-dark">AJOUTER AU PANIER</button>
                
                </div>
            </div>
        </div>
    <?php
    }

    // Previous/next page navigation.
     get_template_part('template-parts/query-archiveproduit');

    }
    ?>
    </div>
    <?php
get_footer();
?>
