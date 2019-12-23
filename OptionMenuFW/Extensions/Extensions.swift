//
//  Extensions.swift
//  OptionMenu
//
//  Created by admin on 1/19/19.
//  Copyright © 2019 Amr. All rights reserved.
//

import Foundation
import UIKit
import Localize_Swift

extension UIColor {
    convenience init(hex: String?) {
        if hex == "-1" || hex == nil {
            self.init(cgColor: UIColor.clear.cgColor)
        } else
        {
            let hexCodeParts = hex?.split(separator: ",")
            let colorCode = hexCodeParts?.first
            var opacityFloatValue: CGFloat = 1.0
            
            if hexCodeParts != nil, hexCodeParts!.count == 2{
                let opacityValue = hexCodeParts![1]
                opacityFloatValue = CGFloat(Float(opacityValue) ?? 0.3)
                
            }
            
            var rgbInt: UInt64 = 0
            if let newHex = colorCode?.replacingOccurrences(of: "#", with: "")
            {
                let scanner = Scanner(string: newHex)
                scanner.scanHexInt64(&rgbInt)
            }
            let r: CGFloat = CGFloat((rgbInt & 0xFF0000) >> 16)/255.0
            let g: CGFloat = CGFloat((rgbInt & 0x00FF00) >> 8)/255.0
            let b: CGFloat = CGFloat(rgbInt & 0x0000FF)/255.0
            self.init(red: r, green: g, blue: b, alpha: opacityFloatValue)
        }
    }
    
}

extension Localize {
    
    static var isRTL : Bool {
        let RTLArray = ["ar", "fa", "ur", "he"]
        return RTLArray.contains(Localize.currentLanguage())
    }
    
    public class func isRTLLang(iso language: String) -> Bool {
        let RTLArray = ["ar", "fa", "ur", "he"]
        return RTLArray.contains(language)
    }
    
}
