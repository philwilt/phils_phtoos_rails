class AddBelongsToCollectionToPhotos < ActiveRecord::Migration[8.0]
  def change
    add_reference :photos, :collection, foreign_key: true
  end
end
