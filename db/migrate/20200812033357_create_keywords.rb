class CreateKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :keywords do |t|
      t.string :name
      t.string :description
      t.string :names

      t.timestamps
    end
  end
end
