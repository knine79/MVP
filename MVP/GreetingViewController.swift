//
//  ViewController.swift
//  MVP
//
//  Created by Samuel Kim on 2018. 1. 18..
//  Copyright © 2018년 Samuel Kim. All rights reserved.
//

import UIKit

protocol GreetingViewType: class { // view는 상태를 가지고 있어야 하니까 reference type으로
    func setGreeting(greeting: String)
}

class GreetingViewController: UIViewController, GreetingViewType {
    
    var presenter: GreetingPresenterType!
    
    @IBOutlet weak var label: UILabel!
    @IBAction func didTapButton(_ sender: Any) {
        self.presenter.showGreeting()
    }
    
    func setGreeting(greeting: String) {
        self.label.text = greeting
    }
    // View

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

