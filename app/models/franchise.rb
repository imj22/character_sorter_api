class Franchise < ActiveRecord::Base
    has_many :medias
    has_many :images, through: :medias
    has_many :characters, through: :images
    has_many :quotes, through: :characters
end
