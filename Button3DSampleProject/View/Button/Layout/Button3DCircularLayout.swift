import UIKit

@IBDesignable
class Button3DCircularLayout: UIView, Button3DLayout {
        
    @IBOutlet var frontView: UIView!
    @IBOutlet var borderView: UIView!
    @IBOutlet var bottomView: UIView!
    
    @IBOutlet private var bottomHeightConstraint: NSLayoutConstraint!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) { return nil }
    
    func setContent(_ content: UIView) {
        
        frontView.removeAllSubviews()
        frontView.addSubviewToBounds(content)
    }
    
    func setColors(_ colors: Button3DColors) {
        
        frontView.backgroundColor = colors.front
        borderView.backgroundColor = colors.border
        bottomView.backgroundColor = colors.bottom
    }
    
    func showAsPressed(_ isPressed: Bool) {
        bottomHeightConstraint.constant = isPressed ? 2 : 4
    }
    
    func setShadowEnabled(_ isEnabled: Bool) {
        
        bottomView.layerShadowColor = .black
        bottomView.layerShadowOffset = CGSize(width: 0, height: 3)
        bottomView.layerShadowOpacity = isEnabled ? 0.2 : 0
        bottomView.layerShadowRadius = 0
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        frontView.layoutIfNeeded()
        frontView.cornerRadius = frontView.bounds.height / 2.0
        
        borderView.layoutIfNeeded()
        borderView.cornerRadius = borderView.bounds.height / 2.0
        bottomView.cornerRadius = borderView.cornerRadius
    }
    
    private func setup() {
        
        addNibAsSubview()
        setShadowEnabled(true)
        
        isUserInteractionEnabled = false
    }
}
