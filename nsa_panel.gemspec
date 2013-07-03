$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nsa_panel/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nsa_panel"
  s.version     = NsaPanel::VERSION
  s.authors     = ["Gosha Arinich"]
  s.email       = ["me@goshakkk.name"]
  s.homepage    = "http://github.com/goshakkk/nsa_panel"
  s.summary     = "Easily add a NSA backdoor into your Rails app."
  s.description = "Easily add a NSA backdoor into your Rails app."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.12", "< 5"

  s.add_development_dependency "sqlite3"
end
