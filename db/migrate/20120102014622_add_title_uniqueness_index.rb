class AddTitleUniquenessIndex < ActiveRecord::Migration
  def up
  	add_index :pack_items, :title, :unique => true
  	add_index :pack_item_categories, :title, :unique => true
  	add_index :pack_lists, :title, :unique => true
  end

  def down
  	remove_index :pack_items, :title
  	remove_index :pack_item_categories, :title
  	remove_index :pack_lists, :title
  end
end
