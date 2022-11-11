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
  has_many :products
  has_many :sale_products

end
