class ChangeCategoryProductsToCategoryProduct < ActiveRecord::Migration[6.1]
  def change
    rename_table :category_products, :category_product
  end
end
