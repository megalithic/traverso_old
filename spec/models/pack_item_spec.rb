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
	before(:each) do
		@attr = {:title => "Patagonia Capilene 3 Size M", :notes => "Fits a bit snug, but provides decent warmth.", :quantity => 1, :weight => 6.275}
	end

	it "should create a new instance given a valid attribute" do
	  PackItem.create!(@attr)
	end

	it "should require a title to be present" do
	  no_title_pack_item = PackItem.new(@attr.merge(:title => ""))
		no_title_pack_item.should_not be_valid
	end	
end
