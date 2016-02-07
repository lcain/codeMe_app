require 'rails_helper'

RSpec.describe "styles/edit", type: :view do
  before(:each) do
    @style = assign(:style, Style.create!(
      :user_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit style form" do
    render

    assert_select "form[action=?][method=?]", style_path(@style), "post" do

      assert_select "input#style_user_id[name=?]", "style[user_id]"

      assert_select "textarea#style_content[name=?]", "style[content]"
    end
  end
end
