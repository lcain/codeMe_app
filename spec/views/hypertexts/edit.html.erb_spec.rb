require 'rails_helper'

RSpec.describe "hypertexts/edit", type: :view do
  before(:each) do
    @hypertext = assign(:hypertext, Hypertext.create!(
      :user_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit hypertext form" do
    render

    assert_select "form[action=?][method=?]", hypertext_path(@hypertext), "post" do

      assert_select "input#hypertext_user_id[name=?]", "hypertext[user_id]"

      assert_select "textarea#hypertext_content[name=?]", "hypertext[content]"
    end
  end
end
