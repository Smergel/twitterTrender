require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :user_name => "User Name",
      :email => "Email",
      :password_hash => "Password Hash",
      :password_salt => "Password Salt",
      :admin => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Hash/)
    expect(rendered).to match(/Password Salt/)
    expect(rendered).to match(/false/)
  end
end
