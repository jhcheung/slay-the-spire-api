class CreateRelics < ActiveRecord::Migration[6.0]
  def change
    create_table :relics do |t|
      t.string :name
      t.string :tier
      t.string :pool
      t.string :description
      t.string :flavor_text

      t.timestamps
    end
  end
end
