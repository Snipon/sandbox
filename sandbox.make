api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.23"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.3"

projects[views][subdir] = "contrib"
projects[views][version] = "3.7"

projects[panels][subdir] = "contrib"
projects[panels][version] = "3.3"

projects[panels_everywhere][subdir] = "contrib"
projects[panels_everywhere][version] = "1.0-rc1"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[diff][subdir] = "contrib"
projects[diff][version] = "3.2"

projects[features][subdir] = "contrib"
projects[features][version] = "2.0"

projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "3.0-rc4"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.1"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = 2.3

projects[panelizer][subdir] = "contrib"
projects[panelizer][version] = 3.1


projects[scald][subdir] = "contrib"
projects[scald][version] = 1.1

projects[ckeditor][subdir] = "contrib"
projects[ckeditor][version] = 1.13

; Develop
projects[devel][subdir] = "develop"
projects[devel][version] = "1.3"

projects[styleguide][subdir] = "develop"
projects[styleguide][version] = "1.1"

projects[module_filter][subdir] = "develop"
projects[module_filter][version] = "1.7"

projects[unicorn][type] = theme
projects[unicorn][download][type] = git
projects[unicorn][download][url] =  git://github.com/Snipon/unicorn.git

projects[sandbox][type] = profile
projects[sandbox][download][type] = git
projects[sandbox][download][url] =  git://github.com/Snipon/sandbox.git

;Libraries
libraries[mootools][download][type] = file
libraries[mootools][download][url] = http://mootools.net/download/get/mootools-core-1.4.5-full-compat-yc.js

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.2.2/ckeditor_4.2.2_standard.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][type] = "library"