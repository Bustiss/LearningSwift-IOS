// Write your code below 🤾‍♂️ 
class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  func displayInfo() {
    print("name: \(name)", "num: \(num)", "type: \(type)", "ability(s): \(ability)")
  }
}

class GigantamaxPokemon: Pokemon {
  var location = ""

  init(num: Int, name: String, type: [String], ability: [String], location: String) {
    self.location = location
    super.init(num: num, name: name, type: type, ability: ability)
  }

  override func displayInfo() {
    print("name: \(name)", "num: \(num)", "type: \(type)", "ability(s): \(ability)", "Location: \(location)")
  }
}

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])
bulbasaur.displayInfo() 

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
charizard.displayInfo()