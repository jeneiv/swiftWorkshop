import Foundation

// **********
// * Variables & Declarations
// **********

// Variables and Constants
let maxValue = 10 // Constant, cannot be reassigned
var actualValue = 3 // Variable

actualValue = 4

// Multiple declatarions (avoid this at all costs)
let a = "a", b = "b", c = "c"

// Type annotations
let someInteger : Int = 10
let someString : String = "Some"




// **********
// * Swift Numeric Types
// **********

// Integer Types: Int, UInt
let anotherInteger : Int = -3
let unsignedInteger : UInt = 3

// Also you can use Int8, Int16, Int32, Int64 and their UInt counterparts
print("\(anotherInteger + Int(unsignedInteger))")

// Floating Point Types: Float (32 bit), Double (64 bit)
let someDouble = 0.3
print(type(of: someDouble)) // Without type annotation, Double is prefered

let someFloat : Float = 0.23
print(type(of: someFloat))

// Number Type Interference. Same conversion logic as Ocjective-C (C)
let pi = Double.pi
let whatsInside = 3 + pi
print(type(of: whatsInside))




// **********
// * Swift String Type
// **********
let anotherString = "Sallala"

// Also there are different initializers
let stringFromInt = String(1)
let stringFromFloatingPoint = String(Float.pi)

// String informations
print("Is PiString empty? \(stringFromFloatingPoint.isEmpty)")
print("Length of PiString: \(stringFromFloatingPoint.characters.count)")

// String Ranges
let rangeTestString = "1234567890"

// For direct character access string uses the type Index (String.Index) insted of Int
print("First Char: \(rangeTestString[rangeTestString.startIndex])")
print("Last Char: \(rangeTestString[rangeTestString.index(before: rangeTestString.endIndex)])") // Notice that endIndex is 10 instead of 9 for some reason

print("Custom index: \(rangeTestString.index(rangeTestString.startIndex, offsetBy: 2))")
print("Character @ custom index: \(rangeTestString[rangeTestString.index(rangeTestString.startIndex, offsetBy: 2)])") // "3"

// Substring
let strIndex4 = rangeTestString.index(rangeTestString.startIndex, offsetBy: 4)
let strIndex7 = rangeTestString.index(rangeTestString.startIndex, offsetBy: 7)

print("Substring to 4: \(rangeTestString.substring(to: strIndex4))")
print("Substring from 7: \(rangeTestString.substring(from: strIndex7))")

let range = strIndex4..<strIndex7
print("Substring with Range: \(rangeTestString.substring(with: range))")




// **********
// * Tuples
// **********
let coordinateTuple = (47.4979, 19.0402)
print(coordinateTuple.0)
print(coordinateTuple.1)

let anotherTuple = (latitude: 47.4979, longitude: 19.0402)
print(anotherTuple.latitude)
print(anotherTuple.longitude)




// **********
// * Collection Types
// **********

// * Set
var someSet = Set<Int>()
let someOtherSet : Set<Int> = [1, 2, 3]

print("SomeSet is \(someSet.isEmpty ? "empty" : "not empty")")
print("Number of items: \(someOtherSet.count)")

someSet.insert(3)
someSet.insert(2)
someSet.remove(3)

print("SomeSet: \(someSet)")

// Set operators
var firstSet : Set<Int> = [1, 2, 3, 4, 5]
let secondSet : Set<Int> = [4, 5, 6, 7, 8]

firstSet.intersection(secondSet)
firstSet.symmetricDifference(secondSet)
firstSet.union(secondSet)
firstSet.subtract(secondSet)


// * Array
var anArray = Array<Int>()
let anotherArray = [Int]()
let arrayLiteral = [3, 4, 5, 6]

anArray.append(3)
anArray += [4, 5]
anArray.insert(2, at: 0)
let someIntValue = anArray.remove(at: 3)
print(someIntValue)
anArray[2] = 10

print("anArray is \(anArray.isEmpty ? "empty" : "not empty")")
print("Number of items: \(anArray.count)")
print("First Item: \(anArray.first)")
print("Last Item: \(anArray.last)")
print("Item @ 2: \(anArray[2])")

// SubArray
anArray
anArray[1...2]

// * Dictionary
var aDictionary = [String : String]()
let anotherDictionary = Dictionary<String, String>()
let dictionayLiteral = ["Valami" : "valami", "Valami2" : "valami 2"]

print("aDictionary is \(aDictionary.isEmpty ? "empty" : "not empty")")
print("Number of items: \(dictionayLiteral.count)")

aDictionary.updateValue("akarmi", forKey: "Akarmi")
aDictionary["Semmi"] = "semmi"
print(aDictionary)

aDictionary.removeValue(forKey: "Semmi")
print(aDictionary)




// **********
// * Anonym Types
// **********

class Valami {}
class Semmi {}

var any : Any = 3
var anyObject : AnyObject = Valami()

any = "Bela"
any = Valami()
anyObject = Semmi()

let anyArray : [Any] = [3, Valami(), Semmi(), "Semmi"]
let anyObjectArray : [AnyObject] = [Valami(), Semmi(), Semmi(), Valami()]








