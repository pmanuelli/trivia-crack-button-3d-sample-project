import UIKit

extension UIColor {
    
    convenience init(r red: Int, g green: Int, b blue: Int, a alpha: Int = 255) {
        
        self.init(red: toUnitaryInterval(red),
                  green: toUnitaryInterval(green),
                  blue: toUnitaryInterval(blue),
                  alpha: toUnitaryInterval(alpha))
    }
}

private func toUnitaryInterval(_ value: Int) -> CGFloat {
    
    let boundedValue = max(min(value, 255), 0)
    return CGFloat(boundedValue)/CGFloat(255)
}
