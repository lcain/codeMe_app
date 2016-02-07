# == Schema Information
#
# Table name: styles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe "Styles", type: :request do
  describe "GET /styles" do
    it "works! (now write some real specs)" do
      get styles_path
      expect(response).to have_http_status(200)
    end
  end
end
