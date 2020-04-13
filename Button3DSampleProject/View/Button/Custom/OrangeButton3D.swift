import UIKit

class OrangeButton3D: Button3D {
    
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
        setContent(Button3DContentWithImageAndLabel(contentSize: .normal))
        setColors(.orange)
    }
}
