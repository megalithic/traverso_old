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

class PackItem < ActiveRecord::Base
	belongs_to :pack_list

	attr_accessible :title, :notes, :quantity, :weight, :is_active, :is_taken, :is_used

	validates :title, :presence => true,
								 	:length => {:maximum => 140},
								 	:uniqueness => {:case_sensitive => false}
end
