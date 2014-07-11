# Free SEO Report README

# Prerequisites

  * ruby 2.0.0p353 (2013-11-22 revision 43784) [x86_64-darwin13.0.2]
  * Rails 4.0.8+
  * [Postgres.app](http://postgresapp.com/) or similar
  * Redis
    * Install: `brew install redis`
    * Start: `redis-server /usr/local/etc/redis.conf`
  * Sidekiq (included in Gemfile - just run `bundle install`)

# Running the Rails app for the first time

  * Run `bundle install`
  * Fill in environment variables in `config/application.yml`
    * An example file can be found in `config/application.example.yml`
    * Generate a secret token (for `config/initializers/secret_token.rb`) using `rake secret`
  * Run postgres.app
  * `rake db:drop && rake db:create`
  * `rake db:seed`
  * Run `rails s`, `redis-server /usr/local/etc/redis.conf` and `sidekiq`

# Resetting the database

  * Stop the Rails server
  * `rake db:drop && rake db:create && rake db:migrate && rake db:seed`
  * Start the Rails server
  * Enjoy

# Notes on development

  * If you add new JavaScript, you should add it to the <controller>.js.coffee file
    * e.g. adding a scroll-to-slider on the landing page
    * add the CS code to `static_pages.js.coffee`
  * If some JS belongs to all pages, put it in `application.js`
  * Please write all JavaScript in CoffeeScript
