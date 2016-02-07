require 'rails_helper'

RSpec.describe "hypertexts/index", type: :view do
  before(:each) do
    assign(:hypertexts, [
      Hypertext.create!(
        :user_id => 1,
        :content => "MyText"
      ),
      Hypertext.create!(
        :user_id => 1,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of hypertexts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
