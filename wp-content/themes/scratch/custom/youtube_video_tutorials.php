<?php
// register a custom post type called 'services'

function post_type_videos() {
    $labels = array(
        'name' => __( 'Videos' ),
        'singular_name' => __( 'Video' ),
        'add_new' => __( 'New Video' ),
        'add_new_item' => __( 'Add New Video' ),
        'edit_item' => __( 'Edit Video' ),
        'new_item' => __( 'New Video' ),
        'view_item' => __( 'View Video' ),
        'search_items' => __( 'Search Video' ),
        'not_found' =>  __( 'No Video Found' ),
        'not_found_in_trash' => __( 'No Videos found in Trash' ),);
    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'supports' => array(
            'title',
            'thumbnail',
            'editor',
        ),
        'show_ui' => true,
        'query_var' => true,
        'rewrite' => true,
        'taxonomies' => array('category'),
        'capability_type' => 'post',
        'hierarchical' => false,
        'menu_position' => null,
		'map_meta_cap' => true, 
        'menu_icon' => 'dashicons-format-aside',
        'supports' => array('title','editor','thumbnail', 'page-attributes'));

    register_post_type( 'video-tutorials', $args );
}

add_action( 'init', 'post_type_videos' );	

function videos_admin_init(){
    add_meta_box('Videos Mets','Videos Details', 'videos_meta_details', 'video-tutorials','normal','default');
}


function videos_meta_details(){
    $iframe = '<p><label for="iframe">Iframe:</label><br /><input type="text" size="70" id="iframe" name="iframe" value="'. htmlentities(get_videos_field("iframe")) .'" /></p>';
    echo $iframe;
}

function get_videos_field($field){
    global $post;

    $custom = get_post_custom($post->ID);

    if(isset($custom[$field])){
        return $custom[$field][0];
    }
}

function save_videos_details(){
    global $post;

    if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE){
        return;
    }

    if(get_post_type($post) != 'video-tutorials'){
        return;
    }

    save_videos_field('iframe');
}

function save_videos_field($field){
    global $post;

    if(isset($_POST[$field])){
        update_post_meta($post->ID, $field, $_POST[$field]);
    }
}

add_action('save_post', 'save_videos_details');
add_action('admin_init', 'videos_admin_init');

