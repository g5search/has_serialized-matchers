require 'rspec/core'

RSpec.configure do |config|
  require 'has_serialized/matchers'
  config.include HasSerialized::Matchers
end
