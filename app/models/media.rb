class Media < ActiveRecord::Base
    self.table_name = "medias"
    has_many :images
    has_many :characters, through: :images
    belongs_to :franchise
end
