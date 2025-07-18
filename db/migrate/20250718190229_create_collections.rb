class CreateCollections < ActiveRecord::Migration[8.0]
  def change
    create_table :collections do |t|
      t.text :name
      t.text :decription

      t.timestamps
    end
  end
end
