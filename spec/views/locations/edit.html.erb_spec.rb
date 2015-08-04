require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :city_name => "MyString",
      :worid => 1
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_city_name[name=?]", "location[city_name]"

      assert_select "input#location_worid[name=?]", "location[worid]"
    end
  end
end
