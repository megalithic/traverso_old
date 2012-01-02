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

class PackItemCategory < ActiveRecord::Base
	belongs_to :pack_list

	validates :title, :presence => true,
								 	:length => {:maximum => 100},
								 	:uniqueness => {:case_sensitive => false}
end