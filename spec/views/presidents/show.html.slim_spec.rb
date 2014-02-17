require 'spec_helper'

describe "presidents/show" do
  before(:each) do
    @president = assign(:president, stub_model(President))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
