# Cinch-IMDb - IMDb.com plugin

## Description

This plugin uses the Film Buff gem to access data from IMDb.com.

## Installation

### RubyGems

You can install the latest Cinch-IMDb gem using RubyGems

    gem install cinch-imdb

### GitHub

Alternatively you can check out the latest code directly from Github

    git clone http://github.com/sachse/cinch-imdb.git

## Usage

Install the gem and load it in your Cinch bot:

    require "cinch"
    require "cinch/plugins/imdb"

    bot = Cinch::Bot.new do
      configure do |c|
        # add all required options here
        c.plugins.plugins = [Cinch::Plugins::IMDb] # optionally add more plugins
      end
    end

    bot.start

If you want to return results in other languages this is possible as well. The supported locales are "de_DE", "en_US", "es_ES", "fr_FR", "it_IT" and "pt_PT" with "en_US" being the default.

    require "cinch"
    require "cinch/plugins/imdb"

    bot = Cinch::Bot.new do
      configure do |c|
        # add all required options here
        c.plugins.plugins = [Cinch::Plugins::IMDb] # optionally add more plugins
        c.plugins.options[Cinch::Plugins::IMDb][:locale] = "de_DE"
      end
    end

    bot.start

## Commands

### imdb

By default the bot will reply with "Title (Year) - Rating/10 - IMDb link"
e.g. "The Wizard of Oz (1939) - 8.3/10 - http://www.imdb.com/title/tt0032138"

## Authors

* [Kristoffer Sachse](https://github.com/sachse)

## Contribute

Fork the project, implement your changes in it's own branch, and send
a pull request to me. I'll gladly consider any help or ideas.
