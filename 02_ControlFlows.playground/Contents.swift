import Foundation

// **********
// * If
// **********

var condition = false
var secondCondition = true

if condition {
    print("true")
}
else if secondCondition {
    print("never true")
}
else {
    print("well...")
}




// **********
// * Switch
// **********

var value = 3

// Notice, that there is no default fallthrough, no need for break between cases
switch value {
case 1:
    print("Value is One")
case 2:
    print("Value is Two")
case 3:
    print("Value is Three")
case 4:
    print("Value is Four")
default:
    print("Unhandled Value")
}

switch value {
case 1, 3, 5:
    print("Value is Uneven")
case 2, 4, 6:
    print("Value is Even")
default:
    print("Unhandled Value")
}

value = 5
switch value {
case 1..<5:
    print("Lower than five")
default:
    print("Higher than four")
}


let somePoint = (x: 1, y: 1)
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.x), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.y)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.x), \(somePoint.y)) is inside the box")
default:
    print("(\(somePoint.x), \(somePoint.y)) is outside of the box")
}



// **********
// * For-In
// **********

// * For-In with Range

for index in 0...5 {
    print(index)
}

for _ in 0..<5 {
    print("Sallala")
}

// Instead of C-style for loop: for (int i = 0; i < 10; ++1) {}, Swift For-In uses stride()
for i in stride(from: 0, to: 10, by: 1) { // == for (int i = 0; i < 10; ++1) {}
    print("Sallala")
}

for i in stride(from: 0, through: 10, by: 1) { // == for (int i = 0; i <= 10; ++1) {}
    print("Sallala")
}

for i in stride(from: 100, to: 0, by: -10) { // Also works backwards!!!
    print("Sallala")
}

// * For-In with Sequences

let anArray = [1, 2, 3, 4, 5]
let aDictionary = [1 : "One", 2 : "Two", 3 : "Three"]
let aSet : Set<Int> = [1, 2, 3]

for value in anArray {
    print(value)
}

for (key, value) in aDictionary {
    print("Key: \(key); Value: \(value)")
}

for value in aSet {
    print(value)
}





// **********
// * While
// **********

// * while
var i = 9
while i >= 0 {
    i -= 1
}


// * repeat-while
i = 0
repeat {
    i += 1
} while i < 10







