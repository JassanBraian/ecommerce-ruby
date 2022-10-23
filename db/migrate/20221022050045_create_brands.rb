class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
