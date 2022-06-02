class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.integer :character_id
      t.integer :media_id
      t.string :image_url
      t.string :alt_text
    end
  end
end
