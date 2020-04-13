import UIKit

extension Button3D {

    static func createAquaButton() -> Button3D {
    
        let button = Button3D()
        
        button.setLayout(Button3DRectangularLayout())
        button.setColors(.aqua)
        button.setContent(Button3DContentWithImageAndLabel(contentSize: .normal))
        
        return button
    }
    
    static func createCloseButton() -> Button3D {
        
        let button = Button3D()
        
        button.setLayout(Button3DCircularLayout())
        button.setColors(.red)
        button.setContent(Button3DContentWithImageAndLabel(contentSize: .tiny))
        button.title = "X"
        
        return button
    }
    
    static func createPlayButton() -> Button3D {
        
        let button = Button3D()
        
        button.setLayout(Button3DRectangularLayout())
        button.setColors(.orange)
        button.setContent(Button3DContentWithImageAndLabel(contentSize: .normal))
        button.title = "PLAY!"
        
        return button
    }
}
