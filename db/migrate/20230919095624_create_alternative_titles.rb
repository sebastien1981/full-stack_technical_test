class CreateAlternativeTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :alternative_titles do |t|
      t.string :alternative_titles

      t.timestamps
    end
  end
end
