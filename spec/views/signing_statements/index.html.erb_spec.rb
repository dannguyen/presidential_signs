require 'spec_helper'

describe "signing_statements/index" do
  before(:each) do
    assign(:signing_statements, [
      stub_model(SigningStatement),
      stub_model(SigningStatement)
    ])
  end

  it "renders a list of signing_statements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
