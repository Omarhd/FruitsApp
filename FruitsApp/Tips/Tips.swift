//
//  Tips.swift
//  FruitsApp
//
//  Created by Omar Abdulrahman on 03/12/2023.
//

import SwiftUI
import TipKit

struct AddcolorTips: Tip {
    
    var title: Text {
        Text("Wow")
    }
    
    var message: Text? {
        Text("You can switch btween Grid and List Views here")
    }
    
    var image: Image? {
        Image(systemName: "slider.horizontal.3")
    }
}
