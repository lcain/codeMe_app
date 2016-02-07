require 'rails_helper'

RSpec.describe "hypertexts/show", type: :view do
  before(:each) do
    @hypertext = assign(:hypertext, Hypertext.create!(
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
