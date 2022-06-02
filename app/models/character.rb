class Character < ActiveRecord::Base
    has_many :quotes
    has_many :images
    has_many :medias, through: :images
end