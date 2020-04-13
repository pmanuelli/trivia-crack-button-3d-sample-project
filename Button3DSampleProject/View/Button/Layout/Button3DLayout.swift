import UIKit

protocol Button3DLayout: UIView {
    
    func setContent(_ content: UIView)
    func setColors(_ colors: Button3DColors)
    func setShadowEnabled(_ isEnabled: Bool)
    func showAsPressed(_ isPressed: Bool)
}
