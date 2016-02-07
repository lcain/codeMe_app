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

RSpec.describe Style, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
