
terms = [
    "Deal 15 damage. Shuffle a *Through *Violence into your draw pile.", # cards/534
    "Gain [B] [B]. Add a *Void into your discard pile.", # cards/343
    "Gain 8 Block", # cards/4
    "At the start of your turn, gain 2 Mantra.", # cards/579
    "Deal 6 damage", # cards/5
    "Exhaust your hand.\nDeal 7 damage for each card Exhausted.\nExhaust.", # cards/137
    "Whenever a card is Exhausted,\ngain 3 Block." # cards/71
]

keywords = [
    "Block", "Exhaust", "Upgrade"
]

terms.each do |term|
    term = term.gsub(/Block/, '<Block/>')
    term = term.gsub(/\bExhaust\b/, '<Exhaust/>')
    term = term.gsub(/\bExhausted\b/, '<Exhausted/>')
    term = term.gsub(/\[B\]/, '<B/>')
    term = term.gsub(/\*Through \*Violence/, '<card>Through Violence</card>')
    term = term.gsub(/\*Void/, '<card>Void</card>')
    puts term
end