# mruby-plato-buttonswitch-sim   [![Build Status](https://travis-ci.org/mruby-plato/mruby-plato-buttonswitch-sim.svg?branch=master)](https://travis-ci.org/mruby-plato/mruby-plato-buttonswitch-sim)
Plato::ButtonSwitch class for simulator
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio-sim'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-digitalio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-digitalio-sim'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-buttonswitch'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-buttonswitch-sim'
end
```

## example
```ruby
btn = Plato::ButtonSwitch.new(0)
if btn.on?
  puts "Button ON"
end
```

## License
under the MIT License:
- see LICENSE file
