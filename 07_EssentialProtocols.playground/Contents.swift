//: Playground - noun: a place where people can play

import UIKit


struct Product {
    let name : String
    let price : Int
}

// **********
// * String Convertible
// **********

extension Product : CustomStringConvertible {
    public var description: String {
        return "Product (name: \(name); price: \(price))"
    }
}

print(Product(name: "Thingie", price: 12))


// **********
// * Equtable and Comparable
// **********

extension Product : Equatable {
    // Just comparing names for the sake of demonstration
    static func ==(lhs: Product, rhs: Product) -> Bool {
        return lhs.name == rhs.name
    }
}

let prod1 = Product(name: "Thing", price: 3)
let prod2 = Product(name: "Thing", price: 4)

print(prod1 == prod2)




extension Product : Comparable {
    // Just comparing proces here
    public static func <(lhs: Product, rhs: Product) -> Bool {
        return lhs.price < rhs.price
    }
    
    public static func <=(lhs: Product, rhs: Product) -> Bool {
        return lhs.price <= rhs.price
    }
    
    public static func >=(lhs: Product, rhs: Product) -> Bool {
        return lhs.price >= rhs.price
    }
    
    public static func >(lhs: Product, rhs: Product) -> Bool {
        return lhs.price > rhs.price
    }

}

print(prod1 < prod2)


// **********
// * Hashable
// **********

extension Product : Hashable {
    var hashValue: Int {
        return name.hashValue ^ price.hashValue
    }
}






