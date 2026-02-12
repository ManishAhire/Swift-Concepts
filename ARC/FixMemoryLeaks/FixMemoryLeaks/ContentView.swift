//
//  ContentView.swift
//  FixMemoryLeaks
//
//  Created by Manish Ahire on 12/02/26.
//

import SwiftUI

class Person {
    
    var name: String
    var job: Job?
    
    init(name: String) {
        self.name = name
        
        print("Person => init called")
    }
    
    deinit {
        print("Person => deinit called")
    }
}

class Job {
    var title: String
    weak var person: Person?

    init(title: String) {
        self.title = title
        print("Job => init called")
    }
    
    deinit {
        print("Job => deinit called")
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button("Tap Me") {
                let objPerson = Person(name: "Manish")
                print(objPerson.name)
                
                let objJob = Job(title: "iOS Developer")
                print(objJob.title)
                
                objPerson.job = objJob
                objJob.person = objPerson
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
