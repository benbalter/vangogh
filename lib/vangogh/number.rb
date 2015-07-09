module Vangogh
  class Number

    attr_accessor :value

    def initialize(value)
      if value.is_a?(String)
        @value = value.strip.to_f
      else
        @value = value
      end
    end

    def abstract
      value.round(1 - abstracted_digits)
    end

    def abbreviate
      SI.convert(abstract).sub(/0+([a-z])/i, "\\1").sub(/\.([a-z])/i, "\\1")
    end

    private

    def digits
      value.to_i.to_s.length
    end

    def abstracted_digits
      if digits <= 4
        3
      elsif digits <= 6
        4
      elsif digits <= 7
        5
      elsif digits <= 8
        6
      elsif digits > 8
        7
      end
    end
  end
end
