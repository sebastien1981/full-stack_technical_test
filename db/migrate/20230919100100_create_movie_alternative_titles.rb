class CreateMovieAlternativeTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_alternative_titles do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :alternative_title, null: false, foreign_key: true

      t.timestamps
    end
  end
end
