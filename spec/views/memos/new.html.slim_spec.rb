require 'rails_helper'

RSpec.describe "memos/new", type: :view do
  before(:each) do
    assign(:memo, Memo.new(
      :title => "MyString",
      :status => 1,
      :content_body => "MyText",
      :user_id => 1
    ))
  end

  it "renders new memo form" do
    assigns[:params][:action] = 'new'
    render
    assert_select "form[action=?][method=?]", memos_path, "post" do
      assert_select "input#memo_title[name=?]", "memo[title]"
      assert_select "input#memo_status[name=?]", "memo[status]"
      assert_select "textarea#memo_content_body[name=?]", "memo[content_body]"
      assert_select "input#memo_user_id[name=?]", "memo[user_id]"
    end
  end
end
