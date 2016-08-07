require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do

    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
    user = User.first

    @category = assign(:category, Category.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_name[name=?]", "category[name]"
    end
  end
end
