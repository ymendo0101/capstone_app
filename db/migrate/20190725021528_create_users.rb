class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.string :password_digest
      t.string :address
      t.timestamps
      t.string :image_url
    end
  end
end
