$LOAD_PATH.unshift(File.dirname(__FILE__) + "/../lib")
require 'minitest/autorun'
require 'awesome_print'
require 'babelize'

class SheetTest < MiniTest::Unit::TestCase
  def test_sheet
    sheet = Babelize::Sheet.new('0Agc_almxTeMSdDgzWkpicHpQT09SUWFhUVloM3g4MVE')
    assert sheet.sheet
    ap sheet.sheet

    ap sheet.header
    ap sheet.goods
    puts sheet.goods.to_yaml
  end
end
