require 'cinch'

module Rohbit
  class Dogma
    include Cinch::Plugin

    match 'dogma'

    def execute(m)
      m.reply "#{dogma_line}"
    end

    def dogma_line
      @lines ||= File.open(File.dirname(__FILE__) + '/dogma.txt') { |f| f.readlines }
      @lines[rand lines.count]
    end
  end
end
