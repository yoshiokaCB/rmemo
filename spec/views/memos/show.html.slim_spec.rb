require 'rails_helper'

RSpec.describe "memos/show", type: :view do
  before(:each) do
    @memo = assign(:memo, Memo.create!(
      :title => "Title",
      :status => 2,
      :content_body => "MyText",
      :user_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
