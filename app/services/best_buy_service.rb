class BestBuyService
  attr_reader :connection, :key
  def initialize
    @key = ENV['API_KEY']
    @connection = Faraday.new("https://api.bestbuy.com/v1/stores")
  end

  def find_with_zip(zip)
    binding.pry
    parse(connection.get "((area(80202,25)))?apiKey=6tmxnbn286qhnt4act7h3tt8&show=longName,city,fullPostalCode,storeType,phone&format=json" )
  end

  private

  def parse
    JSON.parse(response.body, symbolize_names: true)
  end
end
