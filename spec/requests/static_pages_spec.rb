require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

	    it "should have the content 'Kevin's" do
	      visit '/static_pages/home'
	      expect(page).to have_content("Kevin's")
	    end
	end

end
