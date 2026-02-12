// ARC => Automatice Reference Cycle

class Person {
    
    var name: String
    
    init(_name: String) {
        name = _name
        
        print("Person => init called")
    }
    
    deinit {
        print("Person => deinit called")
    }
}

var objPerson1: Person?
var objPerson2: Person?

if true {
    var objPerson = Person(_name: "Manish")
    objPerson.name
    
    objPerson1 = objPerson
    objPerson2 = objPerson
}

objPerson1 = nil
objPerson2 = nil
