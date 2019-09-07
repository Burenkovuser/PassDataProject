//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Vasilii on 07/09/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var login: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = login else { return }
        label.text = "Hi, \(login)"
    }

    @IBAction func sendPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "invindSeque", sender: nil)
    }
}
