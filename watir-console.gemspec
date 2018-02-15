# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'console/version'

Gem::Specification.new do |spec|
  spec.name          = "watir-console"
  spec.version       = Watir::Console::VERSION
  spec.authors       = ["thamilton-rsg"]
  spec.email         = ["thamilton@rsglab.com"]

  spec.summary       = %q{: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/thamilton2014/watir-console"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "watir", "~> 6.10.3"
  spec.add_runtime_dependency 'pry', '~> 0.11.3'

end
