//
//  String.swift
//  ToDoVIP
//
//  Created by Ozan Barış Günaydın on 30.11.2021.
//

import Foundation

/// Provides boolean according to the string value ( 0 = false, 1 = true)
extension String {

    var boolValue: Bool {
        return (self as NSString).boolValue
    }
}
