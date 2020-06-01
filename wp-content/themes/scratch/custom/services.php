<?php
// register a custom post type called 'services'

function post_type_services() {
    $labels = array(
        'name' => __( 'Services' ),
        'singular_name' => __( 'Services' ),
        'add_new' => __( 'New Services' ),
        'add_new_item' => __( 'Add New Services' ),
        'edit_item' => __( 'Edit Services' ),
        'new_item' => __( 'New Services' ),
        'view_item' => __( 'View Services' ),
        'search_items' => __( 'Search Services' ),
        'not_found' =>  __( 'No Services Found' ),
        'not_found_in_trash' => __( 'No Services found in Trash' ),);
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
        'capability_type' => 'post',
        'hierarchical' => false,
        'menu_position' => null,
		'map_meta_cap' => true, 
        'menu_icon' => 'dashicons-format-aside',
        'supports' => array('title','editor','thumbnail', 'page-attributes'));

    register_post_type( 'services', $args );
}

add_action( 'init', 'post_type_services' );	

function services_admin_init(){
    add_meta_box('Services Mets','Services Details', 'services_meta_details', 'services','normal','default');
}


function services_meta_details(){
    // $link = '<p><label for="link">Link:</label><br /><input type="text" size="70" id="link" name="link" value="'. htmlentities(get_services_field("link")) .'" /></p>';
    // echo $link;
}

function get_services_field($field){
    global $post;

    $custom = get_post_custom($post->ID);

    if(isset($custom[$field])){
        return $custom[$field][0];
    }
}

function save_services_details(){
    global $post;

    if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE){
        return;
    }

    if(get_post_type($post) != 'services'){
        return;
    }

    save_services_field('link');
}

function save_services_field($field){
    global $post;

    if(isset($_POST[$field])){
        update_post_meta($post->ID, $field, $_POST[$field]);
    }
}

add_action('save_post', 'save_services_details');
add_action('admin_init', 'services_admin_init');

