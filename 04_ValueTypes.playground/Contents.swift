//: Playground - noun: a place where people can play

import UIKit

func address(o: UnsafePointer<Void>) -> Int {
    return unsafeBitCast(o, to: Int.self)
}

// **********
// * Enumerations
// **********

enum Continent {
    case africa
    case antarctica
    case asia
    case australia
    case europe
    case northAmerica
    case southAmerica
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune // Poor Little Pluto is not a planet!!!
}

// Assigning enum values to variables

let aPlanet = Planet.earth
let europe : Continent = .europe


// Matching enum values

if europe == .northAmerica || europe == .southAmerica {
    print("Something is terribly wrong")
}

switch aPlanet {
    case .mercury:
        print("The iron giant")
    case .venus:
        print("Earth's little sister")
    case .earth:
        print("Feels like home")
    case .mars:
        print("Is populated 100% by robots")
    case .jupiter:
        print("Yo mama so fat ...")
    case .saturn:
        print("One ring to rule them all")
    case .uranus:
        print("Your an##!")
    case .neptune:
        print("The smallest of the giants")
}

// Associated Values

enum Numbers : Int {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
}

let one = Numbers.one
print(one.rawValue)

let two = Numbers(rawValue: 2)

// Functions

enum Direction {
    case up
    case down
    case left
    case right
    
    func toString() -> String {
        switch self {
            case .up:
                return "Up"
            case .down:
                return "Down"
            case .left:
                return "Left"
            case .right:
                return "Right"
        }
    }
}

let up = Direction.up
print(up.toString())




// **********
// * Structures
// **********

struct Person {
    let name : String
    let age : Int
}

// Using default Struct Initializer
var person = Person(name: "Sanyi", age: 27)
print(address(o: &person))

var person2 = person // person2 is a copy of person
print(address(o: &person2))


// Also value types are being copied on every scope change (passing as parameter, retrurning from function, etc...)
func createPerson() -> Person {
    var person = Person(name: "Sanyi", age: 27)
    print("Initial Address: \(address(o: &person))")
    return person
}

var person3 = createPerson()
print(address(o: &person3))

// Mutating funcs

struct Point {
    var x = 0.0
    var y = 0.0
    
    
    // Properties can only be reassigned from a mutating function
    mutating func moveXBy(x deltaX: Double) {
        x += deltaX
    }
    
    // In a mutating function you can even reassign self too
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}




// **********
// * Protocols
// **********

protocol Describable {
    func stringDescription() -> String
}

struct Animal : Describable {
    let name : String
    let numberOfLegs : Int
    
    func stringDescription() -> String {
        return name + " has " + String(numberOfLegs) + " legs"
    }
}

let dog = Animal(name: "Dog", numberOfLegs: 4)
print(dog.stringDescription())






















