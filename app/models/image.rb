class Image < ActiveRecord::Base
    belongs_to :media
    belongs_to :character
end