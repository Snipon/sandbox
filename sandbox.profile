<?php
function sandbox_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Sandbox';
  $form['site_information']['site_mail']['#default_value'] = "simon@reload.dk";

  // Set the admin username and password to make reinstalls less painful.
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'simon@reload.dk';

  $form['admin_account']['account']['pass']['#type'] = 'hidden';
  $form['admin_account']['account']['pass']['#value'] = 'admin';

  $form['mysql']['mysql']['database']['#value'] = 'user';
  $form['mysql']['mysql']['username']['#value'] = 'user';

  $form['server_settings']['site_default_country']['#default_value'] = 'DK';

  $form['admin_account']['account']['pass_help']['#markup'] = '<p><strong>' . t('The admin password has been set automatically.') . '</strong></p>';

  // Set default timezone.
  $form['server_settings']['site_default_country']['#default_value'] = 'DK';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/Copenhagen';

  // Disable automatic client timezone detection.
  unset($form['server_settings']['date_default_timezone']['#attributes']);

  // Don't send update e-mails.
  $form['update_notifications']['update_status_module']['#default_value'] = array(1);
}
