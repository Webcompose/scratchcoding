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

		<form action="<?php echo site_url() ?>/wp-admin/admin-ajax.php" method="POST" id="filter">
			<div class="row">
				<div class="col-md-12">
					<input type="text" class="w-100" placeholder="Rechercher" name="name">
				</div>

				<div class="col-md-12 mt-3">
					<p>From date</p>
					<input type="date" name="from_date" class="w-100">
				</div>

				<div class="col-md-12 mt-3">
					<p>At date</p>
					<input type="date" name="at_date" class="w-100">
				</div>

				<div class="categories mt-3 col-md-12">
					<select class="w-100" name="categorie">
						<option>Select Category</option>
						<?php 
							$categories = get_categories();

							foreach ($categories as $categorie):
						?>

						<option value="<?php echo $categorie->term_id; ?>"><?php echo $categorie->name; ?></option>

						<?php
							endforeach;
						?>
					</select>
				</div>

				<div class="col-md-12 mt-5">
					<div class="filter_by_years">
						<?php 

							$terms_year = array(
								'post_type' => 'video-tutorials'
							);

							$years = array();
							$query_year = new WP_Query( $terms_year );

							if($query_year->have_posts()):
								while($query_year->have_posts()): $query_year->the_post();
									$year = get_the_date('Y');

									if(!in_array($year, $years)){
										$years[] = $year;
										?>
										<label class="container-checkbox">
										<?php echo $year; ?>
										<input type="checkbox" name="years[]" value="<?php echo $year; ?>">
										<span class="checkmark"></span>
									</label>
									<?php
									}
								endwhile;
							wp_reset_postdata();
						endif;

						?>	
					</div>
				</div>

				<div class="col-md-12 mt-3">
					<button id="applyButton">OK</button>
					<input type="hidden" name="action" value="myfilter3">
				</div>
			</div>
		</form>

		<div class="lds-spinner" style="display: none;"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>

		<div class="row mt-5" id="response_videos">
			
		</div>

		<div class="row mt-5" id="video_posts">

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

<script type="text/javascript">
  jQuery(function(jQuery){
	  jQuery('#filter').submit(function(){
	    var filter = jQuery('#filter');
	    jQuery.ajax({
	      url:filter.attr('action'),
	      data: filter.serialize() + '&action=myfilter3',
	      type:filter.attr('method'),
	      beforeSend:function(xhr){
	        // filter.hide();
	        jQuery('#video_posts').hide();
	        jQuery('.lds-spinner').show();
	      },
	      success:function(data){
	        filter.show();
	        jQuery('.lds-spinner').hide();
	        jQuery('#response_videos').html(data); 
	      }
	    });
	    return false;
	  });
	});
	</script>

<?php
get_footer();
