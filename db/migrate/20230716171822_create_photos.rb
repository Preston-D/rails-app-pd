class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
