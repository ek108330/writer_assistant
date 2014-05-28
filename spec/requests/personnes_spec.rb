require 'spec_helper'

describe "Personnes" do
  
  it "should have the content 'Listing des personnes'" do
      visit '/personnes'
      expect(page).to have_content('Listing des personnes')
    end

end
