class CreatePackItemCategories < ActiveRecord::Migration
  def change
    create_table :pack_item_categories do |t|
      t.string :title
      t.integer :pack_list_id
      t.text :description

      t.timestamps
    end
  end
end
