class CreateQueens < ActiveRecord::Migration[6.1]
  def change
    create_table :queens do |t|
      t.string :name
      t.integer :season
      t.boolean :winner?
      t.string :sun_sign
      t.string :image_url
      t.boolean :user_added?
      t.string :hometown
    end
  end
end
