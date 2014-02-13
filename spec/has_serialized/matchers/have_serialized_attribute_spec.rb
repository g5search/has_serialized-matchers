require 'spec_helper'
require 'has_serialized'

module HasSerialized
  module Matchers
    describe HaveSerializedAttribute do
      before :all do
        m = ActiveRecord::Migration.new
        m.verbose = false
        m.create_table :serializeables do |t|
          t.string :serial_attrs
        end
      end

      after :all do
        m = ActiveRecord::Migration.new
        m.verbose = false
        m.drop_table :serializeables
      end

      class Serializeable < ActiveRecord::Base
        has_serialized :serial_attrs, serial_attr: 'dummy'
      end

      context 'matchers' do
        subject{ Serializeable.new }

        it { should have_serialized_attribute(:serial_attr).in(:serial_attrs).with_default_value('dummy') }
      end
    end
  end
end
