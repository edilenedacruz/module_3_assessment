require 'rails_helper'

RSpec.describe "API" do
  it "gets all items" do
    items = Fabricate.times(10, :item)

    get "/api/v1/items"

    expect(response).to be_success
    expect(response.status).to eq(200)

    all_items = JSON.parse(response.body)
    expect(all_items.count).to eq(10)
  end

  it "gets an individual item" do
    item = Fabricate(:item, name: "stuff", description: "does stuff")
    id = item.id

    get "/api/v1/items/#{id}"

    expect(response).to be_success
    expect(response.status).to eq(200)

    item_json = JSON.parse(response.body)

    expect(item_json["name"]).to eq("stuff")
    expect(item_json["description"]).to eq("does stuff")
  end

  it "deletes a record" do
    item = Fabricate(:item)

    expect(Item.count).to eq(1)

    delete "/api/v1/items/#{item.id}"

    expect(response.status).to eq(204)
    expect(Item.count).to eq(0)
    expect{Item.find(item.id)}.to raise_error(ActiveRecord::RecordNotFound)
  end

  it "creates a record" do
    item_params = {name: "Ruby", description: "programming language", image_url: "https://www.sitepoint.com/wp-content/themes/sitepoint/assets/images/icon.ruby.png"}

    post "/api/v1/items", item: { item: item_params}

    item = Item.last

    expect(response.status).to eq(201)
  end
end
