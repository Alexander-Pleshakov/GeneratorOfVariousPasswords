//
//  PasswordParameters.swift
//  GeneratorOfVariousPasswords
//
//  Created by Александр Плешаков on 29.11.2023.
//

import Foundation

public struct PasswordParameters {
    public let p: Double
    public let v: Double
    public let t: Double
    public var a: Int
    public var s: Int {
        Int((v * t)/p)
    }
    public var l: Int {
        var count = 1
        while s > NSDecimalNumber(decimal: pow(Decimal(a), count)).intValue {
            count += 1
        }
        return count
    }
    public var password: String = ""
}
