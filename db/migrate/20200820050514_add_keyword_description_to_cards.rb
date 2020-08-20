class AddKeywordDescriptionToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :keyword_description, :string
  end
end
