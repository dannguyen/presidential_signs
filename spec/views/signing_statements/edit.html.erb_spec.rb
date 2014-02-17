require 'spec_helper'

describe "signing_statements/edit" do
  before(:each) do
    @signing_statement = assign(:signing_statement, stub_model(SigningStatement))
  end

  it "renders the edit signing_statement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", signing_statement_path(@signing_statement), "post" do
    end
  end
end
