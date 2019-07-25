class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :professional_id
      t.integer :user_id
      t.string :accepted

      t.timestamps
    end
  end
end
