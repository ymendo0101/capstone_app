class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :service
      t.string :request_date
      t.string :location
      t.string :professional

      t.timestamps
    end
  end
end
