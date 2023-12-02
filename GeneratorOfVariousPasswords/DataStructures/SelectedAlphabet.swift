//
//  SelectedAlphabet.swift
//  GeneratorOfVariousPasswords
//
//  Created by Александр Плешаков on 29.11.2023.
//

import Foundation



public var alphabet = SelectedAlphabet()

public struct SelectedAlphabet {
    
    public let russianLettersAlphabet = ["Ё", "Й", "Ц", "У", "К", "Е", "Н", "Г", "Ш", "Щ", "З", "Х", "Ъ", "Ф", "Ы", "В", "А", "П", "Р", "О", "Л", "Д", "Ж", "Э", "Я", "Ч", "С", "М", "И", "Т", "Ь", "Б", "Ю"]
    public let symbolsAlphabet = ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*"]
    public let latinLettersAlphabet = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M"]
    
    public var countOfSymbols = 10
    public var latinLettersUppercased = false {
        didSet {
            countOfSymbols = latinLettersUppercased ? countOfSymbols + 26 : countOfSymbols - 26
        }
    }
    public var latinLettersLowercased = false {
        didSet {
            countOfSymbols = latinLettersLowercased ? countOfSymbols + 26 : countOfSymbols - 26
        }
    }
    public var russianLettersUppercased = false {
        didSet {
            countOfSymbols = russianLettersUppercased ? countOfSymbols + 33 : countOfSymbols - 33
        }
    }
    public var russianLettersLowercased = false {
        didSet {
            countOfSymbols = russianLettersLowercased ? countOfSymbols + 33 : countOfSymbols - 33
        }
    }
    public var symbols = false {
        didSet {
            countOfSymbols = symbols ? countOfSymbols + 10 : countOfSymbols - 10
        }
    }
    public var numbers = true {
        didSet {
            countOfSymbols = numbers ? countOfSymbols + 10 : countOfSymbols - 10
        }
    }
}
