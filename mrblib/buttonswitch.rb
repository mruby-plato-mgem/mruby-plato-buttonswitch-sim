#
# Plato::ButtonSwitch class for Plato simulator
#
module Plato
  class ButtonSwitch < DigitalIO
    def initialize(pin, act=:low)
      super(pin, false, act)
      $sim.cmd "BTN,#{@pin},new,#{act}"
      self
    end

    def on?
      eval($sim.cmd("BTN,#{@pin},on?"))
    end
    def off?
      eval($sim.cmd("BTN,#{@pin},off?"))
    end
  end
end
