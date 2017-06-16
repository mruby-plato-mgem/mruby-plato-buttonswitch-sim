# Plato::ButtonSwitch class

class Sim
  def cmd(v)
    'true'
  end
end
$sim = Sim.new

assert('ButtonSwitch', 'class') do
  assert_equal(Plato::ButtonSwitch.class, Class)
end

assert('ButtonSwitch', 'superclass') do
  assert_equal(Plato::ButtonSwitch.superclass, Plato::DigitalIO)
end

assert('ButtonSwitch', 'new') do
  b1 = Plato::ButtonSwitch.new(0)
  b2 = Plato::ButtonSwitch.new(0, :high)
  assert_true(b1 && b2)
end

assert('ButtonSwitch', 'new - argument error') do
  assert_raise(ArgumentError) {Plato::ButtonSwitch.new}
  assert_raise(ArgumentError) {Plato::ButtonSwitch.new(0, :low, false)}
end

assert('ButtonSwitch', 'on?') do
  b = Plato::ButtonSwitch.new(0).on?
  assert_true(b == true || b == false)
end

assert('ButtonSwitch', 'off?') do
  b = Plato::ButtonSwitch.new(0).off?
  assert_true(b == true || b == false)
end
