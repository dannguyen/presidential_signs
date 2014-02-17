require 'spec_helper'

describe "presidents/edit" do
  before(:each) do
    @president = assign(:president, stub_model(President))
  end

  it "renders the edit president form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", president_path(@president), "post" do
    end
  end
end
