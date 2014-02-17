require 'spec_helper'

describe "signing_statements/show" do
  before(:each) do
    @signing_statement = assign(:signing_statement, stub_model(SigningStatement))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
