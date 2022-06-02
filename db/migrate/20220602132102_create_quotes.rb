class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
      create_table :quotes do |t|
        t.integer :character_id
        t.string :quote_content
      end
  end
end

