require 'spec_helper'

describe "presidents/index" do
  before(:each) do
    assign(:presidents, [
      stub_model(President),
      stub_model(President)
    ])
  end

  it "renders a list of presidents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
