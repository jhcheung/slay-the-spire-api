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

    # TODO decorated description, i.e. gain 3 <Keyword name="Block"/>
    new_card = Card.create(
        name: card["name"],
        color: card["color"],
        rarity: card["rarity"],
        card_type: card["type"],
        cost: card["cost"],
        description: card["description"]
    )
    image_name = card["name"].gsub(/[[:space:], ']/, '').gsub('+', 'Plus')
    image_dir = "db/card-images/#{image_name}.png"
    new_card.main_image.attach(
        io: File.open(image_dir),
        filename: "#{image_name}.png",
        content_type: 'image/png'
    )
end

data_hash["relics"].each do |relic| 
    new_relic = Relic.create(
        name: relic["name"],
        tier: relic["tier"],
        pool: relic["pool"],
        description: relic["description"],
        flavor_text: relic["flavorText"]
    )
    image_name = relic["name"].gsub(/[[:space:], ']/, '')
    image_dir = "db/relics/#{image_name}.png"
    new_relic.main_image.attach(
        io: File.open(image_dir),
        filename: "#{image_name}.png",
        content_type: 'image/png'
    )
end

data_hash["keywords"].each do |keyword|
    new_keyword = Keyword.create(
        name: keyword["name"],
        description: keyword["description"],
        names: keyword["names"]
    )
end