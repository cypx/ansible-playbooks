#!/bin/bash
source /home/redmine/.rvm/scripts/rvm
cd /home/redmine/srv
rvm install 2.1.2
gem install bundler
grep -q -F "gem 'unicorn'" Gemfile || echo "gem 'unicorn'" >> Gemfile
bundle install --without development test
rake generate_secret_token
RAILS_ENV=production REDMINE_LANG=fr rake db:migrate
RAILS_ENV=production REDMINE_LANG=fr rake redmine:load_default_data
mkdir -p tmp tmp/pdf public/plugin_assets
