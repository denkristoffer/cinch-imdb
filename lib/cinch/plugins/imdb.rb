require 'filmbuff'

module Cinch
  module Plugins
    class IMDb
      include Cinch::Plugin

      def initialize(*args)
        super

        @imdb = FilmBuff::IMDb.new
        @imdb.locale = config[:locale] if config[:locale]
      end

      match /imdb (.+)/i
      def execute(m, title)
        movie = @imdb.find_by_title(title)

        m.reply "#{movie.title} - #{movie.rating}/10 - " <<
          "http://www.imdb.com/title/#{movie.imdb_id}"
      end
    end
  end
end
