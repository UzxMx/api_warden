lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api_warden/version'

Gem::Specification.new do |spec|
  spec.name          = 'api_warden'
  spec.version       = ApiWarden::VERSION
  spec.authors       = ['Mingxiang Xue']
  spec.email         = ['327110424@163.com']

  spec.summary       = 'Use access token to protect your API in rails.'
  spec.description   = 'Use access token to protect your API in rails.'
  spec.homepage      = 'https://github.com/UzxMx/api_warden'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency 'redis', '~> 3.2', '>= 3.2.1'
  spec.add_dependency 'connection_pool', '~> 2.2', '>= 2.2.0'

  spec.add_development_dependency 'redis-namespace', '~> 1.5', '>= 1.5.2'
  spec.add_development_dependency 'fakeredis'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-json_expectations'
end
