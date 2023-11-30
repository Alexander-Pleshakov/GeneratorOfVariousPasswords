//
//  SelectAlphabetViewController.swift
//  GeneratorOfVariousPasswords
//
//  Created by Александр Плешаков on 29.11.2023.
//

import UIKit

class SelectAlphabetViewController: UIViewController {
    
    @IBOutlet private weak var numbersSwitch: UISwitch!
    @IBOutlet private weak var symbolsSwitch: UISwitch!
    @IBOutlet private weak var russianLowercaseSwitch: UISwitch!
    @IBOutlet private weak var russianUppercaseSwitch: UISwitch!
    @IBOutlet private weak var latinLowercaseSwitch: UISwitch!
    @IBOutlet private weak var latinUppercaseSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        show()
    }
    
    private func show() {
        numbersSwitch.isOn = alphabet.numbers
        symbolsSwitch.isOn = alphabet.symbols
        russianLowercaseSwitch.isOn = alphabet.russianLettersLowercased
        russianUppercaseSwitch.isOn = alphabet.russianLettersUppercased
        latinLowercaseSwitch.isOn = alphabet.latinLettersLowercased
        latinUppercaseSwitch.isOn = alphabet.latinLettersUppercased
    }
    
    @IBAction func switchLatinUppercasedValueChanged(_ sender: UISwitch) {
        alphabet.latinLettersUppercased = sender.isOn
    }
    
    @IBAction func switchLatinLowercasedValueChanged(_ sender: UISwitch) {
        alphabet.latinLettersLowercased = sender.isOn
    }
    
    @IBAction func switchRussianUppercasedValueChanged(_ sender: UISwitch) {
        alphabet.russianLettersUppercased = sender.isOn
    }
    
    @IBAction func switchRussianLowercasedValueChanged(_ sender: UISwitch) {
        alphabet.russianLettersLowercased = sender.isOn
    }
    
    @IBAction func switchSymbolsValueChanged(_ sender: UISwitch) {
        alphabet.symbols = sender.isOn
    }
    
    @IBAction func switchNumbersValueChanged(_ sender: UISwitch) {
        alphabet.numbers = sender.isOn
    }
    
    @IBAction func buttonSelectClicked(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
