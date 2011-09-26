require "babelize/version"
require 'rails-i18n'
require 'google_spreadsheet'
require 'awesome_print'
require 'multi_json'
require 'highline/import'

MultiJson.engine = :yajl
I18n.backend = I18n::Backend::KeyValue.new({})

module Babelize
end

require "babelize/sheet"
