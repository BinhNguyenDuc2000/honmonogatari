class AddCategoryToBook < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :category, index: true, foreign_key: true
  end
end
