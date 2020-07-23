# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file = File.read('db/items.json')
data_hash = JSON.parse(file)

data_hash["cards"].each do |card| 
    Card.create(
        name: card["name"],
        color: card["color"],
        rarity: card["rarity"],
        card_type: card["type"],
        cost: card["cost"],
        description: card["description"]
    )
end

data_hash["relics"].each do |relic| 
    Relic.create(
        name: relic["name"],
        tier: relic["tier"],
        pool: relic["pool"],
        description: relic["description"],
        flavor_text: relic["flavorText"]
    )
end