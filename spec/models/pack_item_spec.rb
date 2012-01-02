# == Schema Information
#
# Table name: pack_items
#
#  id           :integer         not null, primary key
#  title        :string(255)
#  notes        :text
#  quantity     :integer
#  weight       :decimal(6, 3)
#  is_used      :boolean
#  is_taken     :boolean
#  is_active    :boolean
#  created_at   :datetime
#  updated_at   :datetime
#  pack_list_id :integer
#

require 'spec_helper'

describe PackItem do
end
