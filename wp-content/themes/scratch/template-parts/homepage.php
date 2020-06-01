<?php
/**
 * Template part for displaying page content in page.php
 * Template Name: Homepage
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package scratch
 */

get_header();
?>

<div class="header_image" style="background: url(<?php echo header_image(); ?>) no-repeat; background-size: cover;">
	<div class="title">
		<h2 class="color-white">Scratch Coding</h2>
		<h3 class="color-white">Welcome</h3>
	</div>
</div>

<div class="services">
	<div class="container">
		<div class="row">
			<?php 
				$services = getServices();
				foreach ($services as $service ):
			?>

			<div class="col-lg-4 col-md-6 col-12 mt-lg-0 mt-md-0 mt-sm-3">
				<a href="<?php echo $service->link; ?>" target="_blank">
					<div class="service p-4">
						<div class="service_image">
							<img src="<?php echo $service->thumbnail; ?>">
						</div>
						<div class="service_title text-center mt-3">
							<h5 class="text-uppercase"><?php echo $service->post_title; ?></h5>
						</div>
					</div>
				</a>
			</div>

		<?php endforeach; ?>

		</div>
	</div>
</div>

<div class="posts mt-5 pt-5 pb-5">
	<div class="container">
		<h4 class="text-center text-uppercase color_white">Global Posts</h4>
		<div class="row mt-3">
			<?php 
				$query = new WP_Query( array( 'post_type'=>'post', 'posts_per_page'=> '3' ) );
				$posts = $query->posts;

				foreach($posts as $post):
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
		<?php endforeach; ?>

		<div class="response_posts row">
			
		</div>

			<div class="show-more-posts col-md-12 text-center mt-4">
				<button class="load-more pl-4 pr-4 pt-2 pb-2 text-uppercase">Show More Posts</button>
			</div>
		</div>

	</div>
</div>

<div class="video_tutorials mt-4">
	<div class="container">
		<h1 class="text-center">Video Tutorials</h1>

		<div class="row mt-5">

			<?php 
				$videos = getVideos();

				foreach ($videos as $video):
			?>

			<div class="col-lg-4 col-md-6 col-sm-6 col-12">
				<div class="single_video_tutorial">
					<div class="video">
						<?php echo $video->iframe; ?>
					</div>
					<div class="title">
						<p class="text-center font-weight-bold"><?php echo $video->post_title; ?></p>
					</div>
				</div>
			</div>

		<?php endforeach; ?>
		</div>
	</div>
</div>	

<div class="visual-composer-content">
	<?php 
		if(have_posts()){
			wp_reset_query();
			setup_postdata($post);
			echo esc_attr(htmlentities(the_content()));
		}else{
			echo 'Nothing Found on page';
		}
	?>
</div>

<script type="text/javascript">
	var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";
	var page = 2;

	jQuery('body').on('click','.load-more', function(){
		var data = {
			'action': 'load_posts_by_ajax',
			'page': page,
			'security': '<?php echo wp_create_nonce("load_more_posts"); ?>',
		}

		jQuery.post(ajaxurl, data, function(response){
			if (response != '') {
				jQuery('.response_posts').append(response);
				page++;
			}else{
				jQuery('.load-more').hide();
				jQuery('.show-more-posts').append('<p>There no post left!</p>');
			}
		});
	});
</script>

<?php
get_footer();
