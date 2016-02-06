#SwiftyColor
##An easy way to handle UIColors in Swift
SwiftyColor is a simple extension to UIColor which allows for easy handling of standard RGB and hex values

#Requirements

* IOS 7.0
* XCode 7.2

##Usage
Using SwiftyColor is simple. SwiftyColor extends the existing UIColor initializers for more flexible creation:

###RGB

    self.view.backgroundColor = UIColor(rgba: 2550, green: 255, blue: 128, alpha: 0.7)
    
Instead of having to convert CGFloats to percentages, you can use your native values and let SwiftyColor do the work.

###Hex Strings

Hex string are also supported! There is a custom initializer for hexstring:

    self.view.backgroundColor = UIColor(hexString: "#60DFE5")

Hex Strings have several supported formats:

##### #RRGGBB:
    UIColor(hexString: "#60DFE5")
##### #RRGGBBAA
    UIColor(hexString: "#60DFE588")
##### #RGB
    UIColor(hexString: "#888")
##### #RGBA
    UIColor(hexString: "#8888")
    
###Syntax

SwiftyLine does not require the # Symbol:

    UIColor(hexString: "60DFE5")
    
##Todo-List

* Add support for native Hex
* Add Cocoapods




    






