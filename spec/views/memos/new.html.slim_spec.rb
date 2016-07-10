require 'rails_helper'

RSpec.describe "memos/new", type: :view do
  before(:each) do
    # @memo = assign(:memo, Memo.new(
    assign(:memo, Memo.new(
    # assign(:memo, stub_model(Item,
      :title => "MyString",
      :status => 1,
      :content_body => "MyText",
      :user_id => 1
    # ).as_new_record)
    ))
    # binding.pry
  end

  it "renders new memo form" do
    # binding.pry
    # render template: 'memos/new.html.slim'
    render
    assert_select "form[action=?][method=?]", memos_path, "post" do
      assert_select "input#memo_title[name=?]", "memo[title]"
      assert_select "input#memo_status[name=?]", "memo[status]"
      assert_select "textarea#memo_content_body[name=?]", "memo[content_body]"
      assert_select "input#memo_user_id[name=?]", "memo[user_id]"
    end
  end
end
