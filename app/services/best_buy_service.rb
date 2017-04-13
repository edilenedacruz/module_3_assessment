class BestBuyService
  def find_with_zip(zip)
    connection = Faraday.get("https://api.bestbuy.com/v1/stores((area(#{zip},25)))?apiKey=#{ENV['API_KEY']}&show=longName,city,fullPostalCode,storeType,phone&format=json")    
    JSON.parse(connection.body, symbolize_names: true)[:stores]
  end
end
