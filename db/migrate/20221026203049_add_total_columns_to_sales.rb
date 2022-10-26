class AddTotalColumnsToSales < ActiveRecord::Migration[7.0]
  def change
    add_column :sales, :total, :decimal, default: 0
  end
end
