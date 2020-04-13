import UIKit

@IBDesignable
class Button3DLabel: UILabel {
        
    private let strokeColor: UIColor = .black
    private let strokeWidth: CGFloat = -4.13
    
    private var fontSize: CGFloat = 17
    
    //MARK: UILabel overwritten properties

    override var text: String? {
        didSet { textDidChange() }
    }

    override var font: UIFont! {
        didSet { fontDidChange() }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    func setFontSize(_ size: CGFloat) {
        
        fontSize = size
        updateAttributedText()
    }
        
    private func setup() {
        
        setupShadow()
        updateAttributedText()
    }
    
    private func setupShadow() {
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 0
        layer.shadowOpacity = 1
    }

    private func updateAttributedText() {
        attributedText = NSAttributedString(string: text ?? "", attributes: createAttributes())
    }
    
    private func createAttributes() -> [NSAttributedString.Key: Any] {
        
        let font = UIFont.mikadoBold(ofSize: fontSize)
        let foregroundColor = UIColor.white
        
        return [
            NSAttributedString.Key.strokeColor: strokeColor,
            NSAttributedString.Key.strokeWidth: strokeWidth,
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: foregroundColor
        ]
    }
    
    private func textDidChange() {
        updateAttributedText()
    }
    
    private func fontDidChange() {
        setFontSize(font.pointSize)
    }
}

extension Button3DLabel {
    
    override func prepareForInterfaceBuilder() {
        setup()
    }
}
