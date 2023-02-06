install:
	gem install slim_lint
	bin/setup
	RAILS_ENV=production bin/rails assets:precompile

without-production:
	bundle config set --local without 'production'

install-without-production: without-production install

start-dev:
	RAILS_ENV=development bin/rails assets:precompile
	bin/rails s -p 3000 -b "127.0.0.1"

start:
	bin/rails s -p 3000 -b "0.0.0.0"

console:
	bin/rails console

test:
	NODE_ENV=test bin/rails test
	
slim-lint:
	slim-lint app/**/*.slim

lint: slim-lint
	bundle exec rubocop

lint-fix:
	bundle exec rubocop -A

.PHONY: test
