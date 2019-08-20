class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.integer :service_id
      t.string :name
      t.integer :phone_number
      t.string :email
      t.string :password_digest
      t.string :address
      t.integer :price
      t.integer :license_number

      t.timestamps
    end
  end
end
