//
//  SwiftyColor.swift
//  OpenSketch
//
//  Created by Andrew on 2016-02-05.
//  Copyright © 2016 Cashew Studio. All rights reserved.
//

import UIKit


extension UIColor {

    public convenience init(rgba red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        self.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }

    public convenience init(hexString: String) {
        let colorString = hexString.stringByReplacingOccurrencesOfString("#", withString: "")
        var red: CGFloat = CGFloat()
        var green: CGFloat = CGFloat()
        var blue: CGFloat = CGFloat()
        var alpha: CGFloat = CGFloat()
        
        switch colorString.characters.count {
        case 3:  //#RGB
            red = CGFloat(strtoul(doubleHex(colorString[0..<1]), nil, 16))
            green = CGFloat(strtoul(doubleHex(colorString[1..<2]), nil, 16))
            blue = CGFloat(strtoul(doubleHex(colorString[2..<3]), nil, 16))
            alpha = 255
        case 4:  // #RGBA
            red = CGFloat(strtoul(doubleHex(colorString[0..<1]), nil, 16))
            green = CGFloat(strtoul(doubleHex(colorString[1..<2]), nil, 16))
            blue = CGFloat(strtoul(doubleHex(colorString[2..<3]), nil, 16))
            alpha = CGFloat(strtoul(doubleHex(colorString[3..<4]), nil, 16))
        case 6:  // #RRGGBB
            red = CGFloat(strtoul(colorString[0...1], nil, 16))
            green = CGFloat(strtoul(colorString[2...3], nil, 16))
            blue = CGFloat(strtoul(colorString[4...5], nil, 16))
            alpha = 255
        case 8:  // #RRGGBBAA
            red = CGFloat(strtoul(colorString[0...1], nil, 16))
            green = CGFloat(strtoul(colorString[2...3], nil, 16))
            blue = CGFloat(strtoul(colorString[4...5], nil, 16))
            alpha = CGFloat(strtoul(colorString[6...7], nil, 16))
        default:
            ()
        }
        self.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha/255.0)
    }
}

func doubleHex(char :String) -> String{
    return char + char
}

extension String {
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    subscript (r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start: start, end: end)]
    }
}


