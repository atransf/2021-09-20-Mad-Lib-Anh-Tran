//
//  ViewController.swift
//  2021-09-20-Mad-Lib-Anh-Tran
//
//  Created by Anh Tran on 9/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bodyOrganField: UITextField!
    @IBOutlet weak var adjective1Field: UITextField!
    @IBOutlet weak var verbField: UITextField!
    @IBOutlet weak var adjective2Field: UITextField!
    @IBOutlet weak var pluralNounField: UITextField!
    @IBOutlet weak var containerField: UITextField!
    @IBOutlet weak var adjective3Field: UITextField!
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodyOrganField.delegate = self
        adjective1Field.delegate = self
        verbField.delegate = self
        adjective2Field.delegate = self
        pluralNounField.delegate = self
        containerField.delegate = self
        adjective3Field.delegate = self
        numberField.delegate = self
        textView.text = "Please enter to Text Fields above than press Play Mad Lib Button below \n\n Note: After enter Number Field, tap to blank space to exit the numpad"
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func madLibButtonPressed(_ sender: UIButton) {
    
        textView.text = "Many say that \(bodyOrganField.text!) storming is \(adjective1Field.text!) and does not \(verbField.text!). However, when you have pulled together a \(adjective2Field.text!) group of \(pluralNounField.text!), brought together in a \(containerField.text!) that is \(adjective3Field.text!), you will yield \(numberField.text!) more ideas."
 
    
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //numberField.resignFirstResponder()
        self.view.endEditing(true)
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
