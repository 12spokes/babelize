module Babelize
  class Sheet

    attr_accessor :sheet
    def initialize()
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

    def load_sheet(key)
      @sheet ||= session.spreadsheet_by_key(key).worksheets[0]
    end

  end
end
