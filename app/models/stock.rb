class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        begin
          timeseries = Alphavantage::TimeSeries.new(symbol: ticker_symbol)
          quote = timeseries.quote
    
          if quote.price
            quote.price
          else
            "Price not available for symbol: #{ticker_symbol}"
          end
        rescue StandardError => e
          Rails.logger.error "Alpha Vantage API error: #{e.message}"
          "Error fetching data for symbol: #{ticker_symbol}"
        end
      end
end
