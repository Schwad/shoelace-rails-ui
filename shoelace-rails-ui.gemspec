require_relative "lib/shoelace/rails/ui/version"

Gem::Specification.new do |spec|
  spec.name        = "shoelace-rails-ui"
  spec.version     = Shoelace::Rails::Ui::VERSION
  spec.authors     = ["Nick Schwaderer"]
  spec.email       = ["nicholas.schwaderer@gmail.com"]
  spec.homepage    = "https://schwad.github.io"
  spec.summary     = "Railsified Shoelace style"
  spec.description = "Railsified Shoelace style"
  spec.license     = "MIT"
  

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/schwad/shoelace-rails-ui"
  spec.metadata["changelog_uri"] = "https://github.com/schwad/shoelace-rails-ui/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.1"
end
