require 'spec_helper'

describe "Chapitres" do
  
  it "should have the content 'Listing des chapitres'" do
      visit '/chapitres'
      expect(page).to have_content('Listing des chapitres')
    end

end
