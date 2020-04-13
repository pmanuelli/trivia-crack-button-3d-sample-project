import UIKit

extension UIView {

    func addSubviewToBounds(_ view: UIView) {
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        view.translatesAutoresizingMaskIntoConstraints = true
        view.frame = bounds
        addSubview(view)
    }
    
    func removeAllSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }
    
    func addNibAsSubview() {
        addNibAsSubview(nibName: String(describing: Self.self))
    }
    
    func addNibAsSubview(nibName: String) {
        
        let nib = UINib(nibName: nibName, bundle: Bundle(for: Self.self))
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView

        addSubviewToBounds(nibView)
    }
}
