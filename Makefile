.PHONY: build deploy clean

build:
	bundle exec jekyll build

deploy:
	rsync -av --delete _site/ mythic:www/www.laura-garrison.com/

clean:
	rm -rf _site/