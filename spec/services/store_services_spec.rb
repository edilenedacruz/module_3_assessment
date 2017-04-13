require 'rails_helper'

RSpec.describe BestBuyService do
  attr_reader :best_buy
  before(:each) do
    @best_buy = BestBuyService.new
  end

  it "when I visit '/' I can search for stores with zip '80202' " do

    stores = @best_buy.find_with_zip("80202")
  end
end
