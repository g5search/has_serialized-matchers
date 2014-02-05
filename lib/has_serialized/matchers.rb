require "has_serialized/matchers/version"
require "has_serialized/matchers/have_serialized_attribute"
require "has_serialized/matchers/rspec"

module HasSerialized
  module Matchers
    def have_serialized_attribute(expected)
      HaveSerializedAttribute.new(expected)
    end
  end
end
