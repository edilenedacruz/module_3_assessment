class BestBuyService
  attr_reader :connection, :zip
  def initialize(zip)
    @zip = zip
    @connection = Faraday.get("https://api.bestbuy.com/v1/stores((area(#{zip},25)))?apiKey=#{ENV['API_KEY']}&show=longName,city,fullPostalCode,storeType,phone&format=json")
  end

  def find_with_zip
    parse(@connection)
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
