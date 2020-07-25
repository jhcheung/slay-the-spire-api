class RelicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :tier, :pool, :description, :flavor_text
  attribute :image do |object| 
    Rails.application.routes.url_helpers.rails_blob_url(object.main_image) if object.main_image.attached?
  end

end
