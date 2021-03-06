//
//  GreetingPresenter.swift
//  MVP
//
//  Created by Samuel Kim on 2018. 1. 19..
//  Copyright © 2018년 Samuel Kim. All rights reserved.
//

import Foundation

protocol GreetingPresenterType {
    init(view: GreetingView, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterType { // Presenter
    unowned let view: GreetingView
    let person: Person
    
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
    
}
