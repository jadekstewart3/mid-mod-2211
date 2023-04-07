require "rails_helper"

RSpec.describe "Food Search Index" do
  describe "As a visitor" do 
    before :each do 
      visit root_path
    end
    
    it "displays a form to search for foods" do
      expect(page).to have_field(:q)
      
      fill_in :q, with: "Sweet Potato"
      
      click_button "Search"
      
      expect(current_path).to eq("/foods")

      expect(page).to have_content("SWEET POTATO")
      expect(page).to have_content("Upc:20042431")
      expect(page).to have_content("Brand:FRESH & EASY")
      expect(page).to have_content("Ingredients:SWEET POTATO, CHIPOTLE CHICKEN")
    end
  end
end