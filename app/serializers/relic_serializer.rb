class RelicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :tier, :pool, :description, :flavor_text
end
