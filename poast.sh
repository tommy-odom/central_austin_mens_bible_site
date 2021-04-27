#!/bin/sh

cd src/central_austin_mens_bible_site/
git pull
rm -rf public
hugo -D
rm -rf /var/www/study
cp -R public/. /var/www/study/
systemctl restart nginx
echo "website update"
