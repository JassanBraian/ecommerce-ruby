# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  title      :string
#  stock      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  brand_id   :integer          not null
#
class Product < ApplicationRecord
    belongs_to :brand
end
