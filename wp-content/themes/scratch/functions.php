<?php
/**
 * scratch functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package scratch
 */

if ( ! function_exists( 'scratch_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function scratch_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on scratch, use a find and replace
		 * to change 'scratch' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'scratch', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'scratch' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'scratch_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'scratch_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function scratch_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'scratch_content_width', 640 );
}
add_action( 'after_setup_theme', 'scratch_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function scratch_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'scratch' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'scratch' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'scratch_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function scratch_scripts() {
	wp_enqueue_style( 'scratch-style', get_stylesheet_uri() );

	wp_enqueue_script( 'scratch-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'scratch-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'scratch_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/*Theme Widgets i.e Sidebars*/
function create_widget( $name, $id, $description ) {
	register_sidebar(array(
		'name' => __( $name ),	 
		'id' => $id, 
		'description' => __( $description ),
		'before_widget' => '<div class="widget">',
		'after_widget' => '</div>',
		'before_title' => '<h5>',
		'after_title' => '</h5>'
	));

}
create_widget( 'Contact', 'contact-1', 'Contact' );
create_widget( 'Footer: Copyright', 'footer-1', 'Footer: Copyright' );

require get_template_directory() . '/custom/services.php';
function getServices(){
    $services = [];
    $wp_query = null;
    $wp_query = new WP_Query();
    $wp_query->query('post_type=services&order=DESC&posts_per_page=3');
    while ($wp_query->have_posts()):
        $wp_query->the_post();
        $service = get_post();
        $post_id = get_the_id();

        if ( has_post_thumbnail() ){
        $service->thumbnail = get_the_post_thumbnail_url();
      }

        $custom_fields = get_post_custom($post_id);
        $service->link = get_post_permalink();
        array_push($services, $service);
    endwhile;
    return $services;
}

require get_template_directory() . '/custom/ajax.php';

add_action('back_button', 'back_button');

function back_button(){
	if(wp_get_referer()){
		$back_text = __('&laquo; Back');
		$button = "\n <button id='my_back_button' class='btn button my-back-button' onclick='javascript:history.back()'>$back_text</button>";
		echo ($button);
	}
}

require get_template_directory() . '/custom/youtube_video_tutorials.php';
function getVideos(){
    $videos = [];
    $wp_query = null;
    $wp_query = new WP_Query();
    $wp_query->query('post_type=video-tutorials&order=DESC&posts_per_page=9');
    while ($wp_query->have_posts()):
        $wp_query->the_post();
        $video = get_post();
        $post_id = get_the_id();

        if ( has_post_thumbnail() ){
        $video->thumbnail = get_the_post_thumbnail_url();
      }

        $custom_fields = get_post_custom($post_id);
        $video->iframe = $custom_fields['iframe'][0];
        array_push($videos, $video);
    endwhile;
    return $videos;
}

require get_template_directory() . '/custom/custom-search-videos.php';


function add_theme_menu_item(){
	add_menu_page('Social Media Links', 'Social Media Links', 'manage_options','theme-panel','theme_settings_page','dashicons-networking',99);
}

add_action('admin_menu','add_theme_menu_item');

function theme_settings_page(){
	?>
		<div class="wrap">
			<h1>Theme Panel</h1>
			<form method="POST" action="options.php">
				<?php 
					settings_fields('section');
					do_settings_sections('theme-options');
					submit_button();
				?>
			</form>
		</div>
	<?php
}

function display_twitter_element(){
	?>
		<input type="text" name="twitter_url" id="twitter_url" value="<?php echo get_option('twitter_url'); ?>">
	<?php
}

function display_facebook_element(){
	?>
		<input type="text" name="facebook_url" id="facebook_url" value="<?php echo get_option('facebook_url'); ?>">
	<?php
}

function display_instagram_element(){
	?>
		<input type="text" name="instagram_url" id="instagram_url" value="<?php echo get_option('instagram_url'); ?>">
	<?php
}


function display_theme_panel_fields(){

	add_settings_section('section','Social Media Links','null','theme-options');

	add_settings_field('twitter_url','Twitter Profile Url', 'display_twitter_element','theme-options','section');
	add_settings_field('facebook_url','Facebook Profile Url', 'display_facebook_element','theme-options','section');
	add_settings_field('instagram_url','Instagram Profile Url', 'display_instagram_element','theme-options','section');

	register_setting('section','twitter_url');
	register_setting('section','facebook_url');
	register_setting('section','instagram_url');
}

add_action('admin_init','display_theme_panel_fields');