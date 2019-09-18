class AddAcquisitionToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :acquisition, :boolean, default: false
  end
end
