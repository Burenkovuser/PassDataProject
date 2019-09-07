//
//  ViewController.swift
//  PassDataProject
//
//  Created by Vasilii on 07/09/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var returnLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendPressed(_ sender: UIButton) {
        // осуществляем переход если не привязан к кнопке
        performSegue(withIdentifier: "detailSeque", sender: nil)
    }
    // возвращаемся на этот экран
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "invindSeque" else { return }
        guard let sourseVC = segue.source as? SecondViewController else { return }
        self.returnLabel.text = sourseVC.label.text
        
    }
    
    //готовим переход
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.login = loginTextField.text
    }
    
    // если редактирование закончилось, клавиатура должна уйти с экрана
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

