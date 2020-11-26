import UIKit


class ShareMe {
//    var text = "Hello, World!"
    
    /// Allows you to convert a 6 digit hexadecimal string int a UIColor instance
    /// - Warning: The "#" symbol is stripped from the beginnin of the string submitted here.
    /// - Parameters:
    ///   - hexString: A 6-deigit hexadecimal string. Use 6 digits rather thatn 8, and add the accompanying alpha value in the second paramater
    ///   - alpha: A number between 0.0 and 1.0 indicating how transparent the color is
    /// - Returns: A UIColor defined by the 'hexSTring' parameter
    class func colorFromHexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        let r, g, b: CGFloat
        let offset = hexString.hasPrefix("#") ? 1 : 0 // strip of the #
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x0000ff) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }
}
