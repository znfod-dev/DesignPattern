//
//  GreetingPresenter.swift
//  MVP
//
//  Created by JongHyun Park on 2020/05/27.
//  Copyright © 2020 Znfod. All rights reserved.
//

import Foundation


protocol GreetingView: class {
    func setGreeting(greeting: String)
}
protocol GreetingViewPresenter {
    init(view: GreetingView, person: Person)
    func showGreeting()
}


class GreetingPresenter : GreetingViewPresenter {
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


