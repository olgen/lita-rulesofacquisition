Gem::Specification.new do |spec|
  spec.name          = "lita-rulesofacquisition"
  spec.version       = "0.1.3"
  spec.authors       = ["Shaun Martin"]
  spec.email         = ["shaun@samsite.ca"]
  spec.description   = "Displays one of the Ferengi Rules of Acquisition"
  spec.summary       = "Displays one of the Ferengi Rules of Acquisition"
  spec.homepage      = "https://github.com/inhumantsar/lita-rulesofacquisition"
  spec.license       = ""
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
