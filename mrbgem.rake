MRuby::Gem::Specification.new('mruby-plato-buttonswitch-sim') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Plato developers'
  spec.description = 'Plato::ButtonSwitch class for Plato simulator'

  spec.add_dependency('mruby-eval')
  spec.add_dependency('mruby-plato-gpio')
  spec.add_dependency('mruby-plato-gpio-sim')
  spec.add_dependency('mruby-plato-digitalio')
  spec.add_dependency('mruby-plato-digitalio-sim')
end
