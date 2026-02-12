// Weak Reference Cycle - Use to break strong reference cycle

class Person {
    
    var name: String
    var job: Job? // Always declar var and make it Optional,
    // Because, ARC automatically set nil value at runtime
    
    init(_name: String) {
        name = _name
        
        print("Person => init called")
    }
    
    deinit {
        print("Person => deinit called")
    }
}


class Job {
    
    var title: String
    weak var person: Person? // Optional, because a Job may not always have a Person
    
    init(_title: String) {
        title = _title
        
        print("Job => init called")
    }
    
    deinit {
        print("Job => deinit called")
    }
}




var objPerson: Person?
objPerson = Person(_name: "Manish")

var objJob: Job?
objJob = Job(_title: "iOS Developer")

objPerson!.name
objJob!.title

// Strong Reference Cycle
objPerson!.job = objJob
objJob!.person = objPerson

objPerson = nil // Breaks strong reference cycle

objJob = nil

