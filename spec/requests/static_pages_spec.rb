require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

	    it "should have the content 'Writer'" do
	      visit '/static_pages/home'
	      expect(page).to have_content('Writer')
	    end
	end

end
