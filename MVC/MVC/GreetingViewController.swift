//
//  GreetingViewController.swift
//  MVC
//
//  Created by JongHyun Park on 2020/05/27.
//  Copyright © 2020 Znfod. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {
    var person: Person!
    @IBOutlet weak var showGreetingButton:UIButton!
    @IBOutlet weak var greetingLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.greetingLabel.text = greeting
    }
}
