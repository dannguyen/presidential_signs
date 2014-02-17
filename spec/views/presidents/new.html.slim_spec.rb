require 'spec_helper'

describe "presidents/new" do
  before(:each) do
    assign(:president, stub_model(President).as_new_record)
  end

  it "renders new president form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presidents_path, "post" do
    end
  end
end
