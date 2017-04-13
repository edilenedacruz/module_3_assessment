require 'rails_helper'

RSpec.describe "GET" do
  it "gets a 200 response" do

    get "/api/v1/items"

    expect(response).to be_success
    expect(response.status).to eq(200)
  end
end
