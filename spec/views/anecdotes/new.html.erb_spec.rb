require 'spec_helper'

describe "anecdotes/new" do
  before(:each) do
    assign(:anecdote, stub_model(Anecdote,
      :sujet => "MyText",
      :theme => "MyString"
    ).as_new_record)
  end

  it "renders new anecdote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anecdotes_path, "post" do
      assert_select "textarea#anecdote_sujet[name=?]", "anecdote[sujet]"
      assert_select "input#anecdote_theme[name=?]", "anecdote[theme]"
    end
  end
end
