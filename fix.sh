echo Working out HOME directory
cd ~
sleep 1s
echo Setting WP Path
HMEPATH="$(pwd)"
sleep 1s
echo Deactivating New Worker
wp plugin deactivate mainwp-child --path=$HMEPATH/public_html/
sleep 10s
echo Reactivating New Worker
wp plugin activate mainwp-child --path=$HMEPATH/public_html/
echo DONE
