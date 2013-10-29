$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acitree/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acitree-rails"
  s.version     = Acitree::VERSION
  s.authors     = ["Jonathan Jeffus"]
  s.email       = ["jjeffus@gmail.com"]
  s.homepage    = "https://github.com/jjeffus/acitree-rails"
  s.summary     = "Dragos Ursu's excellent JQuery based treeview control, now available as a Rails engine!"
  s.description = "Acitree is an excellent JQuery based treeview control. See http://plugins.jquery.com/aciTree/"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.15"
  s.add_dependency "jquery-rails"
end
