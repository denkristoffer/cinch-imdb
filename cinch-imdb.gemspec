# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "cinch-imdb"
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kristoffer Sachse"]
  s.email       = ["kristoffer@sachse.nu"]
  s.homepage    = "https://github.com/sachse/cinch-imdb"
  s.summary     = %q{Gives Cinch IRC bots access to IMDb data}
  s.description = %q{Gives Cinch IRC bots access to IMDb data}

  s.rubyforge_project = "cinch-imdb"

  s.add_dependency("cinch", "~> 1.0")
  s.add_dependency("filmbuff", ">= 0.1.0")

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
