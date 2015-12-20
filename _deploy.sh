#!/bin/sh
bundler exec jekyll build
rsync -vtrl --delete _site/ wperry@willperry.me:/home/wperry/webapps/static/

