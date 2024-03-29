class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :encrypted_password
      t.string :salt
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
