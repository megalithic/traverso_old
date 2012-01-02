class CreatePackItems < ActiveRecord::Migration
  def change
    create_table :pack_items do |t|
      t.string :title
      t.text :notes
      t.integer :quantity
      t.decimal :weight, :precision => 6, :scale => 3 
      t.boolean :is_used
      t.boolean :is_taken
      t.boolean :is_active

      t.timestamps
    end
  end
end
