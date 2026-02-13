import UIKit

// Simple Closure
let greet = {
    print("Hello, Manish")
}

greet()

// greet and greet2 pointing to the same closure memory
// because closures are reference type
let greet2 = greet
greet2()

// Closure with Parameter
let greetMsg = { (name: String) in
    print("Hello, \(name)")
}

greetMsg("Munna")

// Closure with Parameter and return value
let add = { (a: Int, b: Int) -> Int in
    return a + b
}
let addResult = add(10, 20)
print("Addition => \(addResult)")

// Type Inference
let sub: (Int, Int) -> Int = { a, b in
    return a - b
}
let subResult = sub(20, 10)
print("Substraction => \(subResult)")

// Trailing Closure - Funcation's last parameter
func fetchData(completion: () -> Void) {
    completion()
}

fetchData {
    print("FetchData => Done")
}

// Capturing Values - Captures varibales from surrounding scope
func makeIncrement() -> () -> Int {
    var total = 0
    
    return {
        total += 1
        return total
    }
}

let increment = makeIncrement()
print("Increment => \(increment())")
print("Increment => \(increment())")
print("Increment => \(increment())")
print("Increment => \(increment())")

// NON-Escaping Closure
func perform(action: () -> Void) {
    action()
}

perform {
    print("Non-escaping")
}


// Escaping Closure
func fetchUserData(completion: @escaping () -> Void) {
    completion()
}

fetchUserData {
    print("Escaping Closure")
}
