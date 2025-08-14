# frozen_string_literal: true

class InputComponent < ViewComponent::Base
  def initialize(name:, label:, value:, step:, min: 1, max: 1000, required: true, disabled: false)
    @name = name
    @label = label
    @value = value
    @step = step
    @min = min
    @max = max
    @required = required
    @disabled = disabled
  end
end
