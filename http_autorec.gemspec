# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_autorec/version'

Gem::Specification.new do |spec|
  spec.name          = "http_autorec"
  spec.version       = HTTPAutorec::VERSION
  spec.authors       = ["vzvu3k6k"]
  spec.email         = ["vzvu3k6k@gmail.com"]
  spec.summary       = %q{Just `require` me, then your HTTP requests will be cached.}
  spec.description   = %q{When required, HTTPAutorec enables VCR (with WebMock) and all HTTP requests are cached in ./http_autorec_cache by default. You can temporarily enable it without modifying your code, like this: `ruby -rhttp_autorec your_script.rb`.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "vcr", "~> 2.9"
  spec.add_dependency "webmock", "~> 1.17"
end
