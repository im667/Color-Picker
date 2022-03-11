//
//  ColorSet.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//
import UIKit


struct BaseColor {
    
    static let white = "FFFFFF"
    
    static let black = "333333"
    
    static let gray4 = "888888"
    
    static let gray3 = "BDBDBD"
    
    static let gray2 = "E2E2E2"
    
    static let gray1 = "F7F7F7"
    
    static let success = "fa28be"
    
    static let error = "E9666B"
    
}

struct MainColor {
    
    static let mainColor = "fa28be"
    
    static let mainDark = "380229"
    
    static let mainBright = "ffb0e9"
    
}


extension UIColor {

    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {

        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(a) / 255.0
        )
        
    }

 

    convenience init(hex: String) {
        let rgb: Int = Int(hex, radix: 16) ?? 0
           self.init(
               red: (rgb >> 16) & 0xFF,
               green: (rgb >> 8) & 0xFF,
               blue: rgb & 0xFF
           )
       }

    

    // let's suppose alpha is the first component (ARGB)

    convenience init(argb: Int) {

        self.init(
            
            red: (argb >> 16) & 0xFF,
            green: (argb >> 8) & 0xFF,
            blue: argb & 0xFF,
            a: (argb >> 24) & 0xFF

        )

    }

}


