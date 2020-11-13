//
//  LastViewController.swift
//  App
//
//  Created by Phindile on 2020/11/09.
//

import UIKit

class LastViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!

        override func viewDidLoad() {
            
            super.viewDidLoad()
            
            titleLabel.text = "Sign in with " + SignInMethodsTableViewController().methods[SignInMethodsTableViewController().methodsIndex]
        }
    }

    

   


