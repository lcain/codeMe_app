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

class Style < ActiveRecord::Base
  belongs_to :user
end
