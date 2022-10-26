class AddPaidToSales < ActiveRecord::Migration[7.0]
  def change
    add_column :sales, :paid, :boolean
  end
end
