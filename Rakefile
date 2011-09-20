require 'bundler/gem_tasks'

require_relative 'lib/babelize'

namespace :babelize do

  desc 'Exports the contents of Google Spreadsheet to localized YAML files'
  task :export do
    sheet = Babelize::Sheet.new('0Agc_almxTeMSdDgzWkpicHpQT09SUWFhUVloM3g4MVE')
    yaml = sheet.goods.to_yaml
    puts yaml
    open 'language.yml', 'w' do |f|
      f << yaml
    end
  end

end

task :jig do
  sheet = Babelize::Sheet.new('0Agc_almxTeMSdDgzWkpicHpQT09SUWFhUVloM3g4MVE')
end
