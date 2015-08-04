require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :city_name => "MyString",
      :worid => 1
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_city_name[name=?]", "location[city_name]"

      assert_select "input#location_worid[name=?]", "location[worid]"
    end
  end
end
