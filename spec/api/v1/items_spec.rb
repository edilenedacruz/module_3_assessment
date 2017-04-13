require 'rails_helper'

RSpec.describe "API" do
  it "gets a 200 response" do

    get "/api/v1/items"

    expect(response).to be_success
    expect(response.status).to eq(200)
    # binding.pry
    # expect(page).to have_content("id")
    # expect(page).to have_content("name")
    # expect(page).to have_content("description")
    # expect(page).to have_content("image_url")
    # expect(page).to_not have_content("created_at")
    # expect(page).to_not have_content("updated_at")
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

  it "creates a record" do
    item_params = Item.create(name: "Ruby", description: "programming language", image_url: "https://www.sitepoint.com/wp-content/themes/sitepoint/assets/images/icon.ruby.png")

    post "/api/v1/items", item: { item: item_params}

    expect(response.status).to eq(201)
  end
end
