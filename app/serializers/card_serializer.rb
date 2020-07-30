class CardSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :color, :rarity, :card_type, :cost, :description

  attribute :image do |object|
    if object.main_image.attached?
      Rails.application.routes.url_helpers.rails_blob_url(object.main_image)
    end
  end
end
