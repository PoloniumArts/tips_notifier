# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'advices_notifier/version'

Gem::Specification.new do |spec|
  spec.name          = 'advices_notifier'
  spec.version       = AdvicesNotifier::VERSION
  spec.authors       = ['wwju']
  spec.email         = ['wwju@yandex.ru']
  spec.description   = %q{Usefull advices using system notifications}
  spec.summary       = %q{Every 10 minutes gem fier system notification with usefull advice}
  # spec.homepage      = ""
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.executables   = 'advices_notifier.rb'
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'notifier', '~> 0.4.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
