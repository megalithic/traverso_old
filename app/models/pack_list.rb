# == Schema Information
#
# Table name: pack_lists
#
#  id             :integer         not null, primary key
#  title          :string(255)
#  location       :string(255)
#  is_active      :boolean
#  date_last_used :date
#  user_id        :integer
#  description    :text
#  created_at     :datetime
#  updated_at     :datetime
#

class PackList < ActiveRecord::Base
	attr_accessible		:title, :is_active, :description, :date_last_used

	has_many :pack_item_categories

	validates :title, :presence => true,
									 	:length => {:maximum => 100}
end