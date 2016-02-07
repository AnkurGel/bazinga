module Bazinga
  class Runner
    COLOR_MAP = {
        'red'    => "\033[0;31m",
        'yellow' => "\033[0;33m",
        'green'  => "\033[0;32m",
        'black'  => "\033[0;30m",
        'reset'  => "\033[0;0m"
    }

    class << self

      def run
        env_tag = (ENV['RAILS_ENV'] && ENV['RAILS_ENV'].downcase) || (Rails && Rails.env && Rails.env.downcase)

        app_name =
            ENV['BAZINGA_APP_NAME'] ||
                (Bazinga::APP_NAME rescue nil) ||
                Rails.application.class.parent_name.underscore.gsub("_", "-")

        console_tag = case env_tag
                        when 'production' then "(#{COLOR_MAP['red']}prod#{COLOR_MAP['reset']})"
                        when 'staging' then "(#{COLOR_MAP['yellow']}staging#{COLOR_MAP['reset']})"
                        when 'development' then "(#{COLOR_MAP['green']}development#{COLOR_MAP['reset']})"
                        else "(#{COLOR_MAP['yellow']}#{env_tag})#{COLOR_MAP['reset']}"
                      end

        IRB.conf[:PROMPT][:RAILS_ENV] = {
            :PROMPT_I => "#{app_name}#{console_tag}> ",
            :PROMPT_N => "#{app_name}#{console_tag}> ",
            :PROMPT_S => "",
            :PROMPT_C => "#{app_name}#{console_tag}?> ",
            :RETURN => "=> %s\n"
        }

        IRB.conf[:PROMPT_MODE] = :RAILS_ENV
      end
    end
  end
end

Bazinga::Runner.run