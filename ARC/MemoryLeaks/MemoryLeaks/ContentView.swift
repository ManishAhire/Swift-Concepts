//
//  ContentView.swift
//  MemoryLeaks
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
    var person: Person?
    var compani: Compani?

    init(title: String) {
        self.title = title
        print("Job => init called")
    }
    
    deinit {
        print("Job => deinit called")
    }
}

class Compani {
    var name: String
    
    init(name: String) {
        self.name = name
        print("Compani => init called")
    }
    
    deinit {
        print("Compani => deinit called")
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
                
                var objCompani: Compani? = Compani(name: "XYZ")
                print(objCompani!.name)
                
                objJob.compani = objCompani
                objCompani = nil
                
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
