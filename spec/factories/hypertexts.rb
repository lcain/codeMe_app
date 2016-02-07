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

FactoryGirl.define do
  factory :hypertext do
    user_id 1
content "MyText"
  end

end
