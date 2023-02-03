install:
	bundle install

without-production:
	bundle config set --local without 'production'

install-without-production: without-production install
	
lint:
	bundle exec rubocop

lint-fix:
	bundle exec rubocop -A

test:
	bundle exec rake test

.PHONY: test
