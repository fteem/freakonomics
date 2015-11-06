# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freakonomics/version'

Gem::Specification.new do |spec|
  spec.name          = "freakonomics"
  spec.version       = Freakonomics::VERSION
  spec.authors       = ["Ile Eftimov"]
  spec.email         = ["ileeftimov@gmail.com"]
  spec.licenses      = ['MIT']
  spec.summary       = %q{Freakonomics Radio CLI downloader}
  spec.description   = %q{Freakonomics is a CLI app built with Ruby. It's purpose is to download episodes of Freakonomics Radio via the command line.}
  spec.homepage      = "https://github.com/fteem/freakonomics"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "bin"]

  spec.add_dependency "nokogiri", "~> 1.6.6.0"
  spec.add_dependency "progressbar", "~> 0.6"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8"
end
