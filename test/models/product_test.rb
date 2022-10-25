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
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
