//: Playground - noun: a place where people can play

import UIKit

// **********
// * Functions
// **********

// Simple Function

func sayHello() {
    print("Hello")
}

sayHello()



// Return Value

func hello() -> String {
    return "Hello"
}

print(hello())



// Multiple return value

func things() -> (first: String, second: String) {
    return("First", "Second")
}

print(things().first)
print(things().second)



// Parameters

func say(string: String) {
    print(string)
}

say(string: "Hello")



// Default parameter value

func saySomething(to: String, subject: String = "") -> String {
    return "\(to) \(subject)"
}

print(saySomething(to: "Frank", subject: "Hi"))
print(saySomething(to: "Joe"))



// Argument labels
func sayHello(to subject: String) {
    print("Hi \(subject)")
}

sayHello(to: "Jack")



// Omit argument label
func addition(_ lhs: Int, _ rhs: Int) -> Int {
    return lhs + rhs
}

print("Added \(addition(4, 6))")



// Variadic Parameters

func summa(_ numbers: Int...) -> Int {
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum
}

print(summa(2, 4, 6, 8, 10))



// Inout Parameters

func reassign(_ what: inout Int, _ with: Int) {
    what = with
}

var what = 3
let with = 5

reassign(&what, with)

print(what)










