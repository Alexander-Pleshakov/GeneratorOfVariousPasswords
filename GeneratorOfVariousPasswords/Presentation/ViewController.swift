//
//  ViewController.swift
//  GeneratorOfVariousPasswords
//
//  Created by Александр Плешаков on 29.11.2023.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var validityPeriodTextField: UITextField!
    @IBOutlet weak var speedTextField: UITextField!
    @IBOutlet weak var probabilityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        
        super.touchesBegan(touches, with: event)
    }

    @IBAction func buttonSelectAlphabetClicked() {
        view.endEditing(true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SelectAlphabetViewController")
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func buttonGenerateClicked() {
        view.endEditing(true)
    }
}

