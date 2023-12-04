#!/bin/bash

mkdir phoenix
cd phoenix
#directories
mkdir sass css js lib inc
#style.css
touch style.css
echo "/*" > style.css
echo "Theme Name : phoenix" >> style.css
echo "Theme URI: http://www.facebook.com/ahmd.sabbir" >> style.css
echo "Author: Sabbir Ahmed" >> style.css
echo "Description: The 2013 theme for WordPress takes us back to the blog, featuring a full range of post formats, each displayed beautifully in their own unique way. Design details abound, starting with a vibrant color scheme and matching header images, beautiful typography and icons, and a flexible layout that looks great on any device, big or small." >> style.css
echo "Version: 1.0" >> style.css
echo "License: GNU General Public License v2 or later" >> style.css
echo "License URI: http://www.gnu.org/licenses/gpl-2.0.html" >> style.css
echo "Tags: black, brown, orange, tan, white, yellow, light, one-column, two-columns, right-sidebar, flexible-width, custom-header, custom-menu, editor-style, featured-images, microformats, post-formats, rtl-language-support, sticky-post, translation-ready
Text Domain: twentythirteen" >> style.css
echo "*/" >> style.css
touch index.php header.php footer.php functions.php
#index.php
echo "<?php /*" >> index.php
echo "* @package: Phoenix Theme" >> index.php
echo "*theme index" >> index.php
echo "*/ ?>" >> index.php
echo "<?php get_header(); ?>" >> index.php
echo "" >> index.php
echo "<?php get_footer(); ?>" >> index.php
#functions.php
#create functions include files
touch inc/theme-supports.php inc/sidebar-functions.php inc/scripts-and-styles.php
echo "<?php" >> functions.php
echo "/*" >> functions.php
echo "* @package phoenix" >> functions.php
echo "*" >> functions.php
echo "*Theme Functions" >> functions.php
echo "*/" >> functions.php
echo "require_once('inc/theme-supports.php');" >> functions.php
echo "require_once('inc/scripts-and-styles.php');" >> functions.php
echo "require_once('inc/sidebar-functions.php');" >> functions.php
echo " new wordpress theme template created successfully!"
