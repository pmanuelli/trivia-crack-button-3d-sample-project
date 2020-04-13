import UIKit

class RenewAttemptsByCurrencyButton3D: Button3D {

    private let content = Button3DContentWithLabelAndCurrencyAmount()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    private func setup() {
        
        setLayout(Button3DRectangularLayout())
        setContent(content)
        setColors(.aqua)
        
        title = "RENEW ATTEMPTS"
    }
    
    func set(image: UIImage, amount: Int) {
        content.set(image: image, amount: amount)
    }
}
