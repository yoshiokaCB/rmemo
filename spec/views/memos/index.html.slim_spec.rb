require 'rails_helper'

RSpec.describe "memos/index", type: :view do
  before(:each) do
    assign(:memos, [
      Memo.create!(
        :title => "Title",
        :status => 2,
        :content_body => "MyText",
        :user_id => 3
      ),
      Memo.create!(
        :title => "Title",
        :status => 2,
        :content_body => "MyText",
        :user_id => 3
      )
    ])
  end

  it "renders a list of memos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
