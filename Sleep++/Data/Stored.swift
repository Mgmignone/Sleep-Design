//
//  Stored.swift
//  Sleep++
//
//  Created by Marco Giocondo Mignone on 13/12/21.
//

import Foundation

class Stored: ObservableObject{
    
    let nights = [
    
        Night(date: "9/12/2021", imageName: "paesaggio1", lenght: "8:43", quality: "92%", start: "22:00", end: "6:43"),
        
        Night(date: "8/12/2021", imageName: "paesaggio3", lenght: "6:49", quality: "82%", start: "24:00", end: "6:49"),
        
        Night(date: "7/12/2021", imageName: "paesaggio1", lenght: "9:01", quality: "74%", start: "22:00", end: "7:01"),
        
        Night(date: "01/01/2021", imageName: "paesaggio3", lenght: "7:00", quality: "99%", start: "24:00", end: "7:00")
    ]
}
