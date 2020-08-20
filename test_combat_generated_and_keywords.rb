require 'JSON'
# require 'pastel'

file = File.read('db/items.json')
data_hash = JSON.parse(file)

keyword_names = data_hash["keywords"].inject([]) do |acc, keyword|
    if keyword["names"].length > 0
        keyword["names"].each do |name|
            acc << name
        end
    else 
        acc << keyword["name"]
    end

    acc
end
keyword_names = keyword_names.map { |keyword| Regexp.escape(keyword) }.sort_by {|k| -k.length}
keyword_string = keyword_names.join("|")
keyword_regex = Regexp.new("(#{keyword_string})", Regexp::IGNORECASE)   
puts keyword_regex

terms = [
    "Deal 15 damage. Shuffle a *Through *Violence into your draw pile.", # cards/534
    "Gain [B] [B]. Add a *Void into your discard pile.", # cards/343
    "Gain 8 Block", # cards/4
    "At the start of your turn, gain 2 Mantra.", # cards/579
    "Deal 6 damage", # cards/5
    "Exhaust your hand.\nDeal 7 damage for each card Exhausted.\nExhaust.", # cards/137
    "Whenever a card is Exhausted,\ngain 3 Block." # cards/71
]

terms.each do |term|
    # term = term.gsub(/Block/, '<Block/>')
    # term = term.gsub(/\bExhaust\b/, '<Exhaust/>')
    # term = term.gsub(/\bExhausted\b/, '<Exhausted/>')
    # term = term.gsub(/\[B\]/, '<B/>')
    # term = term.gsub(/\*Through \*Violence/, '<card>Through Violence</card>')
    # term = term.gsub(/\*Void/, '<card>Void</card>')

    # term = term.gsub(/(exhausted|exhaust|block)/i, '<Keyword name="\1"/>')
    term = term.gsub(keyword_regex, '<Keyword name="\1"/>')
    puts term
end