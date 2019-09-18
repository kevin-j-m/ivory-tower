class AddAccessKeyToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :access_key, :string
  end
end
