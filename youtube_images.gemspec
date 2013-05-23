# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'youtube_images/version'

Gem::Specification.new do |spec|
  spec.name          = "youtube_images"
  spec.version       = YoutubeImages::VERSION
  spec.authors       = ["Rahul Trikha"]
  spec.email         = ["rahul.trikha@gmail.com"]
  spec.description   = %q{Extract thumbnails/image for a given youtube video ID or URL without a developer ID. It uses a URL constructor instead of an API}
  spec.summary       = %q{Extract thumbnails for a given youtube video ID or URL without a developer ID}
  spec.homepage      = "http://github.com/rahult/youtube_images"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
