print "Creating categories"

categories = [
  "peinture",
  "arts graphiques",
  "photographie",
  "sculpture",
  "vidéo",
  "installation",
  "performance",
  "arts numériques",
  "land art",
  "street-art",
  "multi-médiums",
  "autre",
]

categories.each do |c|
  Category.create!(name: c)
  print "."
end

puts " done"
