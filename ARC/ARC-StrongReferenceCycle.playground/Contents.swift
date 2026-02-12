// Strong Reference Cycle

class Person {
    
    var name: String
    var job: Job? // Optional, because a person may not always have a Job
    
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
    var person: Person? // Optional, because a Job may not always have a Person
    
    init(_title: String) {
        title = _title
        
        print("Job => init called")
    }
    
    deinit {
        print("Job => deinit called")
    }
}


if true {
    
    var objPerson: Person?
    objPerson = Person(_name: "Manish")
    
    var objJob: Job?
    objJob = Job(_title: "iOS Developer")
    
    objPerson!.name
    objJob!.title
    
    // Strong Reference Cycle
    objPerson!.job = objJob
    objJob!.person = objPerson
    
    objPerson = nil // But Person still poiting to Job
    objJob = nil // But Job still poiting to Person
}
