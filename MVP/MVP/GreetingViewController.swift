//
//  GreetingViewController.swift
//  MVP
//
//  Created by JongHyun Park on 2020/05/27.
//  Copyright © 2020 Znfod. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController, GreetingView {
 
    var presenter: GreetingPresenter!
    @IBOutlet weak var showGreetingButton:UIButton!
    @IBOutlet weak var greetingLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        self.presenter.showGreeting()
    }
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }

    
}
