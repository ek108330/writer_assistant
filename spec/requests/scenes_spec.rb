require 'spec_helper'

describe "Scenes" do

    it "should have the content 'Listing scenes'" do
      visit '/scenes'
      expect(page).to have_content('Listing scenes')
    end

end
