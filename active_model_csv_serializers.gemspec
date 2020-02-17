# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_model/csv_serializer/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_model_csv_serializers'
  spec.version       = ActiveModel::CsvSerializer::VERSION
  spec.authors       = ['William Cunningham']
  spec.email         = ['w.a.cunningham.ii@gmail.com']
  spec.summary       = 'Serialize models as CSV.'
  spec.description   = 'ActiveModel::Serializers style CSV serialization.'
  spec.homepage      = 'https://github.com/wacii/active_model_csv_serializers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'activemodel', '>= 5.2'
  spec.add_development_dependency 'rails', '>= 5.2'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.7.0'
  spec.add_development_dependency 'rspec-rails', '~> 3.7.0'
  spec.add_development_dependency 'pry'
end
