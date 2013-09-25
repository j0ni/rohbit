require 'cinch'

module Rohbit
  class Spook
    include Cinch::Plugin

    match 'spook'

    def execute(m)
      m.reply "#{spook_line}"
    end

    def spook_line
      @lines ||= File.open(File.dirname(__FILE__) + '/spook.lines') { |f| f.readlines }
      (1..4).collect { |i| @lines[rand @lines.count].strip }.join(' ')
    end
  end
end
