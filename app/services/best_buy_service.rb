class BestBuyService
  attr_reader :connection, :key
  def initialize
    @key = ENV['API_KEY']
    @connection = Faraday.new("https://api.bestbuy.com/v1")
  end

  def find_with_zip(zip)
    a = parse(@connection.get 
    binding.pry
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
