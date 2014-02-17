require 'spec_helper'

describe "signing_statements/new" do
  before(:each) do
    assign(:signing_statement, stub_model(SigningStatement).as_new_record)
  end

  it "renders new signing_statement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", signing_statements_path, "post" do
    end
  end
end
