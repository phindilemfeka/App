//
//  SignInMethodsViewController.swift
//  App
//
//  Created by Phindile on 2020/11/09.
//

import UIKit

class SignInMethodsTableViewController: UITableViewController {
    
    var methods = ["With fingerprint",
                   "Voice recognition",
                   "Face Recognition",
                   "With 4-digit PIN"].shuffled()

    var heading = "Choose How to Sign In"

    var methodsIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return methods.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return heading
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell",for:indexPath)
        cell.textLabel?.text = methods[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        methodsIndex = indexPath.row
    }

}

