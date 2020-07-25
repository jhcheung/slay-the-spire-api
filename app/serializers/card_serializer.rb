class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :color, :rarity, :card_type, :cost, :description
  attribute :image do |object| 
    Rails.application.routes.url_helpers.rails_blob_url(object.main_image) if object.main_image.attached?
  end
end
