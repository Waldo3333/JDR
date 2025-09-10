# db/seeds.rb

items = [
  { name: "Épée courte", rarity: 1, description: "Une épée légère, facile à manier." },
  { name: "Bouclier en bois", rarity: 1, description: "Protège contre les attaques de base." },
  { name: "Arc en chêne", rarity: 2, description: "Permet de tirer des flèches à distance." },
  { name: "Potion de soin", rarity: 1, description: "Restaure 20 PV." },
  { name: "Potion de mana", rarity: 1, description: "Restaure 15 points de mana." },
  { name: "Dague empoisonnée", rarity: 3, description: "Fait des dégâts supplémentaires sur la durée." },
  { name: "Hache de guerre", rarity: 2, description: "Inflige de lourds dégâts." },
  { name: "Bottes de vitesse", rarity: 3, description: "Augmente la vitesse de déplacement." },
  { name: "Cape d’invisibilité", rarity: 5, description: "Permet de devenir invisible temporairement." },
  { name: "Anneau magique", rarity: 4, description: "Augmente la puissance des sorts." },
  { name: "Casque de fer", rarity: 2, description: "Protège la tête contre les coups." },
  { name: "Gants de force", rarity: 3, description: "Augmente la force de frappe." },
  { name: "Bâton de mage", rarity: 2, description: "Améliore les sorts de magie." },
  { name: "Livre des sorts", rarity: 4, description: "Contient des sorts puissants." },
  { name: "Lance", rarity: 2, description: "Longue arme de mêlée." },
  { name: "Grimoire maudit", rarity: 5, description: "Un livre puissant mais dangereux." },
  { name: "Bouclier en acier", rarity: 3, description: "Protège contre les attaques importantes." },
  { name: "Épée légendaire", rarity: 5, description: "Une arme mythique très puissante." },
  { name: "Collier de protection", rarity: 3, description: "Réduit les dégâts subis." },
  { name: "Potion de régénération", rarity: 4, description: "Restaure progressivement PV et mana." }
]

items.each do |item|
  ItemTemplate.create!(item)
end

puts "20 item templates créés !"
