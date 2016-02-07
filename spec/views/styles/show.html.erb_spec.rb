require 'rails_helper'

RSpec.describe "styles/show", type: :view do
  before(:each) do
    @style = assign(:style, Style.create!(
      :user_id => 1,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
