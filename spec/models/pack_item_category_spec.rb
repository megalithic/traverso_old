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
	before(:each) do
		@attr = {:title => "My Pack List Category 1", :description => "This is a category for use in my pack list."}
	end

	it "should create a new instance given a valid attribute" do
	  PackItemCategory.create!(@attr)
	end

	it "should require a title to be present" do
	  no_title_pack_item_category = PackItemCategory.new(@attr.merge(:title => ""))
		no_title_pack_item_category.should_not be_valid
	end
end
