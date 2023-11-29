//
//  SelectedAlphabet.swift
//  GeneratorOfVariousPasswords
//
//  Created by Александр Плешаков on 29.11.2023.
//

import Foundation

let russianLetters = ["Ё", "Й", "Ц", "У", "К", "Е", "Н", "Г", "Ш", "Щ", "З", "Х", "Ъ", "Ф", "Ы", "В", "А", "П", "Р", "О", "Л", "Д", "Ж", "Э", "Я", "Ч", "С", "М", "И", "Т", "Ь", "Б", "Ю"]
let symbols = ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*"]

public struct SelectedAlphabet {
    public var latinLettersUppercased = false
    public var latinLettersLowercased = false
    public var russianLettersUppercased = false
    public var russianLettersLowercased = false
    public var symbols = false
    public var numbers = false
}
