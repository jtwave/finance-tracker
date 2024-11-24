# config/initializers/alphavantage.rb

require 'alphavantage'

Alphavantage.configure do |config|
  config.api_key = ENV['ALPHA_VANTAGE_API_KEY'] # Securely store your API key
end
