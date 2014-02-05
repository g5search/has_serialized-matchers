module HasSerialized
  module Matchers
    class HaveSerializedAttribute
      def initialize(attr_name)
        @attr_name = attr_name
      end

      def matches?(model)
        @model = model
        check_methods
      end

      def in(column)
        @column = column
        self
      end

      def failure_message
        "expected #{@model.inspect} to have serialized attribute #{@attr_name}"
      end

      def description
        "Ensures that #{@model} has serialized attribute #{@attr_name}."
      end

      private

      def check_methods
        unless @column
          fail %Q{
          Please specify the column in which to find the `#{@attr_name}`.
          Ex: have_serialized_attribute(:#{@attr_name}).in(:column_name)
          }
        end
        @model.send(@column).has_key? @attr_name
      end
    end
  end
end
