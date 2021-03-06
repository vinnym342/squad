require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user => nil,
      :username => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :avatar_src => "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_username[name=?]", "profile[username]"

      assert_select "input#profile_first_name[name=?]", "profile[first_name]"

      assert_select "input#profile_last_name[name=?]", "profile[last_name]"

      assert_select "input#profile_gender[name=?]", "profile[gender]"

      assert_select "input#profile_avatar_src[name=?]", "profile[avatar_src]"
    end
  end
end
