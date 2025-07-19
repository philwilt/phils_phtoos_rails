class Collection < ApplicationRecord
  has_many :photos
  has_rich_text :description
end
