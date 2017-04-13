require 'rails_helper'

RSpec.feature "User can search" do
  it "can visit '/' " do

    visit '/'

    expect(current_path).to eq(root_path)

    find(:css, "input[id$='q']").set("80202")
    click_on "Search"

    expect(current_path).to eq("/search")
  end

  xit "can see stores within 25 miles of 80202" do

    visit '/'

    expect(current_path).to eq(root_path)

    find(:css, "input[id$='q']").set("80202")
    click_on "Search"

    expect(page).to have_content("25 miles")
    expect(page).to have_content("80202")
    # expect(page).to have_content("16 Total Stores")
    expect(page).to have_content("Store name")
    expect(page).to have_content("City")
    expect(page).to have_content("Distance")
    expect(page).to have_content("Phone number")
    expect(page).to have_content("Type of store")
  end
end

# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "16 Total Stores"
# And I should see exactly 10 results
# And I should see the long name, city, distance, phone number and store type for each of the 10 results
