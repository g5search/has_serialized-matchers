module HasSerialized
  module Matchers
    class HaveSerializedAttribute
      def initialize(attr_name)
        @attr_name = attr_name
      end

      def matches?(model)
        @model = model
        methods_correct? && values_correct?
      end

      def in(column)
        @column = column
        self
      end

      def with_default_value(value)
        @value = value
        self
      end

      def failure_message
        base_message = %Q{expected #{@model.class.name} to
        have serialized attribute #{@attr_name}
        in #{@column}
        }

        if @value.to_s
          base_message += "with default value #{@value}"
        end

        base_message
      end

      def description
        "Ensures that #{@model} has serialized attribute #{@attr_name}."
      end

      private

      def methods_correct?
        unless @column
          fail %Q{
          Please specify the column in which to find the `#{@attr_name}`.
          Ex: have_serialized_attribute(:#{@attr_name}).in(:column_name)
          }
        end

        serialized_column = @model.send(@column)
        serialized_column and serialized_column.has_key? @attr_name
      end

      def values_correct?
        if @value
          @model.send(@attr_name) == @value
        else
          true
        end
      end
    end
  end
end
