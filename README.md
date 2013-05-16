#Sandbox profile
Installation profile for sandbox.
This is for use with situs. https://github.com/xendk/situs

##Drush alias
Edit your ~/.drush/aliases.drushrc.php (or wherever you keep it)
and add:

    $aliases['sandbox'] = array(
      'uri' => 'loc.sandbox',
      'root' => '/srv/www/sandbox',
      'make-file' => '/srv/make/sandbox_profile/sandbox.make'
    );

##Run situs
    drush situs @sandbox

##Install
Then you just have to run this command to install

    drush @sandbox si sandbox --db-url=mysql://USER:PASSWORD@127.0.0.1/DB_NAME

Phresh!
