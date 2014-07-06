require 'coveralls'
Coveralls.wear!
require 'rspec/collection_matchers'
require 'factory_girl'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.mock_with :rspec
end


require_relative '../lib/cdek_api.rb'
