//: Playground - noun: a place where people can play

import UIKit






// **********
// * Classes
// **********


enum Discipline {
    case developer
    case tester
}

enum Level {
    case L1, L2, L3, L4, L5
    
    func nextLevel() -> Level {
        switch self {
        case .L1:
            return .L2
        case .L2:
            return .L3
        case .L3:
            return .L4
        case .L4:
            return .L5
        default:
            return .L5
        }
    }
}

class Employee {
    let name : String
    let discipline : Discipline
    var level : Level
    
    // All property values have to be set during initialization
    // Designated Initializer (fully initializes all properties)
    init(name : String, discipline: Discipline, level: Level = .L1) {
        self.name = name
        self.discipline = discipline
        self.level = level
    }
    
    deinit {
        print("\(name) is being deallocated")
    }
    
    func work() {
        if discipline == .developer {
            print("Programming")
        }
        else {
            print("Testing")
        }
    }
    
    // Reference types don't have to use the mutating keyword to modify themselves
    func promote() {
        level = level.nextLevel()
    }
    
    static func disciplines() -> [Discipline] {
        return [.developer, .tester]
    }
    
    class func jobDescription() -> String {
        return "Can developr or test"
    }
}

print(Employee.disciplines())
print(Employee.jobDescription())

let employee1 = Employee(name: "John", discipline: .developer, level: .L2)
employee1.work()

print(employee1.level)
employee1.promote()
print(employee1.level)






// **********
// * Subclassing
// **********

class PeopleManager : Employee {
    var teamMembers : [Employee]
    
    // Designated Initializer (must call super.init... at some point if has a superclass)
    init(name : String, discipline: Discipline, level: Level, teamMembers: [Employee] = [Employee]()) {
        // Swift uses Two-Phase Initialization
        // 1. phase: set self's stored properties
        // 2. call superclass's init
        self.teamMembers = teamMembers
        super.init(name: name, discipline: discipline, level: level)
    }
    
    deinit {
        print("Don't have to call super on this one!!!")
    }
    
    // Convinient Initializer (must call a designated initializer on itself)
    convenience init(from employee: Employee) {
        self.init(name: employee.name, discipline: employee.discipline, level: employee.level)
    }
    
    override func work() {
        if teamMembers.count > 0 {
            print("Managing People: \(teamMembers)")
        }
        
        super.work()
    }

    override class func jobDescription() -> String {
        return "Can have team members and \(super.jobDescription())"
    }
    
    func numberOfTeamMembers() -> Int {
        return teamMembers.count
    }
}

print(PeopleManager.disciplines())
print(PeopleManager.jobDescription())

let employee2 = PeopleManager(name: "John", discipline: .developer, level: .L2)
let employee3 = PeopleManager(from: employee1)






// **********
// * Type Check
// **********

let e1 = Employee(name: "Adrian", discipline: .developer, level: .L3)
let e2 = Employee(name: "Alexandra", discipline: .tester, level: .L1)
let e3 = Employee(name: "Bob", discipline: .developer, level: .L4)
let e4 = Employee(name: "Ted", discipline: .developer, level: .L2)
let e5 = Employee(name: "Johanna", discipline: .tester, level: .L2)
let e6 = Employee(name: "Jack", discipline: .developer, level: .L2)

let pm1 = PeopleManager(name: "Nick", discipline: .developer, level: .L5, teamMembers: [e1, e3])
let pm2 = PeopleManager(name: "Lucy", discipline: .developer, level: .L4, teamMembers: [e4, e6])
let pm3 = PeopleManager(name: "Stephen", discipline: .tester, level: .L4, teamMembers: [e2, e5])



let allEmployees : [Employee] = [e1, e2, e3, e4, e5, e6, pm1, pm2, pm3]


// Simple Iteration. All members as Employees
for employee in allEmployees {
    print(employee.name)
}


// Type check & Force Casting
for employee in allEmployees {
    if employee is PeopleManager {
        (employee as! PeopleManager).numberOfTeamMembers()
    }
}


// Optional Casting
for employee in allEmployees {
    if let peopleManager = employee as? PeopleManager {
        print("Number of team members: \(peopleManager.numberOfTeamMembers())")
    }
    else {
        print("\(employee.name) doesn't have team members")
    }
}



// Iteration Condition
for employee in allEmployees where employee is PeopleManager {
    print(employee.name)
}















