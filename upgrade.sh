echo Working out HOME directory
cd ~
sleep 1s
echo Setting WP Path
HMEPATH="$(pwd)"
sleep 1s
echo Deactivating Old Workers
echo
wp plugin deactivate worker --path=$HMEPATH/public_html/ && wp plugin delete worker --path=$HMEPATH/public_html/
wp plugin deactivate auocloudworker --path=$HMEPATH/public_html/ && wp plugin delete auocloudworker --path=$HMEPATH/public_html/
sleeps 1s
echo Installing New Workers
wp plugin install https://downloads.wordpress.org/plugin/mainwp-child.4.0.7.1.zip --path=$HMEPATH/public_html/
wp plugin activate mainwp-child --path=$HMEPATH/public_html/
