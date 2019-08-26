class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :service_id
      t.integer :professional_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :appointment_status_id

      t.timestamps
    end
  end
end
