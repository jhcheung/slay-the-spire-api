class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :color
      t.string :rarity
      t.string :type
      t.string :cost
      t.string :description

      t.timestamps
    end
  end
end
