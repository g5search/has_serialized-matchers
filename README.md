# HasSerialized::Matchers

Provides shoulda-style matchers for RSpec to [has_serialized](https://github.com/ramontayag/has_serialized)

## Installation

Add this line to your application's Gemfile:

    gem 'has_serialized-matchers', group: :test

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install has_serialized-matchers

## Usage

    it { should have_serialized_attribute(:serialized_attr).in(:serialized_attributes_list) }

## Contributing

1. Fork it ( http://github.com/<my-github-username>/has_serialized-matchers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
