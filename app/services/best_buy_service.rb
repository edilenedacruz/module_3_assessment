class BestBuyService
  attr_reader :connection
  def initialize
    @connection = 
  end

  def find_with_zip(zip)
    binding.pry
    a = parse(connection)
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
