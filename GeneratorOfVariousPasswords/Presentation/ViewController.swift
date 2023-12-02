//
//  ViewController.swift
//  GeneratorOfVariousPasswords
//
//  Created by Александр Плешаков on 29.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var passwordTextLabel: UILabel!
    @IBOutlet private weak var passwordTextView: UITextView!
    @IBOutlet private weak var validityPeriodTextField: UITextField!
    @IBOutlet private weak var speedTextField: UITextField!
    @IBOutlet private weak var probabilityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        
        super.touchesBegan(touches, with: event)
    }
    
    private func generatePassword(with parameters: PasswordParameters) -> String {
        let passwordDict: [[String]: Bool] = [
            ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M"] : alphabet.latinLettersUppercased,
            ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "a", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m"] : alphabet.latinLettersLowercased,
            ["Ё", "Й", "Ц", "У", "К", "Е", "Н", "Г", "Ш", "Щ", "З", "Х", "Ъ", "Ф", "Ы", "В", "А", "П", "Р", "О", "Л", "Д", "Ж", "Э", "Я", "Ч", "С", "М", "И", "Т", "Ь", "Б", "Ю"] : alphabet.russianLettersUppercased,
            ["ё", "й", "ц", "у", "к", "е", "н", "г", "ш", "щ", "з", "х", "ъ", "ф", "ы", "в", "а", "п", "р", "о", "л", "д", "ж", "э", "я", "ч", "с", "м", "и", "т", "ь", "б", "ю"] : alphabet.russianLettersLowercased,
            ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*"] : alphabet.symbols,
            ["0" ,"1", "2", "3", "4", "5", "6", "7", "8", "9"] : alphabet.numbers
        ]
        
        var password: String = ""
        var alphabets: [String] = []
        
        for (key, value) in passwordDict {
            if value {
                alphabets += key
            }
        }
        
        print(alphabets.count)
        print(alphabet.countOfSymbols)
        for _ in 0..<parameters.l {
            password += alphabets[Int.random(in: 0..<parameters.a)]
        }
        print(password)
        
        return password
    }

    @IBAction private func buttonSelectAlphabetClicked() {
        view.endEditing(true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SelectAlphabetViewController")
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction private func buttonGenerateClicked() {
        view.endEditing(true)
        guard alphabet.countOfSymbols > 0 else {
            return
        }
        
        let p = Double(probabilityTextField.text ?? "1") ?? 1
        let v = Double(speedTextField.text ?? "1") ?? 1
        let t = Double(validityPeriodTextField.text ?? "1") ?? 1
        
        let passwordParameters = PasswordParameters(p: p, v: v, t: t, a: alphabet.countOfSymbols)
        let password = generatePassword(with: passwordParameters)
        print(password)
        passwordTextLabel.text = "Сгенерированный пароль"
        passwordTextView.text = password + "\n\n"
        passwordTextView.text += "Нижняя граница: \(passwordParameters.s)\n"
        passwordTextView.text += "Мощность алфавита: \(passwordParameters.a - 1)\n"
        passwordTextView.text += "Длина пароля: \(passwordParameters.l)\n"
        passwordTextView.layer.cornerRadius = 8
        passwordTextView.backgroundColor = .systemGray6
    }
}

