require 'cinch'

require 'rohbit/version'
require 'rohbit/dogma/dogma'

module Rohbit
  class Bot < Cinch::Bot
    def self.create(config)
      new do
        configure do |c|
          c.nick = config['nick']
          c.server = config['server']
          c.channels = config['channels']
          c.plugins.plugins = [Dogma]
        end
      end
    end
  end
end
