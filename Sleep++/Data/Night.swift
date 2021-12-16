//
//  Night.swift
//  Sleep++
//
//  Created by Marco Giocondo Mignone on 13/12/21.
//

import Foundation

struct Night: Identifiable, Comparable {
    static func < (first: Night, second: Night) -> Bool {
        return first.date < second.date
    }
    
    static func == (first: Night, second: Night) -> Bool {
        first.id == second.id
    }
    
    var id: String { date }
    let date: String
    let imageName: String
    let lenght: String
    let quality: String
    let start: String
    let end: String
    
}
