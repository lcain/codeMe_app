# == Schema Information
#
# Table name: hypertexts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe "Hypertexts", type: :request do
  describe "GET /hypertexts" do
    it "works! (now write some real specs)" do
      get hypertexts_path
      expect(response).to have_http_status(200)
    end
  end
end
