#!/bin/sh
bundler exec jekyll build
rsync -vtrl --delete _site/ wperry@ameliaperry.me:/home/wperry/webapps/static/

