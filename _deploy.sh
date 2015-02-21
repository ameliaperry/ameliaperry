#!/bin/sh
bundler exec jekyll build
rsync -vtrl _site/ wperry@willperry.me:/home/wperry/webapps/static/

