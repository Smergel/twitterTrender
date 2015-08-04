require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :user_name => "User Name",
        :email => "Email",
        :password_hash => "Password Hash",
        :password_salt => "Password Salt",
        :admin => false
      ),
      User.create!(
        :user_name => "User Name",
        :email => "Email",
        :password_hash => "Password Hash",
        :password_salt => "Password Salt",
        :admin => false
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Hash".to_s, :count => 2
    assert_select "tr>td", :text => "Password Salt".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
