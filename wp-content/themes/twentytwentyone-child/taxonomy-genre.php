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

    <div class="card mb-3 container" >
        <div class="row g-0">
            <div class="col-md-4">
            <img src="https://www.lecoindesentrepreneurs.fr/wp-content/uploads/2020/11/e-commerce-choisir-CMS.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
            </div>
        </div>
    </div>
<?php get_footer(); ?>
