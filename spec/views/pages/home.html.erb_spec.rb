require 'rails_helper'

RSpec.describe "pages/home.html.erb", type: :view do

  before(:each) do
  
    user = User.new
    user.email = "chicken@chicken.com"
    user.password = "chickenchicken"
    user.password_confirmation = "chickenchicken"
    user.save!

    s1 = Style.create :content => "body {background-color: red;}"

    h1 = Hypertext.create :content => "<p>Hi, my name is Chicken.</p>"

    u1 = User.first

    u1.styles << s1
    u1.hypertexts << h1

  end

  it "has a button" do 
    render
    assert_select "div.button", :presence => true
  end

end
