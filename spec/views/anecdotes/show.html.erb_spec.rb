require 'spec_helper'

describe "anecdotes/show" do
  before(:each) do
    @anecdote = assign(:anecdote, stub_model(Anecdote,
      :sujet => "MyText",
      :theme => "Theme",
      :chapitre_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Theme/)
    rendered.should match(/1/)
  end
end
