<?php get_header(); ?>
<?php
get_header();?>
<div class="sousnav"></div>
<nav class="navbar navbar-expand-lg navbar-light bg-light" class="navmodif">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">Homme</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Femme
          </a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>

<?php
if (have_posts()) :
    ?>
    
    <div  class="row ">
<?php while (have_posts()) :?>
               <?php the_post(); ?>

             <div class='col-md-3'>
                 <div id='lesimages'><?php the_post_thumbnail(); ?></div>
                 <div id='letitre'><?php the_title(); ?></div>
                 <div id='leprix'><p><?php the_field('prix')?> €</p></div>
                 
                
                 
            
            </div>

                
            <?php
            endwhile;
            ?>
        </div>
    </div>
<?php
endif;?>


 


<?php get_footer(); ?>