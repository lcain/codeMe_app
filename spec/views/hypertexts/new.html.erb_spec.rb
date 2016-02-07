require 'rails_helper'

RSpec.describe "hypertexts/new", type: :view do
  before(:each) do
    assign(:hypertext, Hypertext.new(
      :user_id => 1,
      :content => "MyText"
    ))
  end

  it "renders new hypertext form" do
    render

    assert_select "form[action=?][method=?]", hypertexts_path, "post" do

      assert_select "input#hypertext_user_id[name=?]", "hypertext[user_id]"

      assert_select "textarea#hypertext_content[name=?]", "hypertext[content]"
    end
  end
end
