class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.integer :service_id
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :location
      t.integer :price
      t.string :license

      t.timestamps
    end
  end
end
