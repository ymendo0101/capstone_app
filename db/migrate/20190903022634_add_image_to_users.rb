class AddImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :professionals, :image, :string
  end
end
