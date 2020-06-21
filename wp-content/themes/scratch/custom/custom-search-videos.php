<?php
add_action('wp_ajax_myfilter3', 'custom_search_videos'); 
add_action('wp_ajax_nopriv_myfilter3', 'custom_search_videos');
 
function custom_search_videos(){

	$videos = [];

	if($_POST['from_date'] != '' && $_POST['at_date'] != ''){
		$date_search = array(
			'key'          => 'date',
		  	'type'         => 'DATE',
		  	'value'        => array($_POST['from_date'],$_POST['at_date']),
		  	'compare'      => 'BETWEEN',
		);
	}elseif($_POST['from_date'] != '' && $_POST['at_date'] == ''){
		$date_search = array(
			'key'          => 'date',
		  	'type'         => 'DATE',
		  	'value'        => $_POST['from_date'],
		  	'compare'      => '>=',
		);
	}elseif($_POST['from_date'] == '' && $_POST['at_date'] !=''){
	// dd($_POST['at_date']);
		$date_search = array(
			'key'          => 'date',
		  	'type'         => 'DATE',
		  	'value'        => $_POST['at_date'],
		  	'compare'      => '<=',
		);
	}else{
		$date_search = array();
	}


	$post_query = new WP_Query(
    array(
      	'post_type'=> 'video-tutorials',
  		's' => $_POST['name'],
  		'cat' => $_POST['categorie'],
      	'order' => 'ASC',
      	'date_query' => array(
      		'relation' => 'AND',
      		array('year' => implode(',',$_POST['years']))
      	),
      	'meta_query' => array(
      		'relation' => 'AND',
      		$date_search,
      	)
    )
);
?>
<?php
if($post_query->have_posts()):
while($post_query->have_posts()) : $post_query->the_post();
		$video = get_post();
		$post_id = get_the_id();
		if ( has_post_thumbnail() ){
	      $botanic->thumbnail = get_the_post_thumbnail_url();
	    }
	    array_push($videos, $video);
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
<?php
endwhile;
else:
	echo 'No posts!';
endif;
?>
<?php
wp_reset_postdata();
die();
}