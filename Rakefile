require 'bundler/gem_tasks'

require_relative 'lib/babelize'

namespace :babelize do

  desc 'Exports the contents of Google Spreadsheet to localized YAML files'
  task :export do
    sheet = Babelize::Sheet.new
    puts sheet.export
  end

end

task :jig do
  sheet = Babelize::Sheet.new
end
