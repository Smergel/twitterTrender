require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :user_name => "MyString",
      :email => "MyString",
      :password_hash => "MyString",
      :password_salt => "MyString",
      :admin => false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_user_name[name=?]", "user[user_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password_hash[name=?]", "user[password_hash]"

      assert_select "input#user_password_salt[name=?]", "user[password_salt]"

      assert_select "input#user_admin[name=?]", "user[admin]"
    end
  end
end
