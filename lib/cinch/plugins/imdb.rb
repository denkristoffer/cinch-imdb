require 'filmbuff'

module Cinch
  module Plugins
    class IMDb
      include Cinch::Plugin

      def initialize(*args)
        super

        @imdb = FilmBuff::IMDb.new
        # Uncomment below if you want results returned in another language
        # Valid locales are "de_DE", "en_US", "es_ES", "fr_FR", "it_IT" "pt_PT"
        # @imdb.locale = "de_DE"
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
