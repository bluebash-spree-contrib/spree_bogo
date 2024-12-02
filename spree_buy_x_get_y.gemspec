# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_buy_x_get_y/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_buy_x_get_y'
  s.version     = SpreeBuyXGetY.version
  s.summary     = 'Spree Buy X Get Y'
  s.description = 'A spree extension that provides ability to avail buy x get y free promotion'
  s.required_ruby_version = '>= 2.5'

  s.author    = 'radolf-edge'
  s.email     = 'radolf@bluebash.co'
  s.homepage  = 'https://github.com/spree-edge/spree_buy_x_get_y'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 4.6.0'
  s.add_dependency 'rails', '>= 6.1.5'
  s.add_dependency 'spree', spree_version
  s.add_dependency 'spree_extension'

  # Test suite
  s.add_development_dependency 'spree_dev_tools'
  s.add_development_dependency 'byebug'
end
