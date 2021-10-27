class ChangeCategoryProductsToCategoryProduct < ActiveRecord::Migration[6.1]
  def change
    rename_table :CategoryProducts, :CategoryProduct
  end
end
