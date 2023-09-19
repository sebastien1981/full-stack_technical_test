class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :actors
      t.string :actor_facets

      t.timestamps
    end
  end
end
