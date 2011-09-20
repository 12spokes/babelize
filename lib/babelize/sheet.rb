module Babelize
  class Sheet

    attr_accessor :sheet
    def initialize(key)
      @key = key
      @@session = nil
      @rows, @cols = [], []
      @handlers = {}
      @row_blocks = []
    end

    def ask_username
      username = ENV['GOOGLE_USERNAME']
      username ||= ask("Google Username: ")
    end

    def ask_password
      pass = ENV['GOOGLE_PASSWORD']
      pass ||= ask("Google Password: ") {|q| q.echo = '*'}
    end

    def session
      @@session ||= GoogleSpreadsheet.login(ask_username, ask_password)
    end

    def sheet
      @sheet ||= session.spreadsheet_by_key(@key).worksheets[0]
    end

    def header
      @sheet.rows[0]
    end

    def goods
      @goods = {}
      @sheet.rows.each_with_index do |row, row_num|
        next if row_num == 0
        key = row[0]
        row.each_with_index do |col, col_num|
          next if col_num == 0
          local = header[col_num]
          @goods[local] ||= {}
          @goods[local][key] = col
        end
      end
      return @goods
    end

  end
end
