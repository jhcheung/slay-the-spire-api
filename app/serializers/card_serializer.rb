class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :color, :rarity, :card_type, :cost, :description
end
