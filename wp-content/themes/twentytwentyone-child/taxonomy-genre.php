<?php get_header(); ?>
<?php $term = get_queried_object()?>

    <ul class="nav mx-auto mr-auto mt-2 mt-lg-0 justify-content-center">
        <li class="nav-item">
            <a class="nav-link active text-reset" href="<?php echo get_post_type_archive_link('chaussure').'?genre='.$term->slug; ?>">Chaussures </a>
        </li>
        <li class="nav-item">
            <a class="nav-link active text-reset" href="<?php echo get_post_type_archive_link('vetement').'?genre='.$term->slug; ?>">Vêtement</a>
        </li>
    </ul>

    <div class="container">
    
    <div class="row">
        <div class=" card border-0 my-5">
            <div class="row g-0">
            <div class="col-md-6">
                <img   src="https://cdn.pixabay.com/photo/2016/12/12/09/29/mannequin-1901090_960_720.jpg" class="img-fluid" alt="...">
            </div>
            <div class="col-md-6">
                <div  class="card-body text-center" >
                <h2 class="card-title">DERNIÈRE DÉMARQUE : - 20 % SUPPLÉMENTAIRES</h2>
                <p style="font-size: 22px;" class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
            </div>
        </div>
        <br>
        <div class="card border-0 my-5 ">
            <div class="row g-0">
                <div class="col-md-6">
                    <div class="card-body text-center" >
                        <h2 class="card-title ">DERNIÈRE DÉMARQUE : - 20 % SUPPLÉMENTAIRES</h2>
                        <p style="font-size: 22px;" class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="https://cdn.pixabay.com/photo/2016/12/12/09/29/mannequin-1901090_960_720.jpg" class="img-fluid" alt="...">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 my-5">
            <div class=" text-center">
                <h2>Latest News</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod temp incididunt ut labore et dolore magna aliquait sed do eiusmod temp incididunt ut labore et dolore magna aliqua. </p>
            </div>
        </div>
    </div> 
</div>
<?php get_footer(); ?>
