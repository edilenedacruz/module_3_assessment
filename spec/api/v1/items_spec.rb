require 'rails_helper'

RSpec.describe "API" do
  it "gets a 200 response" do

    get "/api/v1/items"

    expect(response).to be_success
    expect(response.status).to eq(200)
  end

  it "gets an individual item" do

    get "/api/v1/items/1"

    expect(response).to be_success
    expect(response.status).to eq(200)

  end

  xit "deletes a record" do

    delete "/api/v1/items/1"

    expect(response).to eq(204)
  end

  xit "creates a record" do
    item_params = Item.create(name: "Ruby", description: "programming language", image_url: "https://www.sitepoint.com/wp-content/themes/sitepoint/assets/images/icon.ruby.png")

    post "/api/v1/items", { item: item_params}

    expect(response.status).to eq(201)
  end
end
