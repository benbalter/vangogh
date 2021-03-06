require_relative "vangogh/version"
require_relative "vangogh/number"
require 'si/minimal'

module Vangogh
  class << self
    def abstract(value)
      Number.new(value).abstract
    end

    def abbreviate(value)
      Number.new(value).abbreviate
    end

    def numeric?(text)
      !!(text.to_s.strip =~ /\A[\d\,.]+\z/)
    end
  end
end
