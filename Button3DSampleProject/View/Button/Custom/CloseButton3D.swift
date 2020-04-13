import UIKit

class CloseButton3D: Button3D {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    private func setup() {
        
        setLayout(Button3DCircularLayout())
        setContent(Button3DContentWithImageAndLabel(contentSize: .tiny))
        setColors(.red)
        
        title = "X"
    }
}

