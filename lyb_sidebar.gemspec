# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "lyb_sidebar"
  s.summary = "LybSidebar drys sidebars."
  s.description = "LybSidebar simplifies dries up common sidebar code."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.1.0"
end
