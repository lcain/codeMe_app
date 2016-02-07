require 'rails_helper'

RSpec.describe "styles/new", type: :view do
  before(:each) do
    assign(:style, Style.new(
      :user_id => 1,
      :content => "MyText"
    ))
  end

  it "renders new style form" do
    render

    assert_select "form[action=?][method=?]", styles_path, "post" do

      assert_select "input#style_user_id[name=?]", "style[user_id]"

      assert_select "textarea#style_content[name=?]", "style[content]"
    end
  end
end
