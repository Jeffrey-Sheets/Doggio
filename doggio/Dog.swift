//
//  Dog.swift
//  doggio
//
//  Created by Jeffrey Sheets on 10/10/23.
//

import Foundation

struct Dog: Hashable, Codable {
    var name : String
    var weight : Float
    var age : Int
    var birthday : String
    var breed : String
    var isSick : Bool
    var symptoms : String
}
