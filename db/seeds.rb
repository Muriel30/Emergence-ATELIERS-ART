print "Creating categories"

categories = [
  "peinture",
  "arts graphiques",
  "photographie",
  "gravure",
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
  ArtistCategory.create!(name: c)
  print "."
end

puts "done"

artisancategories = [
  "Arts du bois (Charpenterie, marqueterie, ébenisterie, tournage, etc.)",
  "Arts du métal (dorure, orfèvrerie, fer forgé, emboutissage, etc.)",
  "Arts de la découpe (laser et traditionnelle)",
  "Arts du tressage, de la dentelle et du plissage",
  "Arts du luminaire",
  "Couture, stylisme et confection textile",
  "Peinture décorative et laque",
  "Calligraphie",
  "Staff / Stuc",
  "Tapisserie",
  "Broderie",
  "Mosaïque",
  "Tissage et tricot (maille, crochet, macramé...",
  "Plumasserie",
  "Couleurs et teintures",
  "Travail du cuir et fourrures (Maroquinerie)",
  "Travail du papier et du carton",
  "Travail du verre et miroiterie",
  "Travail de la cire (confection de masques et bougies)",
  "Travail de la paille",
  "Création de souliers et bottes",
  "Modisme et parures",
  "Horlogerie et Joaillerie",
  "Reliure et imprimerie",
  "Céramique, poterie, émaux, porcelaine et faïence",
  "Création florale (naturelle / artificielle)",
  "Vannerie et paille",
  "Taxidermie",
  "Arts de vivre",
  "Maréchalerie",
  "Arts de la marionnette",
  "Patrimoine culturel immatériel et services",
  "Autre",
]

artisancategories.each do |c|
  ArtisanCategory.create!(name: c)
  print "."
end

puts " done"
