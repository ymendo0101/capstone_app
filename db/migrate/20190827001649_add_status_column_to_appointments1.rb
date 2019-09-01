class AddStatusColumnToAppointments < ActiveRecord::Migration[6.0]
  def change
    def change
      add_column :appointments, :status, :string
    end
  end
end
