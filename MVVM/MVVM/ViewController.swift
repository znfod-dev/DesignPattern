//
//  ViewController.swift
//  MVVM
//
//  Created by JongHyun Park on 2020/05/27.
//  Copyright © 2020 Znfod. All rights reserved.
//
import UIKit

class GreetingViewController : UIViewController {
    var viewModel: GreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = {
                [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    @IBOutlet weak var showGreetingButton:UIButton!
    @IBOutlet weak var greetingLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        self.viewModel.showGreeting()
    }
    
}

