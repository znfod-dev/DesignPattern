//
//  ViewModel.swift
//  MVVM
//
//  Created by JongHyun Park on 2020/05/27.
//  Copyright © 2020 Znfod. All rights reserved.
//

protocol GreetingViewModelProtocol: class {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())? { get set }
// function to call when greeting did change
    init(person: Person)
    func showGreeting()
}
class GreetingViewModel : GreetingViewModelProtocol {
    let person: Person
    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    required init(person: Person) {
        self.person = person
    }
    func showGreeting() {
        self.greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
    }
}

