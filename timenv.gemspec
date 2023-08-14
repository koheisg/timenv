# frozen_string_literal: true

require_relative "lib/timenv/version"

Gem::Specification.new do |spec|
  spec.name = "timenv"
  spec.version = Timenv::VERSION
  spec.authors = ["koheisg"]
  spec.email = ["koheisg@hey.com"]

  spec.summary = "injection time gem"
  spec.description = "Timenv is a gem that retrieves the current time. Additionally, it allows for easy modification of the current time through environment variables."
  spec.homepage = "https://github.com/koheisg/timenv"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/koheisg/timenv"
  spec.metadata["changelog_uri"] = "https://github.com/koheisg/timenv/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
