class Photo < ApplicationRecord
  belongs_to :collection
  has_rich_text :description
  has_one_attached
end
