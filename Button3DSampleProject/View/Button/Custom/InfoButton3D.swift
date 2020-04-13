import UIKit

class InfoButton3D: Button3D {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    private func setup() {
        
        let color = Button3DColors(front: UIColor(r: 88, g: 184, b: 166),
                                   border: UIColor(r: 104, g: 211, b: 191),
                                   bottom: UIColor(r: 70, g: 148, b: 134))
        
        setLayout(Button3DCircularLayout())
        setContent(Button3DContentWithImageAndLabel(contentSize: .tiny))
        setColors(color)
        
        title = "i"
    }
}
