
import UIKit

public extension UIView {
        
    @IBInspectable
    var layerShadowColor: UIColor? {
        get { return getShadowColor() }
        set { layer.shadowColor = newValue?.cgColor }
    }
    
    @IBInspectable
    var layerShadowOffset: CGSize {
        get { return layer.shadowOffset }
        set { layer.shadowOffset = newValue }
    }
    
    @IBInspectable
    var layerShadowRadius: CGFloat {
        get { return layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }
    
    @IBInspectable
    var layerShadowOpacity: CGFloat {
        get { return CGFloat(layer.shadowOpacity) }
        set { layer.shadowOpacity = Float(newValue)}
    }
    
    private func getShadowColor() -> UIColor? {
        
        if let color = layer.shadowColor {
            return UIColor(cgColor: color)
        } else {
            return nil
        }
    }
}
