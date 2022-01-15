<?php
/**
 * Proper way to enqueue scripts and styles
 */
function wpdocs_theme_name_scripts()
{
    wp_enqueue_style('twentytwentyonechildstyle', './style.css');
}

add_action('wp_enqueue_scripts', 'wpdocs_theme_name_scripts');
