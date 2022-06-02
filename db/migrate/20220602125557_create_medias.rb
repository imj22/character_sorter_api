class CreateMedias < ActiveRecord::Migration[6.1]
  def change
    create_table :medias do |t|
      t.date :release_date
      t.string :director
      t.string :title
      t.string :genre
      t.string :media_type
      t.integer :franchise_id
    end
  end
end
