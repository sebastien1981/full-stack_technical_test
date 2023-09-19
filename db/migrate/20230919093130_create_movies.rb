class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :image
      t.string :color
      t.float :score
      t.integer :rating
      t.string :objectID

      t.timestamps
    end
  end
end
