class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :quote
      t.integer :claps
      t.integer :queen_id
      t.boolean :user_added?
    end
  end
end
