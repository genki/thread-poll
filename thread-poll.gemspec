# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thread-poll/version'

Gem::Specification.new do |spec|
  spec.name          = "thread-poll"
  spec.version       = ThreadPoll::VERSION
  spec.authors       = ["Genki Takiuchi"]
  spec.email         = ["genki@s21g.com"]
  spec.description   = %q{Spawning the native thread without GVL calling an arbitrary function in RubyExt.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/genki/thread-poll"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
