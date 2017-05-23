//: Playground - noun: a place where people can play

import UIKit






// **********
// * Optionals
// **********

var someNumber = 2 // Cannot have a non valid value (nil, NULL, etc..)

var optionalNumber : Int? = Optional.none // Can have two value: 1. valid integer value; 2. Optional.none

if optionalNumber == Optional.none {
    print("optionalNumber doesn't have an Integer value")
}
else {
    print("optionalNumber has a valid integer value")
}






// **********
// * Handling Optionals
// **********

struct Pet {
    let name : String
    
    func feed() {
        print("\(name) is not hungry any more")
    }
}

struct Person {
    let name : String
    var pet : Pet?
    
    init(name : String) {
        self.name = name
    }
}

var person1 = Person(name: "John")
person1.pet = Pet(name: "Frank")

let person2 = Person(name: "Alex")



// Force unwrap

person1.pet!.feed() // Feed func is dispatched. If pet is not set, the program will fail with a runtime error



// Optional Chaining

person1.pet?.feed() // Feed func dispatched
person2.pet?.feed() // Since pet is not set, nothing will happen

if let pet = person1.pet {
    // Program only enters this scope if pet has a valid value
    print("\(person1.name)'s pet's name is \(pet.name)")
}

// local non-optional variable is not required, but force unwrapping is safe from inside

if let _ = person1.pet {
    print("\(person1.name)'s pet's name is \(person1.pet!.name)")
}


// Force unwrap during declaration

enum EngineType {
    case combustion
    case electric
}

struct Engine {
    let type : EngineType
    
    func start() {
        print("Starting Engine")
    }
    
    func stop() {
        print("Stopping Engine")
    }
}

struct Vehicle {
    var engine : Engine!
}

struct AssemblyLine {
    static func build() -> Vehicle {
        let engine = Engine(type: .combustion)
        let car = Vehicle(engine: engine)
        return car
    }
}

let workingCar = AssemblyLine.build()
workingCar.engine.start() // engine gets unwrapped automatically

let unusableCar = Vehicle() // Calling engine will result in runtime error



// Ternary Operator

var someValue : String? = "Lorem Ipsum..."

print(someValue ?? "empty optinal")

someValue = Optional.none

print(someValue ?? "empty optinal")




