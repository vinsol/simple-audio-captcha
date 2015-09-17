# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_audio_captcha/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_audio_captcha"
  spec.version       = SimpleAudioCaptcha::VERSION
  spec.authors       = ["Aditya Kapoor, Nimish Mehta"]
  spec.email         = ["adityakapoor.mait@gmail.com", "nimish@vinsol.com"]
  spec.summary       = "Simple Audio Extension to Simple Captcha"
  spec.description   = "adds audio support to simple captcha"
  spec.homepage      = "https://github.com/vinsol/simple-audio-captcha"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.add_development_dependency "bundler", '~> 1.6'
  spec.add_development_dependency "rake",    '~> 10.0'
  spec.add_development_dependency "rspec",   '~> 3.3.0'
  spec.add_dependency "simple_captcha2",     '~> 0.3.4'
  spec.add_dependency "espeak-ruby",         '~> 1.0.2'
end
