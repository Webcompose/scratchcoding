<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package scratch
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/css/bootstrap.min.css">
	<script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.js"></script>

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?> style="margin: 0px !important;">

<div class="header pt-2 pb-2">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-4 col-4">
				<div class="logo">
					<?php the_custom_logo(); ?>
				</div>
			</div>
			<div class="col-lg-9 col-md-9 col-sm-8 col-8">
				<div class="desktop_menu mt-lg-3 mt-md-0 mt-sm-0 text-uppercase text-right pb-0">
					<nav class="navbar navbar-expand-lg navbar-light float-right pb-0">
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>
					  <div class="collapse navbar-collapse d-none d-sm-none d-lg-block" id="">
					  	<?php wp_nav_menu(); ?>
					  </div>
					</nav>
				</div>
			</div>
			<div class="col-lg-12 col-md-12 col-12">
				<div class="collapse navbar-collapse mobile_menu pt-3" id="navbarNav">
				  	<?php wp_nav_menu(); ?>
				</div>
			</div>
		</div>
	</div>
</div>