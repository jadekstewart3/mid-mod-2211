require "rails_helper"

RSpec.describe "Food Search Index" do
  describe "As a visitor" do 
    before :each do 
      visit root_path
      save_and_open_page
    end

    it "displays a form to search for foods" do
      expect(page).to have_field(:q)
    end
  end
end