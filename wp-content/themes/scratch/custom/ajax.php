<?php
add_action('wp_ajax_load_posts_by_ajax', 'load_posts_by_ajax_callback');
add_action('wp_ajax_nopriv_load_posts_by_ajax', 'load_posts_by_ajax_callback');

function load_posts_by_ajax_callback(){
	check_ajax_referer('load_more_posts','security');

	$paged = $_POST['page'];
	$args = array(
		'post_type'      => 'post',
		'posts_per_page' => 3,
		'posts_status'   => 'publish',
		'paged'          => $paged,
	);

	$my_posts = new WP_Query( $args );

	if($my_posts->have_posts()):
		while($my_posts->have_posts()): $my_posts->the_post();
			?>
			<div class="col-md-6 col-lg-4 col-12 mb-4">
				<div class="post h-100">
					<div class="image">
						<?php echo get_the_post_thumbnail(); ?>
					</div>
					<div class="post_title mt-2 mb-2">
						<h4 class=""><?php the_title(); ?></h4>
					</div>
					<div class="short_desc">
						<?php the_excerpt(); ?>
					</div>
					<div class="button_single_post">
						<a href="<?php the_permalink(); ?>" class="text-uppercase pl-3 pr-3 pt-2 pb-2">Show more</a>
					</div>
				</div>
			</div>
			<?php
		endwhile;
	endif;

	wp_die();
}
