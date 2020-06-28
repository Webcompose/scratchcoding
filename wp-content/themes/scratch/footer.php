<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package scratch
 */

?>

<div class="footer mt-5 pt-5 pb-2">
	<div class="container">
		<div class="row">
			<div class="col-md-6 pages">
				<p class="color-white text-uppercase font-weight-bold mb-0">Pages</p>
				<?php echo wp_nav_menu(); ?>
			</div>
			<div class="col-md-6 mt-md-0 mt-sm-5 contact_footer">
				<?php echo dynamic_sidebar('contact-1'); ?>
			</div>

			<div class="col-md-12 mt-3">
				<hr>
				<?php echo dynamic_sidebar('footer-1'); ?>
			</div>

			<div class="col-md-12 mt-3">
				<hr>
				<ul class="p-0 m-0">
					<li><a href="<?php echo get_option('twitter_url'); ?>" target="_blank">Twitter</a></li>
					<li><a href="<?php echo get_option('facebook_url'); ?>" target="_blank"> Facebook</a></li>
					<li><a href="<?php echo get_option('instagram_url'); ?>" target="_blank">Instagram</a></li>
				</ul>
			</div>	
		</div>
	</div>
</div>


<?php wp_footer(); ?>
<script src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrap.min.js"></script>
</body>
</html>
