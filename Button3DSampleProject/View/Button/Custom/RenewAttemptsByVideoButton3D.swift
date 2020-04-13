import UIKit

class RenewAttemptsByVideoButton3D: Button3D {
    
    private let content = Button3DContentWithImageAndLabel(contentSize: .small)
    
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
        setColors(.purple)
        
        title = "FREE"
        
        // Interface Builder can't access to assets inside Designable elements
        #if !TARGET_INTERFACE_BUILDER
        content.setImage(#imageLiteral(resourceName: "video"))
        #endif
    }
}
