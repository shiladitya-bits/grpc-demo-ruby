# -*- ruby -*-
# encoding: utf-8

Gem::Specification.new do |s|
  s.name          = 'grpc-demo-shila'
  s.version       = '0.1.0'
  s.authors       = ['shiladitya mandal']
  s.email         = 'shiladitya@nestaway.com'
  s.homepage      = 'https://github.com/grpc/grpc'
  s.summary       = 'sample gRPC code using ruby'
  s.description   = 'tried from official docs'

  s.files         = `git ls-files -- ./*`.split("\n")
  s.executables   = `git ls-files -- ./greeter-*.rb`.split("\n").map do |f|
    File.basename(f)
  end
  s.require_paths = ['lib']
  s.platform      = Gem::Platform::RUBY

  s.add_dependency 'grpc', '~> 0.11'

  s.add_development_dependency 'bundler', '~> 1.7'
end
