class ChangeCategoryProductToCategoryProducts < ActiveRecord::Migration[6.1]
  def change
    rename_table :category_product, :category_products
  end
end
