<?php

/**
 * Plugins are described by creating a $plugin array which will be used
 * by the system that includes this file.
 */
$plugin = array(
  'single' => TRUE,
  'title' => t('Tester pane'),
  'icon' => 'reload.png',
  'description' => t('Show a rating and share block.'),
  'category' => t('Sandbox'),
  'hook theme' => 'ctools_tester_theme',
  'render callback' => 'sandbox_demo_tester_content_type_render',
  'defaults' => array(
    'limit' => '5',
    'offset' => '0',
  ),
);

/**
 * Render the custom content type.
 */
function sandbox_demo_tester_content_type_render($subtype, $conf, $panel_args, $context = NULL) {

  // Load some nodes
  $variables['content'] = array();
  $offset = 0;
  $count = 5;

  // Load all node id's from database
  $query = "SELECT nid FROM node ORDER BY nid ASC LIMIT $offset, $count";
  // Execute the query and get a object
  $results = db_query($query)->fetchAll();
  // Loop object to get each result
  foreach ($results as $row) {
    // Load the node object from node id
    $node = node_load($row->nid);
    // Send the node object to a variable to be passed on
    $variables['content'][] = node_view($node, 'teaser');
  }

  // Pass on content variable to template file
  $variables['jannik'] = 'Hej';
  $output = theme('tester_pane', $variables);

  // Build the content type block.
  $block = new stdClass();
  $block->content = $output;

  // Add some js
  drupal_add_js(drupal_get_path('module', 'sandbox_demo') . '/js/sandbox_demo.custom.js');

  //drupal_add_library('sandbox_demo', 'mootools');

  return $block;
}

function ctools_tester_theme(&$theme, $plugin) {
  $theme['tester_pane'] = array(
    'arguments' => array('stuff' => NULL),
    'path' => $plugin['path'],
    'template' => 'tester_pane',
  );
}
