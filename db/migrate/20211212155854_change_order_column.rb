class ChangeOrderColumn < ActiveRecord::Migration[6.0]
  def change
      rename_column :chapters, :order, :chapter_order
  end
end
