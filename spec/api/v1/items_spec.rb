require 'rails_helper'

RSpec.describe "GET" do
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

  it "gets "
end
