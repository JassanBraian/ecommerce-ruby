class AddBrandReferenceToProducts < ActiveRecord::Migration[7.0]
  def change
    Product.destroy_all
    add_reference :products, :brand, null: false, foreign_key: true
  end
end
