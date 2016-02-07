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

require "rails_helper"

RSpec.describe HypertextsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hypertexts").to route_to("hypertexts#index")
    end

    it "routes to #new" do
      expect(:get => "/hypertexts/new").to route_to("hypertexts#new")
    end

    it "routes to #show" do
      expect(:get => "/hypertexts/1").to route_to("hypertexts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hypertexts/1/edit").to route_to("hypertexts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hypertexts").to route_to("hypertexts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hypertexts/1").to route_to("hypertexts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hypertexts/1").to route_to("hypertexts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hypertexts/1").to route_to("hypertexts#destroy", :id => "1")
    end

  end
end
