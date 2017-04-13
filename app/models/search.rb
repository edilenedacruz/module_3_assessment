class Search
  attr_reader :long_name, :city, :fullPostalCode, :type, :phone
  def initialize(attributes)
    @long_name = attributes[:longName]
    @city = attributes[:city]
    @zipcode = attributes[:fullPostalCode]
    @type = attributes[:storeType]
    @phone = attributes[:phone]
  end

  def self.find_stores_with(zip)
    BestBuyService.new.find_with_zip(zip).map do |store|
      Search.new(store)
    end
  end
end
