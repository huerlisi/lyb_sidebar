# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'lyb_sidebar/version'

Gem::Specification.new do |s|
  # Description
  s.name        = "lyb_sidebar"
  s.version     = LybSidebar::VERSION
  s.summary     = "LybSidebar dries sidebars."
  s.description = "LybSidebar simplifies common sidebar code."

  s.homepage     = "https://github.com/huerlisi/lyb_sidebar"
  s.authors     = ["Simon Hürlimann (CyT)"]
  s.email       = ["simon.huerlimann@cyt.ch"]
  s.licenses     = ["MIT"]

  # Files
  # Files
  s.extra_rdoc_files = [
    "MIT-LICENSE",
    "README.rdoc"
  ]
  s.files        = `git ls-files app lib config db`.split("\n")

  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'

  # Dependencies
  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.1"])
    else
      s.add_dependency(%q<rails>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.1"])
  end
end
