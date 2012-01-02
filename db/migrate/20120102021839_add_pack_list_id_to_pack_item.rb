class AddPackListIdToPackItem < ActiveRecord::Migration
  def change
    add_column :pack_items, :pack_list_id, :integer
  end
end
