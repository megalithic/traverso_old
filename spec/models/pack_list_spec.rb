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

require 'spec_helper'

describe PackList do
  before(:each) do
		@attr = {:title => "My Pack List", :description => "This is my packing list for my next trip.", :is_active => true, :date_last_used => DateTime.now}
	end

	it "should create a new instance given a valid attribute" do
	  PackList.create!(@attr)
	end

	it "should require a title to be present" do
	  no_title_pack_list = PackList.new(@attr.merge(:title => ""))
		no_title_pack_list.should_not be_valid
	end
end