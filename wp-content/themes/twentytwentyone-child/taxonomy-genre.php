<?php get_header(); ?>
<?php $term = get_queried_object()?>
<nav class="navbar navbar-expand-sm navbar-light "  style="border-bottom:1px solid black; background-color: #FCFFF7;">
		<div class="collapse navbar-collapse" id="collapsibleNavId">
			<ul class="navbar-nav mx-auto mr-auto mt-2 mt-lg-0">
				<li class="nav-item">
					<a class="nav-link active" href="<?php echo get_post_type_archive_link('chaussure').'?genre='.$term->slug; ?>">Chaussures </a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="<?php echo get_post_type_archive_link('vetement').'?genre='.$term->slug; ?>">Vêtement</a>
				</li>
			</ul>
		</div> 
	</nav>
<?php get_footer(); ?>
