# frozen_string_literal: true

require_relative "nislike/version"

module Nislike
  class UsingNilError < StandardError
    def initialize(msg="Don't use nil")
      super
    end
  end

  def dont_use_nil(value)
    raise UsingNilError if value.nil?
    value
  end
  module_function :dont_use_nil
end
