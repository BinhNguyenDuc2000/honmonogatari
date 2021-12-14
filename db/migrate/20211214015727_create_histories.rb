class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :has_read

      t.timestamps
    end
  end
end
