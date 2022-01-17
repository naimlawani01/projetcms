<?php
/**
 * The header.
 *
 * This is the template that displays all of the <head> section and everything up until main.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>
<!doctype html>
<html <?php language_attributes(); ?> <?php twentytwentyone_the_html_classes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
	<?php wp_head(); ?>
</head>

<body  <?php body_class(); ?>>
<?php wp_body_open(); ?>
<?php $genres= get_terms(['taxonomy'=> 'genre']);?>
<nav style="font-weight: 450; background-color: #fff; border-bottom: 1px solid #f6f6f6" class="navbar navbar-expand-lg navbar-light bg-blue sticky-top" >
  <div class="container ">
  	<a class="navbar-brand" href=""><img width="54px" src="<?php echo get_template_directory_uri() . '/logo.svg' ?>" alt=""></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mx-auto">
			<li class="nav-item">
				<a class="navbar-brand" href="<?php echo get_home_url(); ?>"> <i class="fa fa-outdent fa-x" aria-hidden="true"></i> </a>
			</li>
			<?php foreach($genres as $genre):?>
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="<?= get_term_link($genre) ; ?>"><?= $genre->name ?></a>
				</li>
			<?php endforeach;?>
			
		</ul>
		<div class=" my-2 my-lg-0">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link active" href=""><i class="fa fa-user-circle fa-lg" aria-hidden="true"></i></a>
				</li>
				<li class="nav-item">
				<a class="nav-link active" href=""><i class="fa fa-shopping-bag fa-lg" aria-hidden="true"></i></a>
				</li>
				<li class="nav-item"></li>
			</ul>
		</div>
    </div>
  </div>
</nav>
<div id="page" class="site">

	
	<div id="content" class="site-content">
		<div id="primary" class="content-area">
			<main id="main" class="site-main" role="main">






