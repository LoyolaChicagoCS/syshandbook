rsync -av -e "ssh -oPort=22222" \
	--delete \
	--exclude .htaccess \
	$(pwd)/build/ \
	syshandbook.cs.luc.edu:/var/www/vhosts/syshandbook.cs.luc.edu/htdocs/

