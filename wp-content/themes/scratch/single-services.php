<?php
	get_header();
?>

<?php 
	while(have_posts()):
		the_post();

?>
	<div class="banner">
		<p><?php the_title(); ?></p>
	</div>

	<div class="content">
		<?php the_content(); ?>
	</div>
<?php
	endwhile;
?>

<?php
	get_footer();
?>