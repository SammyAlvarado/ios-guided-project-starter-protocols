import Foundation

//: # Protocols
//: Protocols are, as per Apple's definition in the _Swift Programming Language_ book:
//:
//: "... a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol."
//:
//: The below example shows a protocol that requires conforming types have a particular property defined.


// getter - Read access
// setter - Write Access

protocol FullNamed {
    var fullname: String { get } // a getter gets the definistion of this property
    
}

// Step 1. Adoption
// Step 2. Conformance: is added protocol code to the struct for example

struct Person: FullNamed {
    var fullname: String
    
    
}

let johnny = Person(fullname: "Johnny Hicks")
let ben = Person(fullname: "Ben")

print(johnny.fullname)


class StarShip: FullNamed {
    var prefix: String?
    var name: String
    
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    // Computed Property (Calculated Property)
    var fullname: String {
        // Ternary Operators
        return (prefix != nil ? prefix! + " " : " ") + self.name
    }
}

var ncc1701 = StarShip(name: "Enterprinse", prefix: "USS")
ncc1701.fullname

var fireFly = StarShip(name: "Serenity")
fireFly.fullname
print(fireFly.fullname)

//: Protocols can also require that conforming types implement certain methods.

protocol GeneratesRandomNumbers {
    func random() -> Int
}

class OneThroughTen: GeneratesRandomNumbers {
    func random() -> Int {
        return Int.random(in: 1...10)
    }
}

let rand = OneThroughTen()
rand.random()

//: Using built-in Protocols
extension StarShip: Equatable {
    static func == (lhs: StarShip, rhs: StarShip) -> Bool {
        if lhs.fullname == rhs.fullname { return true }
        else { return false }
    }
}

if ncc1701 == fireFly {
    print("Same Ship")
}

//: ## Protocols as Types

class Dice {
    let sides: Int
    let generator: GeneratesRandomNumbers
    
    init(sides: Int, generator: GeneratesRandomNumbers) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random() % sides) + 1 // % gives us the remander
        // Dices 6 sides
        // 1 % 6 + 1 = 6
        // 2 % 6 + 1 = 5
        // 3 % 6 + 1 = 4
        
        
        // 10 % 6 + 1 = 5
    }
}

var d6 = Dice(sides: 6, generator: OneThroughTen())
for _ in 1...5 {
    print("Random dice rol is \(d6.roll())")
}



// class properties - can only be accessed on the class itself
// Instane Properties - can only be accessed via an instance of the class 


struct Person3 {
    static let species: String = "Homosapien" // Class Property
    let age: Int // in
}
