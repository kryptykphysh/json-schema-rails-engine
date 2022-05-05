require_relative "lib/json_schema/version"

Gem::Specification.new do |spec|
  spec.name = "json_schema"
  spec.version = JsonSchema::VERSION
  spec.authors = ["Kryptyk Physh"]
  spec.email = ["kryptykphysh@kryptykphysh.xyz"]
  spec.homepage = "https://github.com/kryptykphysh/json-schema-rails"
  spec.summary = "A mountable Rails engine for json schema modelling"
  spec.description = "A mountable Rails engine for json schema modelling"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kryptykphysh/json-schema-rails"
  spec.metadata["changelog_uri"] = "https://github.com/kryptykphysh/json-schema-rails/changelog.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.2.4"

  spec.add_development_dependency "faker", "~> 2.20"
  spec.add_development_dependency "guard", "~> 2.18"
  spec.add_development_dependency "guard-minitest", "~> 2.4"
  spec.add_development_dependency "simplecov", "~> 0.21"
  spec.add_development_dependency "standard", "~> 1.11"
end
