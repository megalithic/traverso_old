class CreatePackLists < ActiveRecord::Migration
  def change
    create_table :pack_lists do |t|
      t.string :title
      t.string :location
      t.boolean :is_active
      t.date :date_last_used
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
