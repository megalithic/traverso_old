# == Schema Information
#
# Table name: pack_item_categories
#
#  id           :integer         not null, primary key
#  title        :string(255)
#  pack_list_id :integer
#  description  :text
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe PackItemCategory do
end
