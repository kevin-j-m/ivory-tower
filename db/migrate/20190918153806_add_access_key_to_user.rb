class AddAccessKeyToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :access_key, :string
  end
end
