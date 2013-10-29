<?php
/**
 * @file
 * sandbox_base.features.filter.inc
 */

/**
 * Implements hook_filter_default_formats().
 */
function sandbox_base_filter_default_formats() {
  $formats = array();

  // Exported format: CKEditor.
  $formats['ckeditor'] = array(
    'format' => 'ckeditor',
    'name' => 'CKEditor',
    'cache' => 1,
    'status' => 1,
    'weight' => 0,
    'filters' => array(),
  );

  return $formats;
}
