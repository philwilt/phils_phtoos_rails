class CreatePhotos < ActiveRecord::Migration[8.0]
  def change
    create_table :photos do |t|
      t.text :description
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
