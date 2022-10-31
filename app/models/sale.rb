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

    has_many :products #ver si queda o no...
    has_many :sale_products

end
