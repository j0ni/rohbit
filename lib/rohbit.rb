require 'cinch'
require 'cinch/plugins/identify'

require 'rohbit/version'
require 'rohbit/dogma/dogma'
require 'rohbit/spook/spook'

module Rohbit
  class Bot < Cinch::Bot
    def self.create(conf)
      new do
        configure do |c|
          c.nick = conf['nick']
          c.username = conf['username']
          c.server = conf['server']
          c.channels = conf['channels']
          c.plugins.plugins = [
            Cinch::Plugins::Identify,
            Dogma,
            Spook
          ]
          if conf['password']
            c.delay_joins = :identified
            c.plugins.options[Cinch::Plugins::Identify] = {
              password: conf['password'],
              type: :nickserv
            }
          end
        end
      end
    end
  end
end
