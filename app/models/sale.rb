# == Schema Information
#
# Table name: sales
#
#  id         :integer          not null, primary key
#  total      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  paid       :boolean
#
class Sale < ApplicationRecord
  has_many :products, through: :sale_products #ver si queda o no...
  has_many :sale_products

  attr_accessor :product

  def add_product_to_sale

    #@product2 = Product.find(2)   #carga manual forzada, queda pendiente poder cargarlo por parametro
    #SaleProduct.find_or_create_by(sale: self, product: @product2)
    SaleProduct.find_or_create_by(sale: self, product: @product)
  end

  def printmessage
    puts "a9"
  end

end
