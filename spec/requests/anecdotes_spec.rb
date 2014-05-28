require 'spec_helper'

describe "Anecdotes" do
  
  it "should have the content 'Listing des anecdotes'" do
      visit '/anecdotes'
      expect(page).to have_content('Listing des anecdotes')
    end

end
