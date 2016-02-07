require "bazinga/version"

module Bazinga
  class Railtie < Rails::Railtie
    console do
      ARGV.push '-r', File.join(File.dirname(__FILE__), 'bazinga', 'bazinga-conf.rb')
    end
  end
end
