require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do

    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
    user = User.first

    assign(:category, Category.new(
      :name => "MyString"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_name[name=?]", "category[name]"
    end
  end
end
