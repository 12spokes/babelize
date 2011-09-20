# Babelize

A tool for localizing Rails apps.  Edit your translations Google spreadsheets.  Export to YAML or DB.


## Setup

To avoid typing Google username and password each time, create a file CREDS like so:

    export GOOGLE_USERNAME = 'name@domain.com'
    export GOOGLE_PASSWORD = 'xxxxxx'

and run `source CREDS`


## Notes

* https://github.com/rails/rails/issues/1499
* http://stackoverflow.com/questions/5130822/ruby-on-rails-json-parse-unexpected-token-error
