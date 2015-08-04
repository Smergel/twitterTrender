require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :city_name => "City Name",
      :woeid => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
