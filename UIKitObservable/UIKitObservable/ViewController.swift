//
//  ViewController.swift
//  UIKitObservable
//
//  Created by Manish on 18/06/25.
//

import UIKit
import Observation

@Observable class User {
    var userName: String = ""
}

class ViewController: UIViewController {

    @IBOutlet weak var lblUserName: UILabel!
    private var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        lblUserName.text = user.userName
    }
    @IBAction func buttonTap(_ sender: UIButton) {
        user.userName = "Manish Ahire"
    }
}

