# Babelize

A tool for localizing Rails apps.


## Setup

Add babelize to gemfile

    gem 'babelize'
    rails g babelize:install

Edit `config/initializers/babelize.rb` like so:

    Babelize.username = 'steve.perkins@12spokes.com'
    Babelize.password = 'xxxxxxxxx'
    Babelize.spreadsheet_key = 'yyyyyyyyyyy'

Now run

    rake babelize:init

This will load the translations into the database.


## Rake Tasks

    rake babelize:export:yaml
    rake babelize:export:db


## Notes

* https://github.com/rails/rails/issues/1499
* http://stackoverflow.com/questions/5130822/ruby-on-rails-json-parse-unexpected-token-error
