class RemovePaidAtFromSales < ActiveRecord::Migration[7.0]
  def change
    remove_column :sales, :paid, :boolean
  end
end
