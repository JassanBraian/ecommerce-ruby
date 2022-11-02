class DropProductSale < ActiveRecord::Migration[7.0]
  def up
    drop_table :products_sales
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
