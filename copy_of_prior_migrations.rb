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

  class CreateMedias < ActiveRecord::Migration[6.1]
    def change
      create_table :medias do |t|
        t.date :release_date
        t.string :director
        t.string :title
        t.string :genre
      end
    end
  end
  

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

  class CreateQuotes < ActiveRecord::Migration[6.1]
    def change
      create_table :quotes do |t|
        t.integer :character_id
        t.string :quote_content
      end
    end
  end

  class CreateFranchises < ActiveRecord::Migration[6.1]
    def change
      create_table :franchises do |t|
        t.string :title
      end
    end
  end

  class AddFranchiseIdColumnToMedias < ActiveRecord::Migration[6.1]
    def change
      add_column :medias, :franchise_id, :integer
    end
  end
  
  
  
  