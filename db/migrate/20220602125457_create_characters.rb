class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :organization
      t.string :allies
      t.string :description
    end
  end
end
