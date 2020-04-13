import UIKit

class Button3DContentWithLabelAndCurrencyAmount: UIView, Button3DContent {

    @IBOutlet private var titleLabel: Button3DLabel!
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var amountLabel: Button3DLabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) { return nil }
    
    func setup() {

        addNibAsSubview()
    }
    
    func set(image: UIImage, amount: Int) {
        
        iconImageView.image = image
        amountLabel.text = String(amount)
    }
}

extension Button3DContentWithLabelAndCurrencyAmount {
    
    func setTitle(_ title: String?) {
        titleLabel.text = title
    }
    
    func setFontSize(_ fontSize: CGFloat) {
        titleLabel.setFontSize(fontSize)
        amountLabel.setFontSize(fontSize)
    }
    
    func setNumberOfLines(_ numberOfLines: Int) {
        titleLabel.numberOfLines = numberOfLines
    }
}
