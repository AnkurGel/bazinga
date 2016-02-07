# Bazinga
Inspired by [marco-polo](https://github.com/arches/marco-polo), Bazinga gives color-coded tags of your Rails app name and environment in _console_, to prevent devs' bad karma to balance on production. 

## Installation

Add this line to your Rails project's Gemfile:

    gem 'bazinga'

And then execute:

    $ bundle

## Usage
Just run `rails console`.
![dev](https://www.dropbox.com/s/7hdoy6b21qnm3or/Screenshot%202016-02-07%2018.58.28.png?raw=1)
![staging](https://www.dropbox.com/s/3o4jmna8bd9dsyk/Screenshot%202016-02-07%2019.02.46.png?raw=1)
## Customization:
You can modify the app name by adding the following in your project's `config/application.rb` (inside `class Application`) :
```ruby
    console do
      Bazinga::APP_NAME = 'railsApp'
    end
```
or start the console by customized environment tag:   
`BAZINGA_APP_NAME=myAwesomeApp rails console production` 

## Pipeline
* Add support for `pry-rails`
* Prevent sql write queries in _production_. 

## Contributing

1. Fork it ( https://github.com/AnkurGel/bazinga/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

